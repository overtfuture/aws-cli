# AWS CLi

Self contained aws-cli Docker container

## Install

Clone and run `install.sh` to symlink `aws.sh` to `usr/local/bin/aws`

Place an env file in `$HOME/.config/aws/env` to save your env variables:

```bash
AWS_ACCESS_KEY_ID=XXXXXXXXXXXX
AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXX
AWS_DEFAULT_REGION=us-east-1
```

Run `aws`

## Alias

```bash
export AWS_ACCESS_KEY_ID="<id>"
export AWS_SECRET_ACCESS_KEY="<key>"
export AWS_DEFAULT_REGION="<region>"
```

```bash
alias aws='docker run --rm -t $(tty &>/dev/null && echo "-i") -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" -v "$(pwd):/project" overtfuture/aws-cli'
```
