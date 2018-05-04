# mailtrain [![Docker Pulls](https://img.shields.io/docker/pulls/heycar/mailtrain.svg)](https://hub.docker.com/r/heycar/mailtrain/) [![Github Tag](https://img.shields.io/github/tag/hey-car/mailtrain.svg)](https://github.com/hey-car/mailtrain) [![Github Tag](https://img.shields.io/github/license/hey-car/mailtrain.svg)](https://github.com/hey-car/mailtrain)
> Minimalist mailtrain docker image

## Local

In order to run locally, you can:

```
make run
```

mailtrain will be available at `127.0.0.1:7000`.

## Contributing

Remember to update the tag in the `Makefile`, use the same tag for git.

Then, run: `make release`, which will `build` and `push` the new docker image to dockerhub.
