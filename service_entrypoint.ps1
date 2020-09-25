Start-Process -FilePath "python" -ArgumentList @("./service/main.py") -WorkingDirectory $pwd -RedirectStandardError './serv-err.txt' -RedirectStandardOutput './serv-out.txt'

$serviceName = "service$env:ServiceId"
.\envoy-static.exe --config-path .\envoy-config\envoy-service-config.yaml -l debug --service-cluster $serviceName