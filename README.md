# FlaskWeb_onKubernetes
In this project shows you how to deploy our Flask based web on Kubernetes.

## Steps

### 1. Use an example 

From https://github.com/edwardchang0112/FlaskBasedWeb_RecommendationSystem_Popupshop, we have already built a Flask web, which involves pretained ML model and the connection to AWS RDS database(MSSQL) to extract user's history data and give users the customized recommendation (e.g. skincare solution in this example).

![image](https://github.com/edwardchang0112/FlaskWeb_onKubernetes/blob/master/MainPage01.png)

### 2. Dockerize the project:

Make modification on Dockerfile

$ docker build . -t popupshop_flask_web (give a name you want)

### 3. Deployment on Kubernetes:
(a) Create a .yaml, which in this project is kubernetes.yaml. Remember that change all the ports and names to fit your application. 

$ kubectl apply -f k8s.yaml

Finish the deployment.

(b) Check whether all deployment work correctly

$ kubectl get all

(c) Check ip

$ minikube service your-service --url

(d) Type the url that just get, then it is done!
