#!/bin/sh
if [ ! -f UUID ]; then
  UUID="40f6e77f-9dd5-452e-add1-4904c99157f8"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

