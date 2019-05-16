sudo yum install -y epel-release
sudo yum update -y

sudo yum install -y java-1.8.0-openjdk.x86_64 wget git
sudo cp /etc/profile /etc/profile_backup
echo 'export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk' | sudo tee -a /etc/profile
echo 'export JRE_HOME=/usr/lib/jvm/jre' | sudo tee -a /etc/profile
source /etc/profile
echo $JAVA_HOME

sudo curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
sudo yum install -y nodejs


cd ~ 
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install -y jenkins
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

#sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp
#sudo firewall-cmd --reload