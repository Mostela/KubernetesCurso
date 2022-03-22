FROM fluentd:v1.4-debian-2
USER root
RUN apt update && apt-get install -y build-essential libssl-dev
RUN gem install eventmachine fluent-plugin-twitter
COPY config/fluent.conf /fluentd/etc/fluent.conf
#USER fluent