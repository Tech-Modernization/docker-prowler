FROM python

RUN apt-get update && apt-get upgrade -y \
	&& pip install awscli ansi2html

RUN curl -sL https://github.com/toniblyx/prowler/archive/master.tar.gz | tar xz \
	&& mv prowler-master /prowler

WORKDIR /prowler
