#!bin/bash

#Generate BuildSHA using GIT_SHA

SHELL := /bin/bash
GIT_SHA := $(shell git rev-parse --short HEAD)

#make
build:
   go build -ldflags "-X main.BuildSHA ${GIT_SHA}"

# make linux
linux:
   GOOS=linux GOARCH=amd64 go build -ldflags "-X main.BuildSHA ${GIT_SHA}"
