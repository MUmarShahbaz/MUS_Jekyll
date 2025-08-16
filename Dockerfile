FROM ruby:3.3-bookworm

# Image Spec
LABEL org.opencontainers.image.title="MUS_Jekyll"
LABEL org.opencontainers.image.description="Base Image for Jekyll Websites with NodeJS"
LABEL org.opencontainers.image.authors="M. Umar Shahbaz <m.umarshahbaz.2007@gmail.com>"
LABEL org.opencontainers.image.source="https://github.com/MUmarShahbaz/MUS_Jekyll"
LABEL org.opencontainers.image.version="1.0.0"
LABEL org.opencontainers.image.licenses="MIT"

RUN apt-get update
RUN apt-get install --yes \
    curl \
    libjpeg-dev \
    webp \
    libpng-dev \
    libavif-dev \
    libheif-dev \
    libopenjpip7 \
    imagemagick \
    libvips-tools \
    build-essential

# Install NodeJS
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Bundler 2.6.9
RUN gem install bundler -v 2.6.9

# Install Jekyll 4.4.1
RUN gem install jekyll -v 4.4.1

# Install PurgeCSS v7.0.2
RUN npm install -g purgecss@7.0.2