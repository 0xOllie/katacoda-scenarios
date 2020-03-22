# install dependancies
sudo apt install p7zip-full

# create folder
mkdir hashcat
cd hashcat

# Download Hashcat
wget https://hashcat.net/files/hashcat-5.1.0.7z

# Let the user know they should be using part 2 docs
echo "Hey if you are in this folder you should be using the Learning to Meow with Hashcat documentation, this is for part 2 of the CTF" >> README

# Write a hash to a file
echo -n Welcome | md5sum | tr -d " -" >> hash.txt

# Hide our challenges from the user
history -c
rm /tmp/*