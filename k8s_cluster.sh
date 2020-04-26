# Install Docker
curl -fsSL https://get.docker.com | bash

# Install Kubernetes
apt-get update && apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubelet kubeadm kubectl


docker info | grep -i cgroup
sed -i "s/cgroup-driver=systemd/cgroup-driver=cgroupfs/g" /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
systemctl daemon-reload
systemctl restart kubelet
## https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/

# Desligando a memoria virtual do linux
swapoff -a

# Comentar a swapoff para nao ligar mais - Em breve
# vim /etc/fstab


