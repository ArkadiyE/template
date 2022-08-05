from pathlib import Path

def make_symlink(link, set_dir, dest):
            
            reflink = Path(set_dir) / Path(link)
            if not Path(dest).exists():
                raise ValueError(f'{dest} does not exist')
            reflink.symlink_to(Path(dest))
