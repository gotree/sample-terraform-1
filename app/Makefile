# 使い方
# push: Docker イメージを作成して ECR へ push する
# update: Kubernetes 環境を作成、または最新の Docker イメージを反映する。
# up: push と update を実行する。すなわちイメージ作成から Kubernetes 反映まで行う。
# history: Kubernetes の履歴を確認する。
# undo: １つ前のバージョンに戻す。もう一度実行すると最新バージョンに戻す。
# desc: さまざまな情報を出力。

# get argument(profile)
ifdef profile
	PROFILE=$(profile)
else
	PROFILE=dev-bikini-us-east-1
endif
# get argument(region)
ifdef region
	REGION=$(region)
else
	REGION=us-east-1
endif


IMAGE_NAME=app_web
DEPLOYMENT=app1

all:

push:
	./bin/push.sh $(PROFILE) $(REGION)
	
update:
	kubectl apply -f k8s

up: push update

history:
	kubectl rollout history deployment ${DEPLOYMENT}

undo:
	kubectl rollout undo deployment ${DEPLOYMENT}
	
desc:
	kubectl get svc
	@echo "================================================================="
	kubectl describe deployment ${DEPLOYMENT}
