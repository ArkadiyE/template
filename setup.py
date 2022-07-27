from setuptools import setup, find_packages
setup(
   name="template",
   version="0.1.0",
   author="Arkadiy Epshtein",
   author_email="arkadiy.epshtein@stonybrook.edu",
   packages=find_packages(where="template"),
   package_dir={"template":"template"},
   package_data={"template":["bin/*.py"]},
   data_file={("functions",["functions/make_directories.py", "functions/create_symlink.py", "functions/do_render.py"])},
   scripts=["bin/CommandLine1"],
   url="http://github.com/ArkadiyE/template",
   license= "LISENCE.txt",
   description='A program that creates notebook templates.',
   long_description=open('README.md').read(),
   install_requires=[
       "jinja2",
       "pytest",
       "Jupyter",
   ],
    classifiers=['Intended Audience :: Science/Research',
                 'Programming Language :: Python',
                 'Topic :: Scientific/Engineering :: Bio-Informatics',
                 'Topic :: Scientific/Engineering :: Visualization',
                 'Operating System :: Microsoft :: Windows',
                 'Operating System :: POSIX',
                 'Operating System :: Unix',
                 'Operating System :: MacOS',
                 'Programming Language :: Python :: 3',
                 'Programming Language :: Python :: 3.4',
                 'Programming Language :: Python :: 3.5'],
    zip_safe=False)
