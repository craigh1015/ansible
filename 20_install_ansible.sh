# Copy the ansible installation file
gcloud compute scp --recurse site ansible@ansible:.

# Execute the ansible installation file
gcloud compute ssh ansible@ansible -- './site/bootstrap.sh'