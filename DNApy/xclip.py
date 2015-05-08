# Upstream uses pyperclip to handle clipboard operations
# in an os-independent manner. Since that's not needed with
# Nix (and packaging pyperclip was harder than expected),
# I just hardcode them here instead.

import os

def copy():
    outf = os.popen('xclip -selection c -o', 'r')
    content = outf.read()
    outf.close()
    return content

def paste(text):
    outf = os.popen('xclip -selection c', 'w')
    outf.write(text)
    outf.close()
