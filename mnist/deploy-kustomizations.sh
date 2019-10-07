kubectl apply -f pvc.yaml
for app in training/local serving/local front; do
    kustomize build $app | kubectl apply -f -
done
