# FluskWebonKubernetes
In this project, we try to deploy our flusk dased web on Kubernetes.

## Steps
1. Use the example from https://github.com/edwardchang0112/FluskBasedWeb_RecommendationSystem_Popupshop, we have already built a flusk web, which involves pretained ML model and the connection to AWS RDS database(MSSQL) to extract user's history data and give users the customized recommendation (e.g. skincare solution in this example).

![image]()

2. Dockerize the project:
(a) Make modification on Dockerfile
$ docker build . -t popupshop_flusk_web (give a name you want)

(b) Create a .yaml, which in this project is k8s.yaml. Remember that change all the port to fit your application. 
$ kubectl apply -f k8s.yaml
Finish the deployment.

(c) Check whether all deployment work correctly
$ kubectl get all

(d) Check ip
$ minikube service your-service --url

(e) Type the url that just get, then it is done!
