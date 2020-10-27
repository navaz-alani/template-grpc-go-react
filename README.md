# `<project-name>` Template

This template provides the boilerplate code for a project using the following
architecture:

* Golang backend (service `go-server`)
* Frontend with ReactJS, TS & NextJS (service `frontend`)
* gRPC proxy server (service `grpc_proxy`)

To initialize this template, run `chmod +x ./init-template.sh` and then
`./init-template.sh` and set the project name. Relevant files will be filled
with the given filename.

For the `go-server`, one only needs to define the protobuf service and messages
which can be compiled for Go and TS using `make grpc-go` and `grpc-ts`
respectively. Then, implement the definitions and then a function called
`NewServer()` which returns an instance of the service implementation.

The frontend code is ready to serve with a "Hello world" project.
