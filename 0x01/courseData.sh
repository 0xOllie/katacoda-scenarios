flag1="flag{cad340fc-aa55-42b5-a092-d9f3bc59b42b}";
flag2="flag{080119a4-b226-4fac-92e8-949ef3a1248a}";
flag3="flag{a0643b70-57c5-469d-af07-9abbee327fda}";
flag4="flag{e28e2400-c00a-4a8f-b4a6-d00ccbfa4773}";
flag5="flag{c5e9358b-029e-49d3-8dfb-fc7817214198}";
flag7="flag{a16a8008-5703-428a-a4b0-82a1875856f0}";
flag8="flag{fbdf885e-f956-45dc-833b-74c2dad2a094}";
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
echo "There seems to be a syntax error in this script, try and solve it" 
echo export PS1="root@teaching-server $ " >> ~/ch7.sh
echo $flag7 >> ch7.sh
# Challenge 8 - There's somebody else here
useradd oliver -p $flag8
# Hide our challenges from the user
history -c