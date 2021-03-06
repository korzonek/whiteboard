require 'omniauth-saml'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :saml,
    :idp_sso_target_url                 => ENV['OKTA_SSO_TARGET_URL'],
    :idp_sso_target_url_runtime_params  => {:original_request_param => :mapped_idp_param},
    :idp_cert_fingerprint               => ENV['OKTA_CERT_FINGERPRINT']
end
