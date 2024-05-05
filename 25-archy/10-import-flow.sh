VERSION=_v1-0.yaml
archy publish \
    --recreate \
    --file ./exports/$ARCHY_FLOW_NAME$VERSION \
    --clientId $TF_VAR_DEST_CLIENTID \
    --clientSecret $TF_VAR_DEST_CLIENTSECRET \
    --location $ARCHY_DEST_REGION

    