# frozen_string_literal: true

module Aws
  module Stubbing
    module Protocols
      # @api private
      class Query

        def stub_data(api, operation, data)
          resp = Seahorse::Client::Http::Response.new
          resp.status_code = 200
          resp.body = build_body(api, operation, data)
          resp
        end

        def stub_error(error_code)
          resp = Seahorse::Client::Http::Response.new
          resp.status_code = 400
          resp.body = XmlError.new(error_code).to_xml
          resp
        end

        private

        def build_body(api, operation, data)
          xml = []
          builder = Aws::Xml::DocBuilder.new(target: xml, indent: '  ')
          builder.node("#{operation.name}Response", xmlns: xmlns(api)) do
            if (rules = operation.output)
              rules.location_name = "#{operation.name}Result"
              Xml::Builder.new(rules, target: xml, pad:'  ').to_xml(data)
            end
            builder.node('ResponseMetadata') do
              builder.node('RequestId', 'stubbed-request-id')
            end
          end
          xml.join
        end

        def xmlns(api)
          api.metadata['xmlNamespace']
        end

      end
    end
  end
end
