terraform {
  backend "s3" {
    bucket       = "terraform-state-artist-directory-2"
    key          = "artist_directory/dev/terraform.tfstate"
    region       = "eu-west-2"
    encrypt      = true
    use_lockfile = true
  }
}