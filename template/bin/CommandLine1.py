#!/usr/bin/env python

from pathlib import Path
from pathlib import PurePath
from pathlib import PosixPath
from pathlib import PurePosixPath
import argparse
from template.functions.make_directories import make_directories
from template.functions.create_symlink import make_symlink
from template.functions.do_render import do_render
from jinja2 import Environment, FileSystemLoader, select_autoescape
env = Environment(loader=FileSystemLoader("."), autoescape=select_autoescape())


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("set_dir", type=str, default=Path.cwd())
    parser.add_argument("-syl", "--symlink", action="store_true")
    parser.add_argument("-t", "--template", action="store_true")
    parser.add_argument("-lnk", "--link", type=str)
    parser.add_argument("-dst", "--destination", type=str) 
    parser.add_argument("filename", type=str, default=None)
    parser.add_argument("-PT", "--PATTERN", type=str)
    parser.add_argument("-RID", "--RUNID", type=str, default=None)
    parser.add_argument("-NPR", "--NPROC", type=str)
    parser.add_argument("-bd", "--base_dir", type=str)
    args = parser.parse_args()
    kwargs = vars(args)
    print(args)
    make_directories(args.set_dir)

    if args.symlink:
        print(args)
        make_symlink(args.link, args.destination)
        
    if args.template:
        
        print(args)
        print(kwargs)
        #kwargs = args.PATTERN, args.RUNID, args.NPROC, args.base_dir
        do_render(args.filename, **kwargs)
        
if __name__ == "__main__":
    main()
