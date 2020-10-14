        $resourceGroupName = "eval.datatransformation"
        $serviceName = "mm-sample"
        $apiId="lorem-ipsum"
        $apiDisplayName="Lorem Ipsum"
        $apiId="Lorem"
        $apiPath="/lorem-ipsum"
        $operationPath="/"
        $operationDisplayName="Get"
        $operationDescription="Gets the data"

        az login

        # create the API
        az apim api create --service-name $serviceName  -g $resourceGroupName --api-id $apiId --path $apiPath --display-name $apiDisplayName

        # create the Operation
        az apim api operation create --service-name $serviceName  -g $resourceGroupName --api-id $apiId --url-template $operationPath --method "GET" --display-name $operationDisplayName --description $operationDescription
