data "aws_iam_policy_document" "kube_master" {
  statement {
    effect = "Allow"

    actions = [
      "ec2:*",
      "elasticloadbalancing:*",
    ]

    resources = ["*"]
  }
}

data "aws_iam_policy_document" "assume" {
  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRole",
    ]

    sid = ""

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

