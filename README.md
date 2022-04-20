# barracuda-blacklist-remover
This application is designed to remove IP addresses from the Barracuda backlist in bulk

Read in from a file called "ip.txt" which should be a simple list of IP addresses, one per line.  
A sample file is included for your reference.  Be sure to remove all extra spaces, etc

Script will out put the Barracude reference number once the IP address is confirmed submitted
and will output an error message otherwise.

###Sample Output
user@hostname barracuda % ./script.pl   
192.168.1.2 : Error or already removed
192.168.1.3 : Your confirmation number is BBR12345678-789-123
192.168.1.4 : Error or already removed
192.168.1.5 : Your confirmation number is BBR12345678-789-789


Provided without warrenty, garantee, etc  Please use responsibly and test at a smaller scale
before attmepting to submit a large list of IP addresses

Tested on MAC OSX 11.6.4
