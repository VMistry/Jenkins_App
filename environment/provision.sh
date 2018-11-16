# # Install all the neccessary packages for Ruby.
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install vagrant -y
sudo apt-get install virtualbox -y

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.5.3
rvm use 2.5.3 --default
gem install bundler

#Install Rails - NodeApp then Rails
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

gem install rails -v 5.2.1

#Install PostgresSQL
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install postgresql-common -y
sudo apt-get install postgresql-9.5 libpq-dev -y

sudo -u postgres createuser vmuser -s

# sudo chmod 755 /var/lib/jenkins/secrets
# sudo chmod 755 /var/lib/jenkins/secrets/initialAdminPassword
# cat /var/lib/jenkins/secrets/initialAdminPassword
# ssh-keygen
# cat ~/.ssh/id_rsa
# cat ~/.ssh/id_rsa.pub
