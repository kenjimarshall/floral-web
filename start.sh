#!/usr/bin/env bash
bundle exec jekyll clean
# _config_docker.yml has dev-specific overrides
bundle exec jekyll build --config _config.yml,_config_docker.yml --watch & \
bundle exec jekyll serve -H 0.0.0.0 --skip-initial-build --no-watch
