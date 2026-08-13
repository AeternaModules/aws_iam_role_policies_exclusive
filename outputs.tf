output "iam_role_policies_exclusives_id" {
  description = "Map of id values across all iam_role_policies_exclusives, keyed the same as var.iam_role_policies_exclusives"
  value       = { for k, v in aws_iam_role_policies_exclusive.iam_role_policies_exclusives : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_role_policies_exclusives_policy_names" {
  description = "Map of policy_names values across all iam_role_policies_exclusives, keyed the same as var.iam_role_policies_exclusives"
  value       = { for k, v in aws_iam_role_policies_exclusive.iam_role_policies_exclusives : k => v.policy_names if v.policy_names != null && length(v.policy_names) > 0 }
}
output "iam_role_policies_exclusives_role_name" {
  description = "Map of role_name values across all iam_role_policies_exclusives, keyed the same as var.iam_role_policies_exclusives"
  value       = { for k, v in aws_iam_role_policies_exclusive.iam_role_policies_exclusives : k => v.role_name if v.role_name != null && length(v.role_name) > 0 }
}

