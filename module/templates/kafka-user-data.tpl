#!/bin/bash -x

export AWS_DEFAULT_REGION='${AWS_REGION}'
export AWS_REGION='${AWS_REGION}'
export DEPLOY_UUID='${DEPLOY_UUID}'
export MYID='${MYID}'
export NIC_IP='${NIC_IP}'
export SERVICE_NAME='${SERVICE_NAME}'
export TAG_KEY='${TAG_KEY}'
export ZOOKEEPER_IPS='${ZOOKEEPER_IPS}'
export ELS_HOSTNAME='${ELS_HOSTNAME}'
export S3_CERTS_BUCKET='${S3_CERTS_BUCKET}'
export SECURITY_SCRAM_DYNAMODB_TABLE_NAME='${SECURITY_SCRAM_DYNAMODB_TABLE_NAME}'
export DEPLOYMENT_REGION='${DEPLOYMENT_REGION}'
export SECURITY_SCRAM_CALLBACK_HANDLER='${SECURITY_SCRAM_CALLBACK_HANDLER}'


#
# ENTER HERE YOUR CUSTOM CONFIGURATION OPTIONS FOR KAFKA
# PREFIX: KFKCFG_
#

export KFKCFG_ADVERTISED_HOST_NAME='${HOST_NAME}'
export KFKCFG_SSL_ENABLED_PROTOCOLS=TLSv1.2
export KFKCFG_LISTENERS='${KFKCFG_LISTENERS}'
export KFKCFG_ADVERTISED_LISTENERS='${KFKCFG_ADVERTISED_LISTENERS}'
export KFKCFG_SSL_CLIENT_AUTH=required
export KFKCFG_SSL_KEYSTORE_PASSWORD='${KFKCFG_SSL_KEYSTORE_PASSWORD}'
export KFKCFG_SSL_KEY_PASSWORD='${KFKCFG_SSL_KEY_PASSWORD}'
export KFKCFG_SUPER_USERS='${KFKCFG_SUPER_USERS}'
export KFKCFG_MESSAGE_MAX_BYTES='${KFKCFG_MESSAGE_MAX_BYTES}'
export KFKCFG_QUOTA_CONSUMER_DEFAULT='${KFKCFG_QUOTA_CONSUMER_DEFAULT}'
export KFKCFG_QUOTA_PRODUCER_DEFAULT='${KFKCFG_QUOTA_PRODUCER_DEFAULT}'
export KFKCFG_SECURITY_INTER_BROKER_PROTOCOL='${KFKCFG_SECURITY_INTER_BROKER_PROTOCOL}'
export KFKCFG_MIN_INSYNC_REPLICAS='${KFKCFG_MIN_INSYNC_REPLICAS}'
export KFKCFG_AUTO_CREATE_TOPICS_ENABLE='${KFKCFG_AUTO_CREATE_TOPICS_ENABLE}'
export KFKCFG_AUTHORIZER_CLASS_NAME='${KFKCFG_AUTHORIZER_CLASS_NAME}'
export KFKCFG_COMPRESSION_TYPE='${KFKCFG_COMPRESSION_TYPE}'
export KFKCFG_ZOOKEEPER_SASL_ENABLED='${KFKCFG_ZOOKEEPER_SASL_ENABLED}'
export KFKCFG_SASL_ENABLED_MECHANISMS='${KFKCFG_SASL_ENABLED_MECHANISMS}'
export KFKCFG_DELETE_TOPIC_ENABLE='${KFKCFG_DELETE_TOPIC_ENABLE}'
export KFKCFG_INTER_BROKER_PROTOCOL_VERSION='${KFKCFG_INTER_BROKER_PROTOCOL_VERSION}'



# Bootstrap node
# check output in /var/log/cloud-init-output.log
/bootstrap/bootstrap.sh || shutdown -h now