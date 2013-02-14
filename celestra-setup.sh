# Download RVM
echo "Downloading rvm..."
curl -L https://get.rvm.io | bash -s stable > /dev/null

# Setup the proper path for use on Ubuntu
echo "Setting up proper env"
cp .bashrc tmp_bash_rc
cat tmp_bash_rc .bash_profile > .bashrc
rm tmp_bash_rc 

# Download and install the proper Ruby
echo "Downloading and installing Ruby"
rvm install 1.9.2-p180
source .bashrc
rvm alias create default 1.9.2-p180

echo "Installing Bundler"
gem install bundler
source .bashrc

# Download Staffz serialport
git clone git://github.com/staffz/em-serialport.git
cd em-serialport
gem build em-serialport.gemspec
gem install em-serialport-staffz
cd ..

# Download Celestra Codebase 
echo "Downloading Celestra codebase..."
git clone git@github.com:buffpojken/Celestra.git

# Installing dependencies
echo "Installing Celestra dependencies" 
cd Celestra/Helm
bundle install
cd ../..

# Download proper startscreen
cd Downloads
wget http://cl.ly/image/0t1N1t2Z0U41/Start2.png
fbsetbg /home/sysad/Downloads/Start2.png


git config --global user.name "buffpojken"
git config --global user.email daniel@sykewarrior.com

cd ..
cp CelestraConfig/lastwallpaper .fluxbox/lastwallpaper
cp CelestraConfig/overlay .fluxbox/overlay
cp CelestraConfig/startup .fluxbox/startup
