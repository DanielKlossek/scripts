# scripts
some useful scripts

## notify-ip-change.sh
This script sends slack messages if the hosts public IP changes.

### Setup
- Set `slackHook` as your Slack Hook
- Run `export MY_PUBLIC_IP=$(curl icanhazip.com)` on the host's startup