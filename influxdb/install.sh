docker build -t influxdb ./influxdb/infImage
kubectl apply -f influxdb/influxdb.yaml
