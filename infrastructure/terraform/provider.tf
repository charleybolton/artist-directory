provider "aws" {
    region = "eu-west-2"
    default_tags {
        tags = {
            project_name = "artist_directory"
        }
    }
}