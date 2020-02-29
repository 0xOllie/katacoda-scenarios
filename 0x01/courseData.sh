flag1="flag{1}";
flag2="flag{2}";
flag3="flag{3}";
flag4="flag{4}";
flag5="flag{5}";
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
# Hide our challenges from the user
history -c