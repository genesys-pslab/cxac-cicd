export TF_VAR_SOURCE_CLIENTID="<source-client-id>"                  # See table below for valid values
export TF_VAR_SOURCE_CLIENTSECRET="<source-client-secret>"
export TF_VAR_SOURCE_AWSREGION="<source-aws-region>"
export TF_VAR_DEST_CLIENTID="<dest-client-id>"
export TF_VAR_DEST_CLIENTSECRET="<dest-client-secret>"
export TF_VAR_DEST_AWSREGION="<dest-aws-region>"
export TF_VAR_CUST_PREFIX="<customer-identifier-prefix>"            # Used to prefix GC objects with unique identifier
export TF_VAR_CUST_SUFFIX="<customer-identifier-suffix>"            # Used to append GC objects with unique identifier
export TF_VAR_LOB0="<lob-1>"                                        # Following are typical lines of business
export TF_VAR_LOB1="<lob-2>"                                        # Should be tailored to customer business
export TF_VAR_LOB2="<lob-3>"                                        # E.g., Sales, Support, Claims, Auto, etc...
export TF_VAR_LOB3="<lob-4>"

export ARCHY_SOURCE_REGION="<archy-source-region>"                  # See table below for valid values
export ARCHY_DEST_REGION="<archy-dest-region>"
export ARCHY_FLOW_NAME=$TF_VAR_CUST_PREFIX"<name-of-flow>"          # A simple flow that exists in Org
export ARCHY_FLOW_TYPE="<type-of-flow>"                             # Type of flow to demonstrate in Archy export


# AWS region	            AWS region name	    Region in Genesys Cloud login	Archy Location        
# US East (N. Virginia)	    us-east-1	        Americas (US East)	            mypurecloud.com       
# US East 2 (Ohio)*         us-east-2	        FedRAMP	                        use2.us-gov-pure.cloud
# US West (Oregon)	        us-west-2	        Americas (US West)	            usw2.pure.cloud       
# Canada (Central)	        ca-central-1	    Americas (Canada)	            cac1.pure.cloud       
# South America (São Paulo)	sa-east-1	        Americas (São Paulo)	        sae1.pure.cloud       
# Europe (Frankfurt)	    eu-central-1	    EMEA (Frankfurt)	            mypurecloud.de        
# Europe (Ireland)	        eu-west-1	        EMEA (Dublin)	                mypurecloud.ie        
# Europe (London)	        eu-west-2	        EMEA (London)	                euw2.pure.cloud       
# Europe (Zurich)	        eu-central-2	    EMEA (Zurich)                   euc2.pure.cloud       
# Middle East  (UAE)	    me-central-1	    EMEA (UAE)	                    mec1.pure.cloud       
# Asia Pacific (Mumbai)	    ap-south-1	        Asia Pacific (Mumbai)	        aps1.pure.cloud       
# Asia Pacific (Seoul)	    ap-northeast-2	    Asia Pacific (Seoul)	        apne2.pure.cloud      
# Asia Pacific (Sydney)	    ap-southeast-2	    Asia Pacific (Sydney)	        mypurecloud.com.au    
# Asia Pacific (Tokyo)	    ap-northeast-1	    Asia Pacific (Tokyo)	        mypurecloud.jp        
# Asia Pacific (Osaka)	    ap-northeast-3      Asia Pacific (Osaka)            apne3.pure.cloud      