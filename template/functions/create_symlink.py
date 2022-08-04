from pathlib import Path
from template.bin.CommandLine1 import main
def make_symlink(link, dest):
            reflink = link + 'ref'
            reflink = ref / Path(link)
            destination = '/home/arkadiy/reference/' + dest
            reflink.symlink_to(Path(destination))
