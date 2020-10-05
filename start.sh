REGION=asia-northeast1-a
CLUSTER_NAME=cluster
SHELL_INSTALL_ON_CLUSTER=gs://
gcloud dataproc clusters create ${CLUSTER_NAME} \
    --region ${REGION} \
    --metadata 'CONDA_PACKAGES="python==3.5"' \
    --scopes cloud-platform \
    --worker-machine-type=n2-standard-4 \
    --master-machine-type=n2-standard-2 \
    --initialization-actions gs://goog-dataproc-initialization-actions-${REGION}/conda/bootstrap-conda.sh,gs://goog-dataproc-initialization-actions-${REGION}/conda/install-conda-env.sh,gs://goog-dataproc-initialization-actions-${REGION}/datalab/datalab.sh,${SHELL_INSTALL_ON_CLUSTER} \
    --zone=asia-northeast1-a