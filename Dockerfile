FROM php:8.0-apache

# Packages
RUN apt-get update && apt-get install --no-install-recommends -y \
  curl \
  vim \
  git \
  zip \
  unzip \
  jq \
  && rm -rf /var/lib/apt/lists/*;

# Composer
RUN curl -sS https://getcomposer.org/installer | php && \
  mv composer.phar /usr/local/bin/composer

WORKDIR /root/.composer

COPY composer.json /root/.composer/composer.json
