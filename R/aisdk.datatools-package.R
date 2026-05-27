#' @keywords internal
#' @importFrom rlang abort
#' @importFrom jsonlite toJSON
#' @importFrom R6 R6Class
#' @importFrom digest digest
#' @importFrom callr r
#' @importFrom utils capture.output head
#' @importFrom stats setNames
#' @importFrom aisdk create_chat_session generate_text get_model get_r_context
#' @importFrom aisdk tool Tool safe_parse_json get_param_docs trim_context_preview
#' @importFrom aisdk describe_semantic_object semantic_render_inspection
#' @importFrom aisdk semantic_render_summary validate_semantic_action
#' @importFrom aisdk z_object z_string z_array z_boolean z_integer z_number
#' @importFrom aisdk z_enum z_dataframe z_any_object
#' @importFrom aisdk capture_r_execution format_captured_execution check_ast_safety
"_PACKAGE"
