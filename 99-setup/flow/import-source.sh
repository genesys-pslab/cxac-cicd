archy publish \
    --clientId $TF_VAR_SOURCE_CLIENTID \
    --clientSecret $TF_VAR_SOURCE_CLIENTSECRET \
    --location $ARCHY_SOURCE_REGION \
    --recreate \
    --file "./"$TF_VAR_CUST_PREFIX"EmailTest_v1-0.yaml" \