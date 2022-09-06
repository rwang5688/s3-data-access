#!/bin/sh
export $(printf "AWS_ACCESS_KEY_ID=%s AWS_SECRET_ACCESS_KEY=%s AWS_SESSION_TOKEN=%s" \
$(aws sts assume-role \
--role-arn arn:aws:iam::123456789012:role/stroage-user-role \
--role-session-name storage-user-role-session \
--query "Credentials.[AccessKeyId,SecretAccessKey,SessionToken]" \
--output text))
