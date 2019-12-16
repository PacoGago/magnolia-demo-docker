FROM tomcat:7.0.96-jdk8-openjdk

ARG version=6.1.3

ENV CATALINA_OPTS="-Xmx2048m -Dmagnolia.update.auto=true"

WORKDIR /app

RUN wget https://nexus.magnolia-cms.com/content/repositories/magnolia.public.releases/info/magnolia/bundle/magnolia-community-demo-webapp/$version/magnolia-community-demo-webapp-$version.war && \
    unzip magnolia-community-demo-webapp-$version.war -d /usr/local/tomcat/webapps/magnoliaAuthor

HEALTHCHECK \
  --interval=20s \
  --timeout=3s \
  --start-period=400s \
  CMD curl -f http://localhost:8080/magnoliaAuthor || exit 1
  
