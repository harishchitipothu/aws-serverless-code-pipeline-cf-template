#! /bin/bash

echo "Installing serverless"
echo "_______________________________"

npm install -g serverless
npm install serverless-dynamodb-local serverless-offline serverless-stack-output

echo "Deploying to $env"
echo "_______________________________"
erverless config credentials --provider aws --key AKIAIKUPQWCEX5ZJPM7Q ?secret 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
sls deploy --stage $env --package $CODEBUILD_SRC_DIR/artifacts/$env -v
