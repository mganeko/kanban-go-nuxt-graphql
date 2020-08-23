#!/bin/sh

# -- build server --
cd server
go build server.go
cd ..


# -- build frontend --
cd front
npm run build
cd ..

