
{} (:package |app)
  :configs $ {} (:extension |.cljs) (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461830530) (:by |root) (:text |reel)
              |v $ %{} :Expr (:at 1507461832154) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507461833421) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1507461834351) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1507461834650) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461835738) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1507461836110) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461837276) (:by |root) (:text |:store)
                              |j $ %{} :Leaf (:at 1507461838285) (:by |root) (:text |reel)
                      |j $ %{} :Expr (:at 1509727104820) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509727105928) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1509727106316) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509727107223) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1509727108033) (:by |root) (:text |store)
                  |T $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |merge)
                                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui/global)
                                  |n $ %{} :Leaf (:at 1536989477445) (:by |root) (:text |ui/fullscreen)
                                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui/row)
                                  |v $ %{} :Expr (:at 1536989496391) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536989496963) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1536989497166) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536989534610) (:by |root) (:text |:justify-content)
                                          |j $ %{} :Leaf (:at 1536989536398) (:by |root) (:text |:center)
                      |q $ %{} :Expr (:at 1536989401014) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1536989401785) (:by |root) (:text |div)
                          |L $ %{} :Expr (:at 1536989402435) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536989402767) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1536989402980) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536989403787) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1536989404055) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536989404396) (:by |root) (:text |{})
                                      |r $ %{} :Expr (:at 1536989416800) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536989427642) (:by |root) (:text |:max-width)
                                          |j $ %{} :Leaf (:at 1536989437825) (:by |root) (:text |800)
                                      |v $ %{} :Expr (:at 1536989428558) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536989429519) (:by |root) (:text |:width)
                                          |j $ %{} :Leaf (:at 1536989440339) (:by |root) (:text "|\"60%")
                                      |x $ %{} :Expr (:at 1536989446353) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536989447539) (:by |root) (:text |:border)
                                          |j $ %{} :Expr (:at 1536989448182) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1536989449522) (:by |root) (:text |str)
                                              |j $ %{} :Leaf (:at 1537379620541) (:by |root) (:text "|\"1px solid ")
                                              |r $ %{} :Expr (:at 1536989456112) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1536989456881) (:by |root) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1536989457189) (:by |root) (:text |0)
                                                  |r $ %{} :Leaf (:at 1536989457506) (:by |root) (:text |0)
                                                  |v $ %{} :Leaf (:at 1536989542788) (:by |root) (:text |90)
                                      |y $ %{} :Expr (:at 1536989545413) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536989547368) (:by |root) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1536989547839) (:by |root) (:text |16)
                                      |yT $ %{} :Expr (:at 1537380108955) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537380147081) (:by |root) (:text |:padding-bottom)
                                          |j $ %{} :Leaf (:at 1537380114741) (:by |root) (:text |200)
                                      |yj $ %{} :Expr (:at 1537380159231) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537380161600) (:by |root) (:text |:overflow)
                                          |j $ %{} :Leaf (:at 1537380162679) (:by |root) (:text |:auto)
                          |T $ %{} :Expr (:at 1536989298215) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536989303508) (:by |root) (:text |comp-md-block)
                              |b $ %{} :Expr (:at 1536989318469) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628949542421) (:by |rJG4IHzWf) (:text |slurp)
                                  |j $ %{} :Leaf (:at 1628949556511) (:by |rJG4IHzWf) (:text "|\"docs/guide.md")
                              |j $ %{} :Expr (:at 1536989304170) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536989304495) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1536990244832) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536990246696) (:by |root) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1536990252281) (:by |root) (:text "|\"markdown-body")
                                  |r $ %{} :Expr (:at 1537379758733) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537379761624) (:by |root) (:text |:highlight)
                                      |j $ %{} :Expr (:at 1537379762943) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537379763253) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1537379763862) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537379764735) (:by |root) (:text |code)
                                              |j $ %{} :Leaf (:at 1537379765287) (:by |root) (:text |lang)
                                          |r $ %{} :Expr (:at 1628950213516) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1628950214863) (:by |rJG4IHzWf) (:text |if)
                                              |L $ %{} :Expr (:at 1628950215089) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1628950216994) (:by |rJG4IHzWf) (:text |=)
                                                  |T $ %{} :Leaf (:at 1628950218050) (:by |rJG4IHzWf) (:text |lang)
                                                  |j $ %{} :Leaf (:at 1628950221538) (:by |rJG4IHzWf) (:text "|\"cirru")
                                              |P $ %{} :Expr (:at 1628950222880) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1628950222880) (:by |rJG4IHzWf) (:text |color/generate)
                                                  |j $ %{} :Leaf (:at 1628950222880) (:by |rJG4IHzWf) (:text |code)
                                              |T $ %{} :Expr (:at 1537379766146) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1537379767774) (:by |root) (:text |.-value)
                                                  |j $ %{} :Expr (:at 1537379769008) (:by |root)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1658736557491) (:by |rJG4IHzWf) (:text |.!highlight)
                                                      |T $ %{} :Leaf (:at 1658736558408) (:by |rJG4IHzWf) (:text |hljs)
                                                      |v $ %{} :Leaf (:at 1537379775237) (:by |root) (:text |code)
                                                      |w $ %{} :Expr (:at 1658736581994) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1658736583622) (:by |rJG4IHzWf) (:text |js-object)
                                                          |b $ %{} :Expr (:at 1658736584389) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1658736612220) (:by |rJG4IHzWf) (:text |:language)
                                                              |b $ %{} :Leaf (:at 1658736586300) (:by |rJG4IHzWf) (:text |lang)
                      |x $ %{} :Expr (:at 1521954055333) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521954057510) (:by |root) (:text |when)
                          |L $ %{} :Leaf (:at 1521954059290) (:by |root) (:text |dev?)
                          |T $ %{} :Expr (:at 1507461809635) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461815046) (:by |root) (:text |comp-reel)
                              |b $ %{} :Expr (:at 1628949423619) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1628949424537) (:by |rJG4IHzWf) (:text |>>)
                                  |T $ %{} :Leaf (:at 1509727101297) (:by |root) (:text |states)
                                  |j $ %{} :Leaf (:at 1628949425132) (:by |rJG4IHzWf) (:text |:reel)
                              |j $ %{} :Leaf (:at 1507461840459) (:by |root) (:text |reel)
                              |r $ %{} :Expr (:at 1507461840980) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507461841342) (:by |root) (:text |{})
        |slurp $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1628949542900) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1628949546010) (:by |rJG4IHzWf) (:text |defmacro)
              |j $ %{} :Leaf (:at 1628949542900) (:by |rJG4IHzWf) (:text |slurp)
              |r $ %{} :Expr (:at 1628949542900) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628949549375) (:by |rJG4IHzWf) (:text |path)
              |v $ %{} :Expr (:at 1628949549979) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628949551151) (:by |rJG4IHzWf) (:text |read-file)
                  |j $ %{} :Leaf (:at 1628949551791) (:by |rJG4IHzWf) (:text |path)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1628949406887) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |m $ %{} :Leaf (:at 1628949428900) (:by |rJG4IHzWf) (:text |>>)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by |rJG4IHzWf) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1507461845717) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507461846175) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507461856484) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507461856706) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                |yT $ %{} :Expr (:at 1519699088529) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519699088805) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1519699092590) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519699093410) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519699093683) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519699093922) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1519699096732) (:by |root) (:text |comp-md)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1521954061645) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788377809) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1521954065219) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
                |yv $ %{} :Expr (:at 1536989358073) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1536989358355) (:by |root) (:text |[])
                    |X $ %{} :Leaf (:at 1536989368876) (:by |root) (:text |respo-md.comp.md)
                    |b $ %{} :Leaf (:at 1536989363196) (:by |root) (:text |:refer)
                    |j $ %{} :Expr (:at 1536989360059) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1536989360627) (:by |root) (:text |[])
                        |T $ %{} :Leaf (:at 1536989358830) (:by |root) (:text |comp-md-block)
                |yx $ %{} :Expr (:at 1537379744427) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1537379744810) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1537379747733) (:by |root) (:text "|\"highlight.js")
                    |r $ %{} :Leaf (:at 1658736561347) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1537379749530) (:by |root) (:text |hljs)
                |yy $ %{} :Expr (:at 1628950194493) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1628950195869) (:by |rJG4IHzWf) (:text "|\"cirru-color")
                    |j $ %{} :Leaf (:at 1628950197780) (:by |rJG4IHzWf) (:text |:as)
                    |r $ %{} :Leaf (:at 1628950198552) (:by |rJG4IHzWf) (:text |color)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |cdn? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |cdn?)
              |r $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |cond)
                  |j $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |exists?)
                          |j $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |js/window)
                      |j $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |false)
                  |r $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |exists?)
                          |j $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |js/process)
                      |j $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |=)
                          |j $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text "|\"true")
                          |r $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |js/process.env.cdn)
                  |v $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |:else)
                      |j $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |false)
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1628949512184) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628949512673) (:by |rJG4IHzWf) (:text |=)
                  |j $ %{} :Leaf (:at 1628949514315) (:by |rJG4IHzWf) (:text "|\"dev")
                  |r $ %{} :Expr (:at 1628949514819) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628949516095) (:by |rJG4IHzWf) (:text |get-env)
                      |j $ %{} :Leaf (:at 1628949518120) (:by |rJG4IHzWf) (:text "|\"mode")
                      |n $ %{} :Leaf (:at 1658736571538) (:by |rJG4IHzWf) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |site)
              |r $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |{})
                  |j $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |:dev-ui)
                      |j $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text "|\"http://localhost:8100/main-fonts.css")
                  |r $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |:release-ui)
                      |j $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css")
                  |v $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |:cdn-url)
                      |j $ %{} :Leaf (:at 1572773126931) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/cumulo-org/")
                  |x $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |:title)
                      |j $ %{} :Leaf (:at 1572773118077) (:by |rJG4IHzWf) (:text "|\"Cumulo Home Page")
                  |y $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |:icon)
                      |j $ %{} :Leaf (:at 1572773520352) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/logo/respo.png")
                  |yT $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1572773097494) (:by |rJG4IHzWf) (:text "|\"cumulo.org")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1572773074642) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |ns)
            |j $ %{} :Leaf (:at 1572773074642) (:by |rJG4IHzWf) (:text |app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1628949563729) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507399777531) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1518156274050) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518156275745) (:by |root) (:text |;)
                  |j $ %{} :Leaf (:at 1518156276516) (:by |root) (:text |println)
                  |r $ %{} :Leaf (:at 1518156280042) (:by |root) (:text ||Dispatch:)
                  |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507399884621) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |t $ %{} :Expr (:at 1572773341489) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572773341489) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1572773341489) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1572773341489) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773341489) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1572773341489) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1572773341489) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1572773341489) (:by |rJG4IHzWf) (:text "|\"release")
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |if)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ssr?)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |realize-ssr!)
              |w $ %{} :Expr (:at 1537379712908) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1658736537584) (:by |rJG4IHzWf) (:text |.!registerLanguage)
                  |T $ %{} :Leaf (:at 1658736535735) (:by |rJG4IHzWf) (:text |hljs)
                  |r $ %{} :Leaf (:at 1537379723477) (:by |root) (:text "|\"clojure")
                  |v $ %{} :Leaf (:at 1537379726433) (:by |root) (:text |clojure-lang)
              |wT $ %{} :Expr (:at 1537379712908) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1658736540676) (:by |rJG4IHzWf) (:text |.!registerLanguage)
                  |T $ %{} :Leaf (:at 1658736539239) (:by |rJG4IHzWf) (:text |hljs)
                  |r $ %{} :Leaf (:at 1537379826748) (:by |root) (:text "|\"bash")
                  |v $ %{} :Leaf (:at 1537379828236) (:by |root) (:text |bash-lang)
              |x $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
              |y $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628950108469) (:by |rJG4IHzWf) (:text |r)
                          |j $ %{} :Leaf (:at 1628950108979) (:by |rJG4IHzWf) (:text |p)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
              |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1628949499967) (:by |rJG4IHzWf) (:text ||k)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628949496108) (:by |rJG4IHzWf) (:text |.!addEventListener)
                  |j $ %{} :Leaf (:at 1518157453505) (:by |root) (:text |js/window)
                  |r $ %{} :Leaf (:at 1518157458163) (:by |root) (:text ||beforeunload)
                  |v $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yN $ %{} :Expr (:at 1533919529874) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1533919534663) (:by |rJG4IHzWf) (:text |js/setInterval)
                  |j $ %{} :Leaf (:at 1533919535136) (:by |rJG4IHzWf) (:text |persist-storage!)
                  |r $ %{} :Expr (:at 1533919541850) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1533919542412) (:by |rJG4IHzWf) (:text |*)
                      |T $ %{} :Leaf (:at 1533919540961) (:by |rJG4IHzWf) (:text |1000)
                      |j $ %{} :Leaf (:at 1533919678861) (:by |rJG4IHzWf) (:text |60)
              |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1518157495644) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518157495826) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1518157497615) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1628949503493) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572773364397) (:by |rJG4IHzWf) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1527788293499) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1518157514334) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533919640958) (:by |rJG4IHzWf) (:text |when)
                      |j $ %{} :Expr (:at 1518157515117) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1518157521635) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                          |r $ %{} :Expr (:at 1696787226823) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1696787227393) (:by |rJG4IHzWf) (:text |::)
                              |L $ %{} :Leaf (:at 1696787228045) (:by |rJG4IHzWf) (:text |:hydrate-storage)
                              |T $ %{} :Expr (:at 1518157527987) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628949479790) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                  |j $ %{} :Leaf (:at 1518157531240) (:by |root) (:text |raw)
              |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1696787176417) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1628950248953) (:by |rJG4IHzWf) (:text |?)
                  |T $ %{} :Leaf (:at 1628950131520) (:by |rJG4IHzWf) (:text |e)
              |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |j $ %{} :Leaf (:at 1628949493930) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                  |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773353681) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site)
                  |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628949486902) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store)
                          |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reload!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |u $ %{} :Expr (:at 1507461699387) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461702453) (:by |root) (:text |clear-cache!)
              |w $ %{} :Expr (:at 1507461704162) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461706990) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507461708965) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507461710020) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507461730190) (:by |root) (:text |refresh-reel)
                      |j $ %{} :Leaf (:at 1507461719097) (:by |root) (:text |@*reel)
                      |r $ %{} :Leaf (:at 1507461721870) (:by |root) (:text |schema/store)
                      |v $ %{} :Leaf (:at 1507461722724) (:by |root) (:text |updater)
              |y $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||Code updated.")
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |renderer)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |renderer)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1628949574370) (:by |rJG4IHzWf) (:text |dispatch!)
        |ssr? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ssr?)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |some?)
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |js/document.querySelector)
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||meta.respo-ssr)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.main)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |realize-ssr!)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399674614) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399680857) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399681518) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507399682662) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399684313) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399688322) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399688928) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399715600) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yx $ %{} :Expr (:at 1518157534012) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1518157534486) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1518157537473) (:by |root) (:text |cljs.reader)
                    |r $ %{} :Leaf (:at 1518157538193) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1518157538431) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1518157538636) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1518157540981) (:by |root) (:text |read-string)
                |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788303612) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                |yyT $ %{} :Expr (:at 1537379688009) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1537379688352) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1537379693998) (:by |root) (:text "|\"highlight.js")
                    |r $ %{} :Leaf (:at 1658736533427) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1537379696425) (:by |root) (:text |hljs)
                |yyj $ %{} :Expr (:at 1537379700996) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1537379701366) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1537379702561) (:by |root) (:text "|\"highlight.js/lib/languages/clojure")
                    |r $ %{} :Leaf (:at 1628949590344) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1537379707674) (:by |root) (:text |clojure-lang)
                |yyr $ %{} :Expr (:at 1537379700996) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1537379701366) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1537379833735) (:by |root) (:text "|\"highlight.js/lib/languages/bash")
                    |r $ %{} :Leaf (:at 1628949592007) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1537379835285) (:by |root) (:text |bash-lang)
    |app.page $ %{} :FileEntry
      :defs $ {}
        |base-info $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |base-info)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:title)
                      |j $ %{} :Expr (:at 1527868487079) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:title)
                          |j $ %{} :Leaf (:at 1527868490774) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:icon)
                      |j $ %{} :Expr (:at 1527868492888) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508248023135) (:by |root) (:text |:icon)
                          |j $ %{} :Leaf (:at 1527868495181) (:by |root) (:text |config/site)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:ssr)
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506669345582) (:by |root) (:text |:inline-html)
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |nil)
        |dev-page $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dev-page)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |make-page)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |merge)
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |base-info)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:styles)
                              |j $ %{} :Expr (:at 1572773201981) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572773201981) (:by |rJG4IHzWf) (:text |[])
                                  |j $ %{} :Expr (:at 1572773201981) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572773201981) (:by |rJG4IHzWf) (:text |<<)
                                      |j $ %{} :Leaf (:at 1572773201981) (:by |rJG4IHzWf) (:text "|\"http://~(get-ip!):8100/main.css")
                                  |r $ %{} :Leaf (:at 1572773201981) (:by |rJG4IHzWf) (:text "|\"/entry/main.css")
                          |r $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:scripts)
                              |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                                  |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||/client.js)
                          |v $ %{} :Expr (:at 1510073430416) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510073435442) (:by |root) (:text |:inline-styles)
                              |j $ %{} :Expr (:at 1510073435772) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1510073436446) (:by |root) (:text |[])
                                  |b $ %{} :Expr (:at 1537379923225) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537379924545) (:by |root) (:text |slurp)
                                      |j $ %{} :Leaf (:at 1537379931504) (:by |root) (:text "|\"entry/github-gist.css")
                                  |j $ %{} :Expr (:at 1536990366631) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536990369082) (:by |root) (:text |slurp)
                                      |j $ %{} :Leaf (:at 1536990369947) (:by |root) (:text "|\"node_modules/github-markdown-css/github-markdown.css")
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1572773276840) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text |main!)
              |r $ %{} :Expr (:at 1572773276840) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1572773276840) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1572773276840) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text "|\"release")
              |x $ %{} :Expr (:at 1572773276840) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1572773276840) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text |spit)
                      |j $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text "|\"target/index.html")
                      |r $ %{} :Expr (:at 1572773276840) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text |dev-page)
                  |v $ %{} :Expr (:at 1572773276840) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text |spit)
                      |j $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text "|\"dist/index.html")
                      |r $ %{} :Expr (:at 1572773276840) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572773276840) (:by |rJG4IHzWf) (:text |prod-page)
        |prod-page $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |prod-page)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |D $ %{} :Expr (:at 1508558997584) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508558999221) (:by |root) (:text |reel)
                          |j $ %{} :Expr (:at 1508559000259) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1508559003947) (:by |root) (:text |->)
                              |T $ %{} :Leaf (:at 1508559043265) (:by |root) (:text |reel-schema/reel)
                              |j $ %{} :Expr (:at 1508559004949) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508559006145) (:by |root) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1508559007159) (:by |root) (:text |:base)
                                  |r $ %{} :Leaf (:at 1508559012692) (:by |root) (:text |schema/store)
                              |r $ %{} :Expr (:at 1508559013471) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508559014264) (:by |root) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1508559016252) (:by |root) (:text |:store)
                                  |r $ %{} :Leaf (:at 1508559021408) (:by |root) (:text |schema/store)
                      |T $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |html-content)
                          |j $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |make-string)
                              |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                                  |j $ %{} :Leaf (:at 1508559025553) (:by |root) (:text |reel)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511096131470) (:by |root) (:text |assets)
                          |j $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1511096100868) (:by |root) (:text |read-string)
                              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |slurp)
                                  |j $ %{} :Leaf (:at 1511096128278) (:by |root) (:text ||dist/assets.edn)
                      |v $ %{} :Expr (:at 1572773218527) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572773218527) (:by |rJG4IHzWf) (:text |cdn)
                          |j $ %{} :Expr (:at 1572773218527) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572773218527) (:by |rJG4IHzWf) (:text |if)
                              |j $ %{} :Leaf (:at 1572773218527) (:by |rJG4IHzWf) (:text |config/cdn?)
                              |r $ %{} :Expr (:at 1572773218527) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572773218527) (:by |rJG4IHzWf) (:text |:cdn-url)
                                  |j $ %{} :Leaf (:at 1572773218527) (:by |rJG4IHzWf) (:text |config/site)
                              |v $ %{} :Leaf (:at 1572773218527) (:by |rJG4IHzWf) (:text "|\"")
                      |x $ %{} :Expr (:at 1506671419283) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506671422205) (:by |root) (:text |prefix-cdn)
                          |j $ %{} :Expr (:at 1506671423771) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506671426041) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1506671426232) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506671426492) (:by |root) (:text |x)
                              |r $ %{} :Expr (:at 1506671427101) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506671429221) (:by |root) (:text |str)
                                  |j $ %{} :Leaf (:at 1506671431459) (:by |root) (:text |cdn)
                                  |r $ %{} :Leaf (:at 1506671433667) (:by |root) (:text |x)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |make-page)
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |html-content)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |merge)
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |base-info)
                          |r $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:styles)
                                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                                      |j $ %{} :Expr (:at 1527526876296) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1527526877849) (:by |root) (:text |:release-ui)
                                          |j $ %{} :Leaf (:at 1527788277677) (:by |root) (:text |config/site)
                              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:scripts)
                                  |v $ %{} :Expr (:at 1511096296215) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1511096297101) (:by |root) (:text |map)
                                      |b $ %{} :Expr (:at 1511096299213) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1511096301200) (:by |root) (:text "|#()")
                                          |j $ %{} :Leaf (:at 1511096306997) (:by |root) (:text |->)
                                          |r $ %{} :Leaf (:at 1511096308142) (:by |root) (:text |%)
                                          |v $ %{} :Leaf (:at 1511096313911) (:by |root) (:text |:output-name)
                                          |x $ %{} :Leaf (:at 1511096316067) (:by |root) (:text |prefix-cdn)
                                      |j $ %{} :Leaf (:at 1511096298522) (:by |root) (:text |assets)
                              |v $ %{} :Expr (:at 1500457145881) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500457147217) (:by |root) (:text |:ssr)
                                  |j $ %{} :Leaf (:at 1500457153770) (:by |root) (:text ||respo-ssr)
                              |x $ %{} :Expr (:at 1510073430416) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1510073435442) (:by |root) (:text |:inline-styles)
                                  |j $ %{} :Expr (:at 1510073435772) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1510073436446) (:by |root) (:text |[])
                                      |X $ %{} :Expr (:at 1537379936797) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537379936797) (:by |root) (:text |slurp)
                                          |j $ %{} :Leaf (:at 1537379936797) (:by |root) (:text "|\"entry/github-gist.css")
                                      |b $ %{} :Expr (:at 1536990377629) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536990378811) (:by |root) (:text |slurp)
                                          |j $ %{} :Leaf (:at 1536990379858) (:by |root) (:text "|\"node_modules/github-markdown-css/github-markdown.css")
                                      |j $ %{} :Expr (:at 1510073438837) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1510073447922) (:by |root) (:text |slurp)
                                          |j $ %{} :Leaf (:at 1510073454524) (:by |root) (:text ||./entry/main.css)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.page)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.render.html)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |make-string)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |shell-page.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |make-page)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |spit)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |slurp)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |y $ %{} :Expr (:at 1508558973189) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1508558974176) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1508558979185) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1508558980099) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1508558983541) (:by |root) (:text |reel-schema)
                |yT $ %{} :Expr (:at 1511096104861) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1511096105776) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1511096114148) (:by |root) (:text |cljs.reader)
                    |r $ %{} :Leaf (:at 1511096115495) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1511096115672) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1511096116461) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1511096118134) (:by |root) (:text |read-string)
                |yj $ %{} :Expr (:at 1527788265374) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788265660) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788267102) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788267664) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788268746) (:by |root) (:text |config)
                |yr $ %{} :Expr (:at 1572773289794) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1572773289794) (:by |rJG4IHzWf) (:text |[])
                    |j $ %{} :Leaf (:at 1572773289794) (:by |rJG4IHzWf) (:text |cumulo-util.build)
                    |r $ %{} :Leaf (:at 1572773289794) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1572773289794) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572773289794) (:by |rJG4IHzWf) (:text |[])
                        |j $ %{} :Leaf (:at 1572773289794) (:by |rJG4IHzWf) (:text |get-ip!)
            |v $ %{} :Expr (:at 1572773284194) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1572773284194) (:by |rJG4IHzWf) (:text |:require-macros)
                |j $ %{} :Expr (:at 1572773284194) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1572773284194) (:by |rJG4IHzWf) (:text |[])
                    |j $ %{} :Leaf (:at 1572773284194) (:by |rJG4IHzWf) (:text |clojure.core.strint)
                    |r $ %{} :Leaf (:at 1572773284194) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1572773284194) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572773284194) (:by |rJG4IHzWf) (:text |[])
                        |j $ %{} :Leaf (:at 1572773284194) (:by |rJG4IHzWf) (:text |<<)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1512359514709) (:by |rJG4IHzWf) (:text |:content)
                      |j $ %{} :Leaf (:at 1512359516026) (:by |rJG4IHzWf) (:text ||)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696787201013) (:by |rJG4IHzWf) (:text |tag-match)
                  |b $ %{} :Leaf (:at 1696787201699) (:by |rJG4IHzWf) (:text |op)
                  |n $ %{} :Expr (:at 1507399852251) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696787208809) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1696787209932) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1696787210147) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at 1507399856471) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628949437909) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at 1507399858922) (:by |root) (:text |store)
                          |n $ %{} :Leaf (:at 1696787212982) (:by |rJG4IHzWf) (:text |cursor)
                          |q $ %{} :Leaf (:at 1696787213253) (:by |rJG4IHzWf) (:text |s)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696787214257) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512359657160) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Leaf (:at 1696787214650) (:by |rJG4IHzWf) (:text |c)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512359666053) (:by |rJG4IHzWf) (:text |assoc)
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1512359660859) (:by |rJG4IHzWf) (:text |:content)
                          |v $ %{} :Leaf (:at 1696787215687) (:by |rJG4IHzWf) (:text |c)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696787217226) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1696787218065) (:by |rJG4IHzWf) (:text |d)
                      |j $ %{} :Leaf (:at 1696787218868) (:by |rJG4IHzWf) (:text |d)
                  |u $ %{} :Expr (:at 1696787203756) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696787204127) (:by |rJG4IHzWf) (:text |_)
                      |b $ %{} :Expr (:at 1696787204586) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696787204586) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1696787204586) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696787206152) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1696787204586) (:by |rJG4IHzWf) (:text "|\"Unknown op:")
                              |h $ %{} :Leaf (:at 1696787204586) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1696787204586) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1507399862664) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507399864640) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1507399864883) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399865654) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399873143) (:by |root) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1507399874041) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399874214) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399874938) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1628949441792) (:by |rJG4IHzWf) (:text |update-states)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
