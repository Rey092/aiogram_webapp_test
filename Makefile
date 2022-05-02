#!make
ENV_FILE_CHECK = .env
ifneq ("$(wildcard $(ENV_FILE_CHECK))","")
	include .env
	export $(shell sed 's/=.*//' .env)
endif

run:
	python main.py

install:
	pip install -r requirements.txt