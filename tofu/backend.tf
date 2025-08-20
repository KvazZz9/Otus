terraform {
  backend "http" {
    address = "https://адрес_вашего_гита/api/v4/projects/22/terraform/state/sdo"
    lock_address = "https://адрес_вашего_гита/api/v4/projects/22/terraform/state/sdo/lock"
    unlock_address = "https://адрес_вашего_гита/api/v4/projects/22/terraform/state/sdo/lock"
    username       = "gitlab-ci-token" 
    lock_method = "POST"
    unlock_method = "DELETE"
    retry_wait_min = 5
  }
}