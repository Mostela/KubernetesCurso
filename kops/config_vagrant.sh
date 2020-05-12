# Atuliza maquina
sudo apt-get update

# Install Kops
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops

# Install Pip
sudo apt-get install -y python-pip

# Instala awscli
sudo pip install awscli

echo "Agora rode  -- aws configure -- para adicionar as credenciais"
