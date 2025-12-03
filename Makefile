update:
	curl https://mkcert.org/generate/ | ./strip-non-ascii > certifi/cacert.pem
	echo "" >> certifi/cacert.pem
	echo "# septnet CA" >> certifi/cacert.pem
	cat septnet-ca.crt  >> certifi/cacert.pem

build:
	python3.12 -m build
# 	twine upload --skip-existing --sign dist/*
