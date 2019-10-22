Current repository contains set of AWS CloudFormation scripts that demonstates how to use certain AWS service in real life cases.

01_auto_scaling_group.json - creates AutoScalingGroup

02_ec2_to_s3.json - created EC2 instance that is enabled to get objects from S3 storage (previosly created) using Insance Role and appropriate policy, doulowds from specified S3 specified test file on EC3 start

03_dynamo_psql.yml - creates environment with dynamoDB, PostgresDB, EC2 that is able to interact with both storage services using Instance role and proper policy

04_vpc_nat_elb.yml = environment with two subnets: private and public, EC2 instances in both, NAT, ELB that allows to get access to one of instances (from private or public subnet) 

05_sqs_sns.yaml - environment with SQS, SNS and EC2 instance that is allows to create Topic, send message to Queue, email notification is sent

06_calc_env.yaml - spin up environment for Calc application (reffer schema image calc_schema.png)

SNS topic name : "edu-lohika-training-aws-sns-topic"

SQS name : "edu-lohika-training-aws-sqs-queue"

RDS DBName : "EduLohikaTrainingAwsRds"

RDS port: 5432

RDS user/password: rootuser/rootuser

DynamoDB TableName: "edu-lohika-training-aws-dynamodb", only one field, UserName, type: String

Backend calc port: 80

Client launch command line:

java -cp calc-client-1.0-SNAPSHOT-jar-with-dependencies.jar CalcClient <ELB’s DNS name>

RDS_HOST environment variable at instance, where "persist3-0.0.1-SNAPSHOT.jar" is running – assumed to have value of RDS host DNS name.

Connect DB

psql -h dbhostname -d dbname -U username


calc-client-1.0-SNAPSHOT-jar-with-dependencies - Launch at your work PC
calc-0.0.1-SNAPSHOT - upload and launch at public instance (ASG)
persist3-0.0.1-SNAPSHOT - upload and launch at private instance
