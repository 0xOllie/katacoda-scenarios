flag1="flag{happy_files}";
flag2="flag{secret_files}";
flag3="flag{fido_the_dog}";
flag4="flag{tar_untar_sticky}";
flag5="flag{what_a_cron_job}";
flag7="flag{cool_shell}";
flag8="flag{shadows_reflect}";
# Challenge 1 - Normal files
echo $flag1 > ~/welcome
# Challenge 2 - Hidden files
echo $flag2 > ~/.here
# Challenge 3 - Searching for files
echo $flag3 > /var/log/flag.log
# Challenge 4 - Tar is sticky
echo $flag4 > ~/flag4.txt
tar cfzv ~/sticky.tar.gz ~/flag4.txt
rm ~/flag4.txt
# Challenge 5 - I got a new job
crontab -l | { cat; echo "* * * * * echo my_JOB_is_to_hide_flags >> /var/log/syslog"; } | crontab -
crontab -l | { cat; echo "#" $flag5; } | crontab -
# Challenge 6 - Hey man checkout my code
#git clone https://github.com/oliverjcollins/flag
# Challenge 7 - Let's get scripty
echo '#!/bin/bash
echo "export PS1='root@teaching-server~~ '"
echo echo Run me ^^^
# $flag7
' > ~/ch7.sh

# Challenge 8 - There's somebody else here
useradd oliver -p $flag8
# Hide our challenges from the user
history -c
rm /tmp/*