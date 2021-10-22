# Auto-hashcat-cracker-pcap-
WIP! Not all features are finished.   
 
The idea behind the script is to automate and simplify the process of cracking captured handshakes.
  1. Combine all the capture files into one cap file
  2. Convert the new capture file into a format that can be used with hashcat. This step uses cap2hccapx, which is part of hashcat utils
  3. Start cracking though a simple menu
 
**TODO**  
  implement hashcat rule options  
  implement wordlist options  

Setup:  
  change directory/file variables   
  hashcat-utils folder is moved to the hashcat folder   
  handshakes folder is already set up  
  
  
I find this WPA wordlist to work pretty well  
(https://github.com/berzerk0/Probable-Wordlists/tree/master/Real-Passwords/WPA-Length)

