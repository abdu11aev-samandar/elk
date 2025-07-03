#!/bin/bash

# Elasticsearch default entrypointni backgroundda ishga tushiramiz
/usr/local/bin/docker-entrypoint.sh elasticsearch &

# Elasticsearch ishga tushguncha kutamiz
echo "Waiting for Elasticsearch..."
sleep 5

# Barcha indekslardan read_only blokini olib tashlaymiz
echo "Removing read_only_allow_delete blocks (if any)..."
curl -X PUT 'http://localhost:9200/_all/_settings' \
     -H 'Content-Type: application/json' \
     -d '{"index.blocks.read_only_allow_delete": false}' || true

# Qo‘shimcha komandalar qo‘shilsa shu yerga yoziladi

# Foreground jarayonni kutib turamiz
wait
