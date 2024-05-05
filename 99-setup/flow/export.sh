archy export \
    --flowType $ARCHY_FLOW_TYPE \
    --flowName $ARCHY_FLOW_NAME \
    --exportType "yaml" \
    --clientId $TF_VAR_SOURCE_CLIENTID \
    --clientSecret $TF_VAR_SOURCE_CLIENTSECRET  \
    --location $ARCHY_SOURCE_REGION \
    --force \
    --outputDir .