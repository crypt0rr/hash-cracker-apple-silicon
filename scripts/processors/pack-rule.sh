#!/bin/bash
# Copyright crypt0rr

# Requirements
source scripts/selectors/hashtype.sh
source scripts/selectors/hashlist.sh

# Logic
$HASHCAT -O --potfile-path=$POTFILE -m$HASHTYPE $HASHLIST --show | awk -F: '{print $NF}' | tee tmp_pwonly &>/dev/null
/usr/bin/python3 scripts/extensions/pack/rulegen.py tmp_pwonly
rm analysis-sorted.word analysis.word analysis-sorted.rule

source scripts/selectors/wordlist.sh

$HASHCAT -O --bitmap-max=24 --potfile-path=$POTFILE -m$HASHTYPE $HASHLIST $WORDLIST -r analysis.rule --loopback
rm analysis.rule tmp_pwonly
echo -e "\nPACK rule processing done\n"