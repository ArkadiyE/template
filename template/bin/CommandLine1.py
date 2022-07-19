#!/usr/bin/env python

from pathlib import Path
from pathlib import PurePath
from pathlib import PosixPath
from pathlib import PurePosixPath
import os
import argparse
#import Create_Symlink.py
#import Do_Render.py
from jinja2 import Environment, FileSystemLoader, select_autoescape
env = Environment(loader=FileSystemLoader("."), autoescape=select_autoescape())


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("base_dir", type=str, default=Path.cwd())
    parser.add_argument("-syl", "--symlink", action="store_true")
    parser.add_argument("-t", "--template", action="store_true")
    args = parser.parse_args()
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
   
    if args.symlink:
        parser.add_argument("link", type=str)
        parser.add_argument("destination", type=str)
        args = parser.parse_args()
        def make_symlink():
            reflink = args.link + 'ref'
            reflink = ref / Path(args.link)
            dest = '/home/arkadiy/reference/' + args.destination
            reflink.symlink_to(Path(dest))
    if args.template:
        parser.add_argument("filename", type=str)
        parser.add_argument("PATTERN", type=str)
        parser.add_argument("RUNID", type=str, default="")
        parser.add_argument("NPROC", type=str)
        parser.add_argument("base_dir", type=str)
        args = parser.parse_args()
        kwargs = vars(args)
        kwargs = args.PATTERN, args.RUNID, args.NPROC, args.base_dir
        def do_render():
            env = Environment(loader=FileSystemLoader("."),autoescape=select_autoescape())
            path = Path(args.filename)
            path.exists()
            template = env.get_template(args.filename)
            return template.render(**kwargs)
            
if __name__ == "__main__":
    main()
