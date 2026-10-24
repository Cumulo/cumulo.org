import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
assert.equal(execFileSync('calcit',['-v'],{encoding:'utf8'}).trim(),'0.30.1');
const run=(...a)=>execFileSync('calcit',['calcit.cirru',...a],{encoding:'utf8',maxBuffer:48e6,stdio:['ignore','pipe','pipe']});
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
assert.equal(blob(),'40dddcf9c0f67678f5551f639e8659e4b3e45356');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const input=JSON.parse(readFileSync('reviewed.json','utf8'));
const before={config:norm(input.config.data),namespaces:input.namespaces.map(x=>norm(x.data)),defs:input.definitions.map(x=>norm(x.data))};
assert.equal(before.defs.length,23);assert.equal(before.defs.reduce((n,d)=>n+d.tests.length,0),2);assert.equal(before.defs.reduce((n,d)=>n+d.examples.length,0),0);
assert.deepEqual(q('config'),before.config);assert.deepEqual(q('ns').namespaces.map(n=>q('ns',n)),before.namespaces);
for(const d of before.defs)assert.deepEqual(q('def',d.id),d);
const expected=structuredClone(before),ops=[],sites=[],counts={merge:0,unwrapOr:0,unwrap:0,some:0,css:0,watcher:0,host:0,highlight:0,highlightDecode:0};
const show=(id,path)=>JSON.parse(run('tree','show',id,'--path','@'+path.join('.'),'--format','json')).tree;
const replace=(id,path,value)=>ops.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(value)]);
const state=['::',"'reel.typed/State","'app.types/Op","'app.types/Store"];
const watchHint=['hint-fn',['{}',[':return',"'Unit"],[':args',['[]',state,state]]]];
const hostHint=['hint-fn',['{}',[':return',"'Unit"],[':args',['[]',"'js-ffi.browser/EventHost"]]]];
const highlightHint=['hint-fn',['{}',[':return',"'String"],[':args',['[]',"'String","'String"]],[':features',['#{}',':js-ffi']]]];
function insertHint(id,path,x,hint){assert.equal(x[0],'fn');assert.notEqual(x[2]?.[0],'hint-fn');const p=[...path,2];ops.push(['tree','insert',id,'--path','@'+p.join('.'),'--at','before','--input-format','json-ast','--code',JSON.stringify(hint)]);x.splice(2,0,structuredClone(hint));sites.push({id,path:p,inserted:hint});}
function walk(x,path,id){
  if(!Array.isArray(x)||['quote','quasiquote','comment',';','defmacro'].includes(x[0]))return x;
  const original=structuredClone(x);
  if(['merge','option:unwrap-or','option:unwrap','option:some?'].includes(x[0])){assert.deepEqual(show(id,path),original);const old=x[0],next={merge:'.merge','option:unwrap-or':'.unwrap-or','option:unwrap':'.unwrap','option:some?':'.some?'}[old];counts[{merge:'merge','option:unwrap-or':'unwrapOr','option:unwrap':'unwrap','option:some?':'some'}[old]]++;replace(id,[...path,0],next);x[0]=next;sites.push({id,path,original,replacement:next});}
  if(x[0]==='{}')for(let j=1;j<x.length;j++){
    const pair=x[j];if(!Array.isArray(pair)||pair.length!==2)continue;const [k,v]=pair;let next;
    if([':max-width',':padding',':padding-bottom'].includes(k)&&typeof v==='string'&&/^\d+$/.test(v))next='|'+v+'px';
    else if(k===':overflow'&&v===':auto')next='|auto';
    if(next!==undefined){assert.equal(id,'app.comp.container/comp-container');const p=[...path,j,1];assert.equal(show(id,p),v);replace(id,p,next);pair[1]=next;counts.css++;}
  }
  const highlight=id==='app.comp.container/comp-container'&&x[0]==='fn'&&JSON.stringify(x[1])===JSON.stringify(['code','lang']);
  x=x.map((v,i)=>walk(v,[...path,i],id));
  if(highlight){assert.deepEqual(show(id,path),original);assert.equal(original[2][0],'if');assert.equal(original[2][2][0],'if');const p=[...path,2,2];assert.deepEqual(show(id,p),original[2][2]);x[2][2]=['decode-map-as',x[2][2],"'String"];replace(id,p,x[2][2]);counts.highlightDecode++;insertHint(id,path,x,highlightHint);counts.highlight++;}
  if(x[0]==='add-watch!'){assert.equal(x[1],'*reel');assert.deepEqual(show(id,[...path,3]),original[3]);insertHint(id,[...path,3],x[3],watchHint);counts.watcher++;}
  if(x[0]==='browser/set-before-unload!'){assert.deepEqual(show(id,[...path,1]),original[1]);insertHint(id,[...path,1],x[1],hostHint);counts.host++;}
  return x;
}
for(const d of expected.defs)d.code=walk(d.code,[],d.id);
assert.deepEqual(counts,{merge:1,unwrapOr:1,unwrap:1,some:1,css:4,watcher:1,host:1,highlight:1,highlightDecode:1});assert.equal(ops.length,12);
for(const d of before.defs){const e=expected.defs.find(x=>x.id===d.id);for(const k of Object.keys(d).filter(k=>k!=='code'))assert.deepEqual(e[k],d[k]);}
for(const id of ['app.types/Op','app.types/Store','app.types/SiteConfig','app.types/decode-op','app.main/decode-store','app.schema/store','app.updater/updater','app.main/*reel','app.main/dispatch!','app.main/persist-storage!','app.main/render-app!','app.main/reload!','app.comp.container/slurp','app.comp.container/HljsHost','app.comp.container/HighlightResultHost'])assert.deepEqual(expected.defs.find(d=>d.id===id),before.defs.find(d=>d.id===id));
const main=expected.defs.find(d=>d.id==='app.main/main!'),oldMain=before.defs.find(d=>d.id===main.id);assert.deepEqual(main.code[4],oldMain.code[4]);assert.equal(main.code[4][0],'match');assert.equal(main.code[5][0],'when');assert.equal(main.code[8][0],'render-app!');assert.equal(main.code[9][0],'add-watch!');
mkdirSync('acceptance',{recursive:true});for(const [name,value]of Object.entries({before,expected,sites,operations:ops}))writeFileSync('acceptance/'+name+'.json',JSON.stringify(value,null,2));
const txn=['edit','transaction','--file','acceptance/operations.json','--format','json'],preview=JSON.parse(run(...txn,'--dry-run'));assert.ok(preview.scoped_revision);writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/applied.json',run(...txn,'--expect-revision',preview.scoped_revision));
const after={config:q('config'),namespaces:q('ns').namespaces.map(n=>q('ns',n)),defs:expected.defs.map(d=>q('def',d.id))};assert.deepEqual(after,expected);
writeFileSync('acceptance/after.json',JSON.stringify(after,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob());
writeFileSync('acceptance/summary.json',JSON.stringify({definitions:23,tests:2,examples:0,operations:12,counts,unsafeBefore:0,unsafeAfter:0,preserved:'Allpublicschemas/imports/metadata/config/original2tests/Store/Op/decoder/updater/Markdowncontents/highlightalgorithm/js-casts/mainmjs/HMR/restorefirst remain. HighlighteruntypedJSresultcheckedStringlocallybeforealreadyexistingMarkdowncheck;invalidresultfailsatboundaryearlier. NoHUDoriginal,no inventedHUD. Nohelpers/casts/budgets/tests/frameworks/compiler rules.'},null,2));
