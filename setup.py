from setuptools import setup, find_packages
setup(
   name="template",
   version="0.1.0",
   author="Arkadiy Epshtein",
   author_email="arkadiy.epshtein@stonybrook.edu",
   package_dir={"":"template"},
   packages=find_packages(where="template"),
   scripts=["bin/CommandLine1"],
   url="http://pypi.python.org/pypi/template/",
   license= "LISENCE.txt",
   description='A program that creates notebook templates.',
   long_description=open('README.txt').read(),
   install_requires=[
       "Django >= 1.1.1",
       "pytest",
       "Jupyter",
       "bash"
   ],
    classifiers=['Intended Audience :: Science/Research',
                 'Programming Language :: Python',
                 'Topic :: Scientific/Engineering :: Bio-Informatics',
                 'Topic :: Scientific/Engineering :: Visualization',
                 'Operating System :: Microsoft :: Windows',
                 'Operating System :: POSIX',
                 'Operating System :: Unix',
                 'Operating System :: MacOS',
                 'Programming Language :: Python :: 2',
                 'Programming Language :: Python :: 2.7',
                 'Programming Language :: Python :: 3',
                 'Programming Language :: Python :: 3.4',
                 'Programming Language :: Python :: 3.5'],
    zip_safe=False)
