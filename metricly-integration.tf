# Terraform plan to create read-only IAM Role and Policy for Metricly read-only access 

data "template_file" "metricly_ro_policy" {
  template = "${file("iam/metricly-ro-policy.json.tpl")}" 
  vars = {
    tpl_detailed_billing_bucket = "${var.detailed_billing_bucket}"
  }
}

data "template_file" "metricly_assume_role_policy" {
  template = "${file("iam/assume-role.json.tpl")}"
  vars = {
    tpl_external_id = "${var.external_id}"
  }
}


resource "aws_iam_role" "metricly" {
  name 			          = "TFMetriclyReadOnly"
  assume_role_policy 	= "${data.template_file.metricly_assume_role_policy.rendered}"
}

resource "aws_iam_role_policy" "metricly_ro_policy" {
  name   	= "TFMetriclyReadOnlyPolicy"
  role 		= "${aws_iam_role.metricly.id}" 
  policy	= "${data.template_file.metricly_ro_policy.rendered}"
}
