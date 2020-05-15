# Python Private PyPI

The repository contains example how to host a private pypi registry in AWS S3

## Requirements

```
Terraform >= 0.12
Python >= 3.7

# Dependencies
virtualenv
s3pypi
setuptools
wheel
```

## How to

### Deploy new infra

Run `make infra`

### Setup environment

```
virtualenv .venv
source .venv/bin/activate

cd packaging && pip install -r requirements.txt
```

### Build and Publish new package

```
source .venv/bin/activate

make s3pypi
```

### Test installing package

*via Pip*
```
source .venv/bin/activate

pip install example_pkg_dnguyen==0.1.0 --extra-index-url http://dnguyen-private-pypi.s3-website.eu-central-1.amazonaws.com/  --trusted-host dnguyen-private-pypi.s3-website.eu-central-1.amazonaws.com
```

*via Pipenv*
```
PIPENV_VENV_IN_PROJECT=1 pipenv install --dev
```