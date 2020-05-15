provider "aws" {
    region = "eu-central-1"
}

resource "aws_s3_bucket" "private_pypi" {
    bucket = "dnguyen-private-pypi"
    acl = "public-read"

    website {
        index_document = "index.html"
        error_document = "error.html"
    }

    tags = {
        Name = "Private PyPI"
    }
}
