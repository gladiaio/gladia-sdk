=begin
#FastAPI

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'uri'

module OpenapiClient
  class TextTextTranslationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Apply model for the translation task for a given models
    # @param [Hash] opts the optional parameters
    # @option opts [String] :input_string  (default to 'Text to translate')
    # @option opts [String] :source_language  (default to 'en')
    # @option opts [String] :target_language  (default to 'fr')
    # @option opts [String] :model  (default to 'Helsinki-NLP')
    # @return [Object]
    def apply_text_text_translation_post(opts = {})
      data, _status_code, _headers = apply_text_text_translation_post_with_http_info(opts)
      data
    end

    # Apply model for the translation task for a given models
    # @param [Hash] opts the optional parameters
    # @option opts [String] :input_string 
    # @option opts [String] :source_language 
    # @option opts [String] :target_language 
    # @option opts [String] :model 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def apply_text_text_translation_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TextTextTranslationApi.apply_text_text_translation_post ...'
      end
      # resource path
      local_var_path = '/text/text/translation/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'input_string'] = opts[:'input_string'] if !opts[:'input_string'].nil?
      query_params[:'source_language'] = opts[:'source_language'] if !opts[:'source_language'].nil?
      query_params[:'target_language'] = opts[:'target_language'] if !opts[:'target_language'].nil?
      query_params[:'model'] = opts[:'model'] if !opts[:'model'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TextTextTranslationApi#apply_text_text_translation_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of models available for translation
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_versions_text_text_translation_get(opts = {})
      data, _status_code, _headers = get_versions_text_text_translation_get_with_http_info(opts)
      data
    end

    # Get list of models available for translation
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_versions_text_text_translation_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TextTextTranslationApi.get_versions_text_text_translation_get ...'
      end
      # resource path
      local_var_path = '/text/text/translation/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TextTextTranslationApi#get_versions_text_text_translation_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
