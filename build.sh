#!/bin/sh

# -- build server --
cd server
go build -o kanbanserver server.go
cd ..


# -- build frontend --
cd front
npm run build
cd ..

