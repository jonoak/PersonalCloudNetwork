
provider "google" {
  credentials = file("<path_to_google_cloud_credentials>.json")
  project     = "<your_project_id>"
  region      = "us-central1"
}

provider "aws" {
  access_key = "<your_aws_access_key>"
  secret_key = "<your_aws_secret_key>"
  region     = "us-west-2"
}

resource "google_compute_instance" "default" {
  name         = "vm-instance-google"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

resource "aws_instance" "default" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "vm-instance-aws"
  }
}
