#! /bin/bash

echo "Installing serverless"
echo "_______________________________"

npm install -g serverless
npm install serverless-dynamodb-local serverless-offline serverless-stack-output

echo "Deploying to $env"
echo "_______________________________"
serverless config credentials --provider aws --key AKIAJJNVBL3PWNZYN3EQ --secret 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
serverless deploy --stage $env --package $CODEBUILD_SRC_DIR/artifacts/$env -v
