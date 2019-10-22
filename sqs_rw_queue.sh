aws sqs send-message --queue-url $1 --message-body "{'content':'test'}" --region $2
aws sqs receive-message --queue-url $1 --region $2