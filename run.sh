#!/bin/sh -ex

KIBANA_CONF_FILE="/opt/kibana-${KIBANA_VERSION}/config/kibana.yml"

ELASTICSEARCH_URL=${ELASTICSEARCH_URL:-http://elasticsearch:9200}

sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 '$ELASTICSEARCH_URL'!" "${KIBANA_CONF_FILE}"

exec /opt/kibana-${KIBANA_VERSION}/bin/kibana
