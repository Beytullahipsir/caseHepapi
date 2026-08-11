## README FILE FOR CaseHepapi 
In this case first I mention the chart directory

webapp/
├── Chart.yaml
├── values.yaml
├── templates/
│   ├── *configmap.yaml      # Shared config can be used (I dont have)
│   ├── *secrets.yaml        # Shared secrets can be used (I dont have)
└── charts/
    ├── flask-mongo/         # has only flask image (has parent chart before so the name is confusing)
    │       ├── webapp-deployment.yaml   
    │       ├── webapp-nodePort.yaml     # become clusterIP after using ingress
    │       ├── webapp-configMap.yaml   
    │       └── ingress.yaml         
    ├── mongodb/                
            ├── mongodb-deployment.yaml  
            ├── mongodb-clusterIP.yaml   
            ├── mongodb-secret.yaml     
            ├── pvc.yaml                
            └── storage.yaml           

to create this chart I used mainly the following:
https://oneuptime.com/blog/post/2026-01-17-helm-umbrella-charts-multi-service/view


I download directly the mongodb image then containerize it myself.
I build an image (I call it webapp) from app.py. 


