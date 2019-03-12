# 

data "template_file" "metricly_ro_policy" {
  template = "${file("iam/metricly-ro-policy.json.tpl")}" 
  vars = {
    tpl_detailed_billing_bucket = "${var.detailed_billing_bucket}"
  }
}

resource "aws_iam_role" "metricly" {
  name 			          = "TFMetriclyReadOnly"
  assume_role_policy 	= "${file("iam/assume-role.json")}"
}

resource "aws_iam_role_policy" "metricly_ro_policy" {
  name   	= "TFMetriclyReadOnlyPolicy"
  role 		= "${aws_iam_role.metricly.id}" 
  policy	= "${data.template_file.metricly_ro_policy.rendered}"
}
