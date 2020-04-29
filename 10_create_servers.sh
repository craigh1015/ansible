gcloud compute instances create ansible db1 db2 \
  --project ${PROJECT_ID} \
  --zone ${ZONE} \
  --machine-type=f1-micro \
  --image-project=ubuntu-os-cloud \
  --image=ubuntu-1804-bionic-v20200414 \
  --service-account ansible-sa@inner-replica-274702.iam.gserviceaccount.com

gcloud compute instances add-metadata db1 --metadata-from-file ssh-keys=../.ssh/ansible.pub
gcloud compute instances add-metadata db2 --metadata-from-file ssh-keys=../.ssh/ansible.pub