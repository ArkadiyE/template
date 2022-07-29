from pathlib import Path
def make_symlink(link, dest):
            reflink = link + 'ref'
            reflink = ref / Path(link)
            destination = '/home/arkadiy/reference/' + dest
            reflink.symlink_to(Path(destination))
