install_eksctl:
	curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/v0.147.0/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

install_helm:
	export VERIFY_CHECKSUM=false
	curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
