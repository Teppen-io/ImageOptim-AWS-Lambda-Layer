# ImageOptim AWS Lambda Layer

Spits out a zipfile ready to be uploaded as a Lambda layer

## Usage

### build (requires docker)

```shell
./build.sh
```

### upload

Upload the resulting layer.zip to AWS Lambda

## Gems included

```Gemfile
gem 'image_optim'
gem 'image_optim_pack'
```

## Credit

BranLiang [BranLiang/aws-ruby-lambda-layer](https://github.com/BranLiang/aws-ruby-lambda-layer)
