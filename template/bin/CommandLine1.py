#!/usr/bin/env python

from pathlib import Path
from pathlib import PurePath
from pathlib import PosixPath
from pathlib import PurePosixPath
import os
import argparse
from template.Make_Directories import make_directories
from template.Creat_Symlink import make_symlink
from template.Do_Render import do_render
from jinja2 import Environment, FileSystemLoader, select_autoescape
env = Environment(loader=FileSystemLoader("."), autoescape=select_autoescape())


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("base_dir", type=str, default=Path.cwd())
    parser.add_argument("-syl", "--symlink", action="store_true")
    parser.add_argument("-t", "--template", action="store_true")
    args = parser.parse_args()
<<<<<<< HEAD
    args.base_dir = Path(args.base_dir)
    args.base_dir.mkdir()
    ref = Path('ref')
    ref = Path.cwd() / args.base_dir / ref
    ref.mkdir()
    data = Path('data')
    data = Path.cwd() / args.base_dir / data
    data.mkdir()
    notebook = Path('notebook')
    notebook = Path.cwd() / args.base_dir / notebook
    notebook.mkdir()
    notebook.exists()
    results = Path('results')
    results = Path.cwd() / args.base_dir / results
    results.mkdir()
    results.exists()
    utils = Path('utils')
    utils = Path.cwd() / args.base_dir / utils
    utils.mkdir()
    utils.exists()
   
=======
    make_directories(args.base_dir)
>>>>>>> a9ea9428596d140c4fd89ddc16acca3cf8ee3946
    if args.symlink:
        parser.add_argument("link", type=str)
        parser.add_argument("destination", type=str)
        args = parser.parse_args()
        make_symlink(args.link, args.destination)
    if args.template:
        parser.add_argument("filename", type=str)
        parser.add_argument("PATTERN", type=str)
        parser.add_argument("RUNID", type=str, default="")
        parser.add_argument("NPROC", type=str)
        parser.add_argument("base_dir", type=str)
        args = parser.parse_args()
        kwargs = vars(args)
        kwargs = args.PATTERN, args.RUNID, args.NPROC, args.base_dir
        do_render(args.filename, **kwargs)
        
if __name__ == "__main__":
    main()
