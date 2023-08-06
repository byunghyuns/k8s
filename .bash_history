sudo passwd root
su
clera
clear
sudo swapoff -a && sudo sed -i '/swap/s/^/#/' /etc/fstab
sudo cat /etc/sudoers
sudo vi /etc/sudoers
sudo swapoff -a && sudo sed -i '/swap/s/^/#/' /etc/fstab
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo docker version
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl enable containerd
sudo systemctl start containerd
sudo mkdir -p /etc/docker
cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

sudo systemctl daemon-reload
sudo systemctl restart docker
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
br_netfilter
EOF

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sudo sysctl --system
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo rm /usr/share/keyrings/kubernetes-archive-keyring.gpg
sudo apt-get install -y apt-transport-https ca-certificates curl
ps aux | grep dpkg
sudo kill -9 26025
sudo apt-get install -y apt-transport-https ca-certificates curl
ps aux | grep dpkg
sudo kill -9 29862
sudo kill -9 28158
ps aux | grep dpkg
sudo kill -9 35240
ps aux | grep dpkg
sudo kill -9 36530
sudo apt-get install -y apt-transport-https ca-certificates curl
ps aux | grep dpkg
init 6
sudo init 6
sudo apt update
ip a
sudo apt install -y openssh-server
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo rm /usr/share/keyrings/kubernetes-archive-keyring.gpg
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/kubernetes-archive-keyring.gpg
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
sudo systemctl daemon-reload
sudo systemctl restart kubelet
sudo init 0
kubectl get node
kubectl get nodes
kubectl cluster-info
sudo kubeadm init
sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd
sudo kubeadm init
ip a
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
kubectl get node
sudo rm /etc/containerd/config.toml
kubectl get node
sudo rm /etc/containerd/config.toml
kubectl get node
init 0
sudo init 0
ip a
ll
cd /etc/netplan
ll
cat 01-network-manager-all.yaml 
ifconfig
