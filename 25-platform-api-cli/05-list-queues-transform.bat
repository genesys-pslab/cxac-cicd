gc routing queues list -a^
    --clientid %TF_VAR_SOURCE_CLIENTID%^
    --clientsecret %TF_VAR_SOURCE_CLIENTSECRET%^
    --environment %ARCHY_SOURCE_REGION%^
    --transform .\archy-queue-transform.tmpl