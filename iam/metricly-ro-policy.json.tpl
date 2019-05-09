{
	"Version": "2012-10-17",
	"Statement": [{
			"Effect": "Allow",
			"Action": [
				"autoscaling:DescribeAutoScalingGroups",
				"ce:GetCostAndUsage",
				"ce:GetDimensionValues",
				"ce:GetReservationUtilization",
				"ce:GetTags",
				"cloudwatch:GetMetricData",
				"cloudwatch:GetMetricStatistics",
				"cloudwatch:ListMetrics",
				"dynamodb:DescribeTable",
				"dynamodb:ListTables",
				"ec2:DescribeHostReservations",
				"ec2:DescribeHosts",
				"ec2:DescribeInstanceAttribute",
				"ec2:DescribeInstanceStatus",
				"ec2:DescribeInstances",
				"ec2:DescribeTags",
				"ec2:DescribeVolumeAttribute",
				"ec2:DescribeVolumeStatus",
				"ec2:DescribeVolumes",
				"ecs:ListClusters",
				"ecs:ListServices",
				"elasticache:DescribeCacheClusters",
				"elasticache:ListTagsForResource",
				"elasticloadbalancing:DescribeLoadBalancers",
				"elasticloadbalancing:DescribeTargetGroups",
				"elasticmapreduce:ListClusters",
				"kinesis:DescribeStream",
				"kinesis:ListStreams",
				"kinesis:ListTagsForStream",
				"lambda:ListFunctions",
				"lambda:ListTags",
				"mq:DescribeBroker",
				"mq:ListBrokers",
				"rds:DescribeDBInstances",
				"redshift:DescribeClusters",
				"route53:ListHealthChecks",
				"s3:GetBucketLocation",
				"s3:ListAllMyBuckets",
				"s3:ListBucket",
				"sqs:ListQueues"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"ecs:DescribeClusters",
				"ecs:ListContainerInstances",
				"elasticfilesystem:DescribeFileSystems",
				"elasticfilesystem:DescribeTags",
				"elasticmapreduce:DescribeCluster",
				"sqs:GetQueueAttributes",
				"sqs:ListQueueTags"
			],
			"Resource": [
				"arn:aws:ecs:*:*:cluster/*",
				"arn:aws:elasticfilesystem:*:*:file-system/*",
				"arn:aws:elasticmapreduce:*:*:cluster/*",
				"arn:aws:sqs:*:*:*"
			]
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
