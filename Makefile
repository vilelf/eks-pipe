install_eksctl:
	curl --silent --location "https://github.com/eksctl-io/eksctl/releases/download/v0.147.0/eksctl_Linux_amd64.tar.gz" | tar xz -C /tmp
	mv /tmp/eksctl /usr/local/bin

install_helm:
	export VERIFY_CHECKSUM=false
	curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

setup_aws:
	export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
	export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}
	export AWS_DEFAULT_REGION=us-east-1

create_eks:
	eksctl create cluster -f cluster.yaml
