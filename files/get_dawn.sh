#!/bin/bash
curl -s "wttr.in/${CITY}?format=%s" | sed -e 's/://g' -e 's/..$//' > /tmp/dawn
