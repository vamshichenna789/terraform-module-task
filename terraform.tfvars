network_name = "terraformcustom"
auto_create_subnetworks = false
routing_mode = "GLOBAL"
network_description = "terraform managed network"


subnets = [
  {
    subnet_name     = "terrform-subnet1"
    subnet_ip       = "10.10.10.0/24"
    subnet_region   = "us-central1"
  }
]

secondary_ranges = {
  terrform-subnet1 = [
    {
      range_name      = "terrform-subnet1-secondary-01"
      ip_cidr_range   = "192.168.64.0/24"
    }
  ]
}
## VM Values
label_definitions = {
  key1 = "prodcution"
  key2 = "terraform"
  # Add other default labels here if needed
}
vmsubnetname = "terrform-subnet1"

instance_name = "terraform-instance"
machine_type = "e2-micro"
zone = "us-central1-a"
tags = ["allow-ssh", "allow-8080"]
# Add other tags as needed
instance_image = "ubuntu-2204-jammy-v20240208"
service_account_email = "terraform@devops-practice-411411.iam.gserviceaccount.com"
