<div align="center"><img width="300" height="300" alt="image" src="https://github.com/user-attachments/assets/01764d3d-50d5-4246-9401-bacec5cec590" /></div>

# MUS_Jekyll

A Docker base image for building Jekyll websites with Node.js, optimized for modern image formats and asset processing.

## Features

- Based on `ruby:3.3-bookworm`
- Includes Node.js 20.x
- Pre-installed Bundler (`2.6.9`) and Jekyll (`4.4.1`)
- PurgeCSS (`7.0.2`) for CSS optimization
- Image processing libraries: JPEG, PNG, WebP, AVIF, HEIF, OpenJPIP, ImageMagick, libvips
- Build tools for native extensions

## Usage

### Pull from Docker Hub
To use this image as a base for your own Dockerfile:

```dockerfile
FROM mumarshahbaz/jekyll
# ...your custom instructions ...
```

See image on [Docker Hub](https://hub.docker.com/repository/docker/mumarshahbaz/jekyll)

### Pull from GitHub Containers Registry
To use this image as a base for your own Dockerfile:

```dockerfile
FROM ghcr.io/mumarshahbaz/mus_jekyll:1.0.0
# ...your custom instructions...
```

See image on [GitHub Containers Registry](https://github.com/MUmarShahbaz/MUS_Jekyll/pkgs/container/mus_jekyll)

## Requests

- Create a new issue
- Request a certain plugin/package to come pre-installed
- Describe why it's better to be pre-installed compared to manual installation by user.

## License

This project is licensed under the MIT License. See [LICENSE.md](LICENSE.md) for details.