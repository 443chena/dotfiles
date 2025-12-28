#!/bin/bash
set -euo pipefail
# ~/bin/history_scrub.sh

hist="${HISTFILE:-$HOME/.zsh_history}"
ts="$(date +%Y%m%d_%H%M%S)"
bak="${hist}.bak.${ts}"

cp -a "$hist" "$bak"

# Patterns: common token headers, bearer tokens, AWS keys, private keys pasted, basic auth
patterns=(
  'Authorization:'
  'Bearer '
  'aws_secret_access_key'
  'AWS_SECRET_ACCESS_KEY'
  'AKIA[0-9A-Z]{16}'
  'BEGIN (RSA|OPENSSH|EC|DSA) PRIVATE KEY'
  '--password'
  'password='
  'x-api-key'
  'client_secret'
)

tmp="$(mktemp)"
cp -a "$hist" "$tmp"

for p in "${patterns[@]}"; do
  # Use grep -Ev to drop matching lines
  grep -Eav "$p" "$tmp" > "${tmp}.new" || true
  mv "${tmp}.new" "$tmp"
done

mv "$tmp" "$hist"
chmod 600 "$hist"

echo "Scrubbed: $hist"
echo "Backup:   $bak"
