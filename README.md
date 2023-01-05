Enumerate subdomains of given domain list --- check alive domain --- http or https

USAGE :
#./subenum.sh <domain_list>

FEATURES :

Enumerate Subdomains using subfinder and assetfinder -> save all subdomains in all_subs.                                                                        
Check for alive domains and save it in live_subs with webserver used i.e. http or https.

PREREQUISITES :       
Subfinder - #go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest                                                                         
Assetfinder - #go get -u github.com/tomnomnom/assetfinder

httprobe - #go install github.com/tomnomnom/httprobe@latest 
