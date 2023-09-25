#!/bin/bash

# Environment Variables
CONTROLLER_HOST="${CONTROLLER_HOST:-https://corecontechnologiesinc.saas.appdynamics.com}"
CONTROLLER_CREDENTIALS="${CONTROLLER_CREDENTIALS:-zachary.gonzales%40sage.com@corecontechnologiesinc:Devperson!!1}"

# Function to execute the list command for a given namespace
execute_list_command() {
    local namespace="$1"
    local additional_params="$2"
    local app_id=$(echo $additional_params | awk -F '-a ' '{print $2}' | awk '{print $1}')
    
    echo "----------------------------------------"
    if [ "$app_id" == "21133" ]; then
        echo "CoreconAPI - Listing $namespace"
    elif [ "$app_id" == "21135" ]; then
        echo "CoreconUI - Listing $namespace"
    else
        echo "Listing $namespace"
    fi
    echo "----------------------------------------"
    ../act.sh -H "$CONTROLLER_HOST" -C "$CONTROLLER_CREDENTIALS" $namespace $additional_params
    echo ""
}

# Execute list commands

# # 21133 - CoreconAPI
# execute_list_command "action" "list -a 21133"
# execute_list_command "backend" "list -a 21133"
# execute_list_command "bt" "list -a 21133"
# execute_list_command "event" "list -a 21133 -t BEFORE_NOW -d 60 -s ALL -e ALL" 
# execute_list_command "flowmap" "application -a 21133 -t last_1_hour.BEFORE_NOW.-1.-1.60"
# execute_list_command "healthrule" "list -a 21133"
# execute_list_command "informationPoint" "list -a 21133 -t last_1_hour.BEFORE_NOW.-1.-1.60"
# execute_list_command "metric" "list -a 21133"
# execute_list_command "node" "list -a 21133"
# execute_list_command "policy" "export -a 21133"
# execute_list_command "scope" "list -a 21133"
# execute_list_command "sep" "list -a 21133 -s 1610389435 -e 1620389435"
# execute_list_command "snapshot" "list -a 21133 -t BEFORE_NOW -d 120"
# execute_list_command "tier" "list -a 21133"

# #21135 - CoreconUI
# execute_list_command "action" "list -a 21135"
# execute_list_command "backend" "list -a 21135"
# execute_list_command "bt" "list -a 21135"
# execute_list_command "event" "list -a 21135 -t BEFORE_NOW -d 60 -s ALL -e ALL"
# execute_list_command "healthrule" "list -a 21135"
# execute_list_command "informationPoint" "list -a 21135 -t last_1_hour.BEFORE_NOW.-1.-1.60"
# execute_list_command "metric" "list -a 21135"
# execute_list_command "node" "list -a 21135"
# execute_list_command "policy" "export -a 21135"
# execute_list_command "scope" "list -a 21135"
# execute_list_command "sep" "list -a 21135 -s 1610389435 -e 1620389435"
# execute_list_command "snapshot" "list -a 21135 -t BEFORE_NOW -d 120"
# execute_list_command "tier" "list -a 21135"

# General
execute_list_command "actiontemplate" "list -t email"
execute_list_command "actiontemplate" "list -t httprequest"
execute_list_command "agents" "list  -t appserver"
execute_list_command "agents" "list  -t machine"
execute_list_command "agents" "list  -t cluster"
execute_list_command "alertingtemplate" "list"
execute_list_command "analyticsmetric" "list"
execute_list_command "analyticsschema" "list"
execute_list_command "analyticssearch" "list"
execute_list_command "application" "list"
execute_list_command "audit" "get -b 2023-09-22T11:45:00.000-0700 -f 2023-09-22T12:00:00.000-0700"
execute_list_command "bizjourney" "list"
execute_list_command "controller" "version"
execute_list_command "controller" "status"
execute_list_command "dbmon" "list"
execute_list_command "environment" "list"
execute_list_command "eum" "getapps"
execute_list_command "flowmap" "component -c 55820 -t last_1_hour.BEFOREW_NOW.-1.-1.60"
execute_list_command "licenserule" "list"
execute_list_command "logsources" "list"
execute_list_command "sam" "list"
execute_list_command "server" "list"
execute_list_command "synthetic" "list -a 55820"
execute_list_command "timerange" "list"
# execute_list_command "transactiondetection" "export"
# execute_list_command "user" ""
