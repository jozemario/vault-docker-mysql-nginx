ui = true

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = "true"
  tls_cert_file = "/vault/certs/wildcard_domain_com.crt"
  tls_skip_verify = "true"
  tls_require_and_verify_client_cert = "false"
}

storage "mysql" {
  address = "db-mysql.domain.com:12345"
  username = "user"
  password = "pass"
  database = "domain_vault"
}
scheme = "http"
api_addr = "http://1.2.3.4:8200"
cluster_addr = "http://1.2.3.4:8201"

disable_mlock = "true"