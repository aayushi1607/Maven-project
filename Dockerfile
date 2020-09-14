FROM alpine:edge
MAINTAINER javaonfly
RUN apk add --no-cache openjdk8
COPY ./target/web-thymeleaf-1.0.jar /opt/lib/
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/lib/web-thymeleaf-1.0.jar"]
EXPOSE 8090


