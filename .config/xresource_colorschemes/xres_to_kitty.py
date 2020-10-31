#!/usr/bin/env python3

from sys import stdin, stdout
import re

in_conf = stdin.read()

text = in_conf
text = re.sub('!', '#', text)
text = re.sub('\*.', '', text)
text = re.sub(':', '', text)

stdout.write(text)
