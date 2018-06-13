# Based on rails:onbuild - https://github.com/docker-library/rails/blob/9df9b5e6b1519faf22e1565c2caaebf7cc1c665b/onbuild/Dockerfile
FROM ruby:2.5.0

ENV DEBIAN_FRONTEND noninteractive
ARG APP_USER_ID=1000

# Install apt-utils to escape warnings
RUN apt-get update \
  && apt-get install -y apt-utils --no-install-recommends \
  && rm -rf /var/lib/apt/lists/

# Add NodeJS repo
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

# JS runtime (nodejs)
RUN apt-get update \
    && apt-get install -y nodejs --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

ENV DEBIAN_FRONTEND teletype

ENV APP_HOME="/app"
ENV GEM_HOME="/app/vendor/bundle/${RUBY_MAJOR}"
ENV BUNDLE_PATH="$GEM_HOME" \
  BUNDLE_BIN="$GEM_HOME/bin" \
  BUNDLE_SILENCE_ROOT_WARNING=1 \
  BUNDLE_APP_CONFIG="$GEM_HOME"
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" \
  && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
ENV PATH="/app/bin:${PATH}"

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

EXPOSE 4000

# Get some non-root user to run from
RUN useradd -m -u "${APP_USER_ID}" user
USER user

CMD /bin/bash
