module ApiFormat
  class DeviseFailureApp < Devise::FailureApp
    def http_auth_body
      Error.new(status: '401', error: i18n_message).to_json
    end
  end
end
