FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7
MAINTAINER Akram Ben Aissi <akram@redhat.com>

RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - && \
    curl https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo && \
    yum -y install nodejs yarn

RUN yum install -y apr-utils
