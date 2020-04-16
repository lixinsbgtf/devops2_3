#################
# Only if MacOS #
#################

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/darwin/amd64/kubectl

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl

#################
# Only if Linux #
#################

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl

###################
# Only if Windows #
###################

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/windows/amd64/kubectl

############
# Everyone #
############

kubectl version

kubectl version --output=yaml

#################
# Only if MacOS #
#################

brew install minikube

#################
# Only if Linux #
#################

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

############
# Everyone #
############

minikube version

minikube start --vm-driver=virtualbox

minikube status

minikube dashboard

minikube docker-env

eval $(minikube docker-env)

docker container ls

minikube ssh

docker container ls

exit

kubectl config current-context

kubectl get nodes

minikube stop

minikube start

minikube delete

minikube start \
    --vm-driver=virtualbox \
    --kubernetes-version="v1.9.4"

kubectl version --output=yaml

minikube delete
