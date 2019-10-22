#!/bin/bash
aws sns publish --topic-arn $1 --message "This is your AWS test message" --region $2