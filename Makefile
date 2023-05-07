include ./submodules/core/deployments/account-service/.env

up:
	docker compose up --build

test:
	docker compose -f ./docker-compose.yaml -f ./docker-compose.test.yaml up $(SERVICE_NAME) --exit-code-from $(SERVICE_NAME) --build