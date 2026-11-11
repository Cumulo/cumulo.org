#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

# Persisted data is open until decoded into Store.
calcit analyze weak-types --only coverage --coverage-level none,partial --format json |
  jq -e 'all(.data.definitions[]; .id == "app.main/decode-store" and .coverage == "partial")'
# Respo controls share a heterogeneous state payload. Keep both exceptions at their original positions.
calcit analyze weak-types \
  --only schema-dynamic,unresolved-type-slot,code-dynamic,code-nil,unsafe-coerce,data-dynamic --format json |
  jq -e '
    all(.data.definitions[]; .id as $id |
      (.occurrences | length) == 1 and all(.occurrences[];
        ($id == "app.main/decode-store" and .kind == "schema-dynamic" and .path == "schema.args.0")
        or ($id == "app.types/Op" and .kind == "data-dynamic" and .path == "code@2.2")))'
