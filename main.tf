resource "google_iap_web_region_forwarding_rule_service_iam_member" "iap_web_region_forwarding_rule_service_iam_members" {
  for_each = var.iap_web_region_forwarding_rule_service_iam_members

  forwarding_rule_region_service_name = each.value.forwarding_rule_region_service_name
  member                              = each.value.member
  role                                = each.value.role
  project                             = each.value.project
  region                              = each.value.region

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

