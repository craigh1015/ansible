export PROJECT_ID="inner-replica-274702"
export ZONE="us-west1-a"
export SA_ACCOUNT="ansible-sa"
export ACCOUNT=$(gcloud info --format='value(config.account)')

gcloud config set project ${PROJECT_ID}
gcloud config set compute/zone ${ZONE}

kill $(pgrep ssh-agent) 2> /dev/null
eval $(ssh-agent)
ssh-add ~/.ssh/ansible

echo ${PROJECT_ID} ${ZONE}