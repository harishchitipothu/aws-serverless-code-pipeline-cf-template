#! /bin/bash

echo "Installing serverless"
echo "_______________________________"

npm install -g serverless
npm install serverless-dynamodb-local serverless-offline serverless-stack-output

echo "Deploying to $env"
echo "_______________________________"
serverless config credentials --provider aws --key AKIAIEKOPTUYQV4ULYWA --secret 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
serverless deploy --stage $env --package $CODEBUILD_SRC_DIR/artifacts/$env -v
