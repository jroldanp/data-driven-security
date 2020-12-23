# CVE/CVSS 

## Description 

CVE is a list of publicly disclosed cybersecurity vulnerabilities that is free to search, use, and incorporate into products and services. It is built by CVE Numbering Authorities (CNAs) and feeds the U.S. National Vulnerability Database (NVD).
FAQ answers are available in link below:
https://cve.mitre.org/about/faqs.html 

## CSV feed

CSV feed can be downloaded from link below:
https://cve.mitre.org/data/downloads/index.html

File retrieved is in format CSV raw https://cve.mitre.org/data/downloads/allitems.csv

Analyzing CSV file, we can see that values are “CVE Name”, ”Status”, “Description”, ”References”, “Phase”, “Votes” and “Comments”.
Besides, first 10 rows have no relevant information and can be skipped.

R script downloads this CSV feed and using read.csv() function from readr package saves data from CSV into a DataFrame called cves. 
See script comments for further details.
