archy export \
    --force \
    --clientId $TF_VAR_SOURCE_CLIENTID \
    --clientSecret $TF_VAR_SOURCE_CLIENTSECRET \
    --location $ARCHY_SOURCE_REGION \
    --flowName $ARCHY_FLOW_NAME \
    --flowType $ARCHY_FLOW_TYPE \
    --exportType yaml \
    --outputDir ./exports

    