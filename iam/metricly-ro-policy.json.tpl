{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "autoscaling:Describe*",
                "dynamodb:Get*",
                "kinesis:Get*",
                "s3:ListBucket",
                "cloudwatch:Describe*",
                "elasticmapreduce:Describe*",
                "dynamodb:Describe*",
                "ec2:GetConsoleOutput",
                "mq:List*",
                "tag:Get*",
                "elasticmapreduce:List*",
                "iam:Get*",
                "rds:Describe*",
                "elasticache:List*",
                "elasticloadbalancing:Describe*",
                "cloudwatch:Get*",
                "mq:Describe*",
                "ecs:List*",
                "kinesis:List*",
                "lambda:List*",
                "ecs:Describe*",
                "cloudwatch:List*",
                "dynamodb:List*",
                "kinesis:DescribeStream",
                "elasticache:Describe*",
                "sqs:Get*",
                "sqs:List*",
                "ec2:Describe*",
                "s3:ListAllMyBuckets",
                "rds:ListTagsForResource",
                "redshift:Describe*",
                "ce:*",
                "s3:GetBucketLocation"
            ],
            "Resource": "*"
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "s3:Get*",
                "s3:List*"
            ],
            "Resource": [
                "arn:aws:s3:::arn:aws:s3:::${tpl_detailed_billing_bucket}/*",
                "arn:aws:s3:::${tpl_detailed_billing_bucket}"
            ]
        }
    ]
}
