SHELL := /bin/bash

.PHONY: help
.DEFAULT_GOAL := help

# Load environment file if exists
ENV_FILE := .env
ifeq ($(filter $(MAKECMDGOALS),config clean),)
	ifneq ($(strip $(wildcard $(ENV_FILE))),)
		ifneq ($(MAKECMDGOALS),config)
			include $(ENV_FILE)
			export
		endif
	endif
endif

help: ## 💬 This help message :)
	@grep -E '[a-zA-Z_-]+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-23s\033[0m %s\n", $$1, $$2}'

init: ## 🔨 Create new virtual environment and install dependencies
	@echo -e "----\e[34mStart $@\e[0m----" || true
	@cd app-object-detection && python -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt
	@echo -e "----\e[34mCompleted\e[0m----"

run: ## 🚀 Run the application
	@echo -e "----\e[34mStart $@\e[0m----" || true
	@cd app-object-detection && source .venv/bin/activate && python main.py
	@echo -e "----\e[34mCompleted\e[0m----"

download-model: ## 📥 Download model
	@echo -e "----\e[34mStart $@\e[0m----" || true
	@cd app-object-detection && curl -OL https://github.com/OlafenwaMoses/ImageAI/releases/download/3.0.0-pretrained/retinanet_resnet50_fpn_coco-eeacb38b.pth
	@echo -e "----\e[34mCompleted\e[0m----"

clean: ## 🧹 Remove virtual environment
	@echo -e "----\e[34mStart $@\e[0m----" || true
	@cd app-object-detection && rm -rf .venv
	@echo -e "----\e[34mCompleted\e[0m----"