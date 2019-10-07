#!/bin/bash
aws s3api create-bucket --bucket kto-bucket --region us-east-2 --create-bucket-configuration LocationConstraint=us-east-2
aws s3api put-bucket-versioning --bucket kto-bucket --versioning-configuration Status=Enabled
aws s3 cp dynamo_script.sh s3://kto-bucket/dynamo_script.sh
aws s3 cp sql-script.sql s3://kto-bucket/sql-script.sql