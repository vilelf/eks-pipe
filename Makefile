install_eksctl:
	curl --silent --location "https://github.com/eksctl-io/eksctl/releases/download/v0.147.0/eksctl_Linux_amd64.tar.gz" | tar xz -C /tmp
	mv eksctl /usr/local/bin

install_helm:
	export VERIFY_CHECKSUM=false
	curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

create_eks:
	eksctl create cluster -f cluster.yaml
