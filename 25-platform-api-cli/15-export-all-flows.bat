
@ECHO OFF
@REM Issue with this script... Output from gc in CMD prompt for Windows is 
@REM showing $VARIABLE_NAME instead of the actual variable...

gc flows list -a^
    --clientid %TF_VAR_SOURCE_CLIENTID%^
    --clientsecret %TF_VAR_SOURCE_CLIENTSECRET%^
    --environment %ARCHY_SOURCE_REGION%^
    --transform .\archy-flow-export.tmpl > .\99-export_archy_flows.bat