from pathlib import Path

def make_symlink(link, reflink, dest):
            
            reflink = ref / Path(link)
            destination = '/home/arkadiy/reference/' + dest
            print(destination.exists())
            reflink.symlink_to(Path(destination))
