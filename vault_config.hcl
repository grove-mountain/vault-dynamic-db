storage "inmem" {}

listener "tcp" {
  address = "10.4.2.120:8200"
  tls_disable = "true"
}
ui=true
