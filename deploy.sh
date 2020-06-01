#! /bin/bash

echo "Installing serverless"
echo "_______________________________"

npm install -g serverless
npm install serverless-dynamodb-local serverless-offline serverless-stack-output

echo "Deploying to $env"
echo "_______________________________"
serverless config credentials --provider aws --key AKIAJANC5E3GPL6SETSQ --secret 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
serverless deploy --stage $env --package $CODEBUILD_SRC_DIR/artifacts/$env -v
