# hash-cracker - Apple Silicon Edition

Simple script to get some hash cracking done effectively.

Some sites where you can find wordlists:

* <https://weakpass.com/>
* <https://hashmob.net/>

Want to make the ***$HEX[1234]*** Hashcat output readable? Have a look at [hex-to-readable](https://github.com/crypt0rr/hex-to-readable).

## Usage

```plain
hash-cracker v2.9.2 Apple Silicon Edition by crypt0rr (https://github.com/crypt0rr)

Checking if requirements are met:
[+] Hashcat is installed
[+] common-substr is executable
[+] Potfile "hash-cracker.pot" present

0. Exit
1. Brute force
2. Light rules
3. Heavy rules
4. Enter specific word/name/company
5. Enter specific word/name/company (bruteforce)
6. Hybrid
7. Toggle-case
8. Combinator
9. Iterate results
10. Prefix suffix (advise: first run steps above)
11. Common substring (advise: first run steps above)
12. Currently not working - PACK rulegen (read option 99)
13. PACK mask (read option 99)
14. Currently not working - Fingerprint attack
15. Directory of wordlists plain and then with OneRuleToRuleThemAll
16. Username iteration (read option 99, only NTLM)
99. Show info about modules

Please enter number OR type 'search' to find hashtypes:
```

## Version log

[See here](VERSION.md)

## License

GNU GPLv3
