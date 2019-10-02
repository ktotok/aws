#!/bin/bash
echo "Shamanic writings" > s3_content.txt
aws s3api create-bucket --bucket kto-bucket --region us-east-2 --create-bucket-configuration LocationConstraint=us-east-2
aws s3api put-bucket-versioning --bucket kto-bucket --versioning-configuration Status=Enabled
aws s3 cp s3_content.txt s3://kto-bucket/s3_content.txt