Current repository contains set of AWS CloudFormation scripts that demonstates how to use certain AWS service in real life cases.

01_auto_scaling_group.json - creates AutoScalingGroup

02_ec2_to_s3.json - created EC2 instance that is enabled to get objects from S3 storage (previosly created) using Insance Role and appropriate policy, doulowds from specified S3 specified test file on EC3 start

03_dynamo_psql.yml - creates environment with dynamoDB, PostgresDB, EC2 that is able to interact with both storage services using Instance role and proper policy

04_vpc_nat_elb.yml = environment with two subnets: private and public, EC2 instances in both, NAT, ELB that allows to get access to one of instances (from private or public subnet) 

05_sqs_sns.yaml - environment with SQS, SNS and EC2 instance that is allows to create Topic, send message to Queue, email notification is sent

