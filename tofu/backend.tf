terraform {
  backend "http" {
    address = "https://***/api/v4/projects/19/terraform/state/inno"
    lock_address = "https://***/api/v4/projects/19/terraform/state/inno/lock"
    unlock_address = "https://***/api/v4/projects/19/terraform/state/inno/lock"
    username       = "gitlab-ci-token" 
    lock_method = "POST"
    unlock_method = "DELETE"
    retry_wait_min = 5
  }
}