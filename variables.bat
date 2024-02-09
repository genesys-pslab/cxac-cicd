@ECHO OFF
set TF_VAR_SOURCE_CLIENTID=<source-client-id>            @REM See table below for valid values
set TF_VAR_SOURCE_CLIENTSECRET=<source-client-secret>
set TF_VAR_SOURCE_AWSREGION=<source-aws-region>
set TF_VAR_DEST_CLIENTID=<dest-client-id>
set TF_VAR_DEST_CLIENTSECRET=<dest-client-secret>
set TF_VAR_DEST_AWSREGION=<dest-aws-region>
set TF_VAR_CUST_PREFIX=<customer-identifier-prefix>      @REM Used to prefix GC objects with unique identifier
set TF_VAR_CUST_SUFFIX=<customer-identifier-suffix>      @REM Used to append GC objects with unique identifier
set TF_VAR_LOB0=<lob-1>                                  @REM Following are typical lines of business
set TF_VAR_LOB1=<lob-2>                                  @REM Should be tailored to customer business
set TF_VAR_LOB2=<lob-3>                                  @REM E.g., Sales, Support, Claims, Auto, etc...
set TF_VAR_LOB3=<lob-4>

set ARCHY_SOURCE_REGION=<archy-source-region>            @REM See table below for valid values
set ARCHY_DEST_REGION=<archy-dest-region>
set ARCHY_FLOW_NAME=%TF_VAR_CUST_PREFIX%<name-of-flow>   @REM Name of a simple flow that exists in Org
set ARCHY_FLOW_TYPE=<type-of-flow>                       @REM Type of flow to demonstrate in Archy export

@REM AWS region	                AWS region name	    Region in Genesys Cloud login	Archy Location        
@REM US East (N. Virginia)	    us-east-1	        Americas (US East)	            mypurecloud.com       
@REM US East 2 (Ohio)*          us-east-2	        FedRAMP	                        use2.us-gov-pure.cloud
@REM US West (Oregon)	        us-west-2	        Americas (US West)	            usw2.pure.cloud       
@REM Canada (Central)	        ca-central-1	    Americas (Canada)	            cac1.pure.cloud       
@REM South America (São Paulo)	sa-east-1	        Americas (São Paulo)	        sae1.pure.cloud       
@REM Europe (Frankfurt)	        eu-central-1	    EMEA (Frankfurt)	            mypurecloud.de        
@REM Europe (Ireland)	        eu-west-1	        EMEA (Dublin)	                mypurecloud.ie        
@REM Europe (London)	        eu-west-2	        EMEA (London)	                euw2.pure.cloud       
@REM Europe (Zurich)	        eu-central-2	    EMEA (Zurich)                   euc2.pure.cloud       
@REM Middle East  (UAE)	        me-central-1	    EMEA (UAE)	                    mec1.pure.cloud       
@REM Asia Pacific (Mumbai)	    ap-south-1	        Asia Pacific (Mumbai)	        aps1.pure.cloud       
@REM Asia Pacific (Seoul)	    ap-northeast-2	    Asia Pacific (Seoul)	        apne2.pure.cloud      
@REM Asia Pacific (Sydney)	    ap-southeast-2	    Asia Pacific (Sydney)	        mypurecloud.com.au    
@REM Asia Pacific (Tokyo)	    ap-northeast-1	    Asia Pacific (Tokyo)	        mypurecloud.jp        
@REM Asia Pacific (Osaka)	    ap-northeast-3      Asia Pacific (Osaka)            apne3.pure.cloud      