NAME = sdellenb/ldap-account-manager
LAM_VERSION = 6.5
UID = 2030
GID = 2030

.PHONY: build build-nocache test tag-latest push push-latest release git-tag-version

build:
	docker build --build-arg LAM_VERSION=$(LAM_VERSION) --build-arg LAM_USER_UID=$(UID) --build-arg LAM_USER_GID=$(GID) -t $(NAME):$(LAM_VERSION) --rm image

build-nocache:
	docker build --build-arg LAM_VERSION=$(LAM_VERSION) -t $(NAME):$(LAM_VERSION) --no-cache --rm image

#test:
#	env NAME=$(NAME) VERSION=$(VERSION) bats test/test.bats

tag-latest:
	docker tag $(NAME):$(LAM_VERSION) $(NAME):latest

#push:
#	docker push $(NAME):$(VERSION)

#push-latest:
#	docker push $(NAME):latest

#release: build test tag-latest push push-latest

#git-tag-version: release
#	git tag -a v$(VERSION) -m "v$(VERSION)"
#	git push origin v$(VERSION)
