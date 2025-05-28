terraform {
  backend "http" {
    address = "https://***/api/v4/projects/9/terraform/state/angie"
    lock_address = "https://***/api/v4/projects/9/terraform/state/angie/lock"
    unlock_address = "https://***/api/v4/projects/9/terraform/state/angie/lock"
    username       = "gitlab-ci-token" 
    lock_method = "POST"
    unlock_method = "DELETE"
    retry_wait_min = 5
  }
}