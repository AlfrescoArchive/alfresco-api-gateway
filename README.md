# alfresco-api-gateway
[![Join the chat at https://gitter.im/Activiti/Activiti7](https://badges.gitter.im/Activiti/Activiti7.svg)](https://gitter.im/Activiti/Activiti7?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![Travis Status](https://travis-ci.org/Alfresco/alfresco-api-gateway.svg?branch=master)](https://travis-ci.org/Alfresco/alfresco-api-gateway) [![ASL 2.0](https://img.shields.io/hexpm/l/plug.svg)](https://github.com/Alfresco/alfresco-api-gateway/blob/master/LICENSE.txt) [![CLA assistant](https://cla-assistant.io/readme/badge/Alfresco/alfresco-api-gateway)](https://cla-assistant.io/Alfresco/alfresco-api-gateway) [![Docker Build Status](https://img.shields.io/docker/build/alfresco/alfresco-api-gateway.svg)](https://hub.docker.com/r/alfresco/alfresco-api-gateway/)

Alfresco API Gateway

This project is using the Spring Cloud Gateway project along the Spring Cloud Kubernetes project to create dynamic routes
to the services registered inside a Kubernetes namespace. 

The main goal of this project is to provide a single entrypoint for your client applications to interact with a set of backend services.

Currently spring.cloud.gateway classes are overridden in the project due to these issues:

https://github.com/spring-cloud/spring-cloud-gateway/issues/229
and
https://github.com/spring-cloud/spring-cloud-gateway/issues/314

Currently discovery of routes only works on startup and if a new app is added then a POST to /application/gateway/refresh is necessary. It's not clear how to resolve this.

Discovery is also limited to the current namespace.
