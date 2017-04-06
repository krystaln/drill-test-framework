#!/bin/bash
source conf/drillTestConfig.properties

set -x
set -e

${DRILL_TEST_DATA_DIR}/Datasources/table_stats/delete_tpch_orig_stats.sh
wait
${DRILL_TEST_DATA_DIR}/Datasources/table_stats/analyze_tpch_original.sh

set +x
