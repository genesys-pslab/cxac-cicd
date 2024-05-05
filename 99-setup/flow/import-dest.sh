archy publish \
    --clientId $TF_VAR_DEST_CLIENTID \
    --clientSecret $TF_VAR_DEST_CLIENTSECRET \
    --location $ARCHY_DEST_REGION \
    --recreate \
    --file "./`$TF_VAR_CUST_PREFIX`_EmailTest_v1-0.yaml" \


