serv=serv6

ssh-copy-id -i .ssh/id_serv6.pub $serv
scp .bash_aliases $serv:

# ccp4 docs on machine
ssh $serv
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
pip install mkdocs pymdown-extensions python-markdown-math markdown-meta-extension

#ED(gcc and g++ need be installed)
scp ~/.ssh/id_rsa_git $serv:.ssh
cd $ED
git clone https://www.github.com/ccp4/electron-diffraction.git
cd

##ED tests
ssh $serv "mkdir bin"
sudo apt-get install pandoc
pip install IPython wheel pytest pytest-html pytest-cov tarikDrevonUtils
scp EDtests.sh EDtest_tab.sh ptest.sh ccp4tab.sh $serv:bin
printf "
*/60 * * * * /home/lii26466/bin/ccp4tab.sh\n
0 1 * * * /home/lii26466/bin/EDtests.sh\ng
#26 11 * * * /home/lii26466/bin/EDtests.sh #test_continuous.py
" >> /var/spool/cron/crontabs/lii26466

## ED documentation
pip3 install sphinx
