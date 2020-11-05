# frozen_string_literal: true

module Api
  class ReportPageSerializer
    include FastJsonapi::ObjectSerializer

    attributes :title,
               :url,
               :status

    has_many :page_errors, record_type: :website_page_error,
                           serializer: :website_page_error,
                           object_method_name: :active_page_errors,
                           id_method_name: :active_page_error_ids
    has_many :website_page_website_resources
    has_many :custom_rule_results, object_method_name: :active_custom_rule_results,
                                   id_method_name: :active_custom_rule_result_ids
  end
end
