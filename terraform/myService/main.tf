resource "elasticsearch_opensearch_role" "index_service_read" {
  index_permissions {
    index_patterns = [
      "service"
    ]
    allowed_actions = [
      "read",
    ]
    document_level_security = var.index_service_read_dls_query == null ? null : jsonencode(var.index_service_read_dls_query)
    field_level_security = var.index_service_read_fls == null ? null : var.index_service_read_fls
  }

}
