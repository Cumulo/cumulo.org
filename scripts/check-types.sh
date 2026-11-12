#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

# Persisted data is open until decoded into Store.
calcit analyze weak-types --only coverage --coverage-level none,partial --format json |
  jq -e 'all(.data.definitions[]; .id == "app.main/decode-store" and .coverage == "partial")'
# Only the persisted-data decoder accepts an open input.
calcit analyze weak-types \
  --only schema-dynamic,unresolved-type-slot,code-dynamic,code-nil,unsafe-coerce,data-dynamic --format json |
  jq -e '
    all(.data.definitions[]; .id as $id |
      (.occurrences | length) == 1 and all(.occurrences[];
        $id == "app.main/decode-store" and .kind == "schema-dynamic" and .path == "schema.args.0"))'
