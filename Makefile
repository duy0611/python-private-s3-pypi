### Makefile ###
################

.PHONY: package
package:
	cd packaging && python3 setup.py sdist bdist_wheel

.PHONY: apply-infra
apply-infra:
	cd infra && terraform init && terrafrom apply

.PHONY: s3pypi
s3pypi:
	cd packaging && s3pypi --bucket dnguyen-private-pypi
