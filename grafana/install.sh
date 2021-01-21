docker build -t grafana ./grafana/grafanaImage
kubectl apply -f ./grafana/grafana.yaml
