#! /bin/bash

echo "Installing serverless"
echo "_______________________________"

npm install -g serverless
npm install serverless-dynamodb-local serverless-offline serverless-stack-output

echo "Deploying to $env"
echo "_______________________________"
serverless config credentials --provider aws --key AKIAIE6LCOJQH6NERRDQ --secret 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
serverless deploy --stage $env --package $CODEBUILD_SRC_DIR/artifacts/$env -v
