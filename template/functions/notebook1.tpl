{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "6ceec60b-a95a-4428-a049-d3a9f6ac0461",
   "metadata": {},
   "outputs": [],
   "source": [
    "from pathlib import Path\n",
    "from pathlib import PurePath\n",
    "from pathlib import PosixPath\n",
    "from pathlib import PurePosixPath\n",
    "import os\n",
    "import argparse\n",
    "parser = argparse.ArgumentParser()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "8faed6a1-9423-4362-a25f-1d2dd6d65c2f",
   "metadata": {},
   "outputs": [],
   "source": [
    "Project1 = Path('Project1')\n",
    "Project1.mkdir()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "55e9aed4-ae86-4b74-bcfd-3725eef1256a",
   "metadata": {},
   "outputs": [],
   "source": [
    "ref = Path('ref')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "4ea1aa94-ab70-4ca3-9557-3fb091dfa62e",
   "metadata": {},
   "outputs": [],
   "source": [
    "ref = Path.cwd() / Project1 / ref"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "id": "374bd5ae-3408-46ac-a0b6-1104e499d71b",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "False"
      ]
     },
     "execution_count": 41,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "ref.exists()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "01b598f8-0b7e-4615-a07e-eac6e5f44b02",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "True"
      ]
     },
     "execution_count": 36,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "Project1.is_dir()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "5430e9b9-369b-4aa1-b9c0-c25e2bfdd106",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "total 8.0K\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 21 12:11 .\n",
      "drwxr-x--- 14 arkadiy arkadiy 4.0K Jun 21 12:17 ..\n"
     ]
    }
   ],
   "source": [
    "!ls -lah Project1/"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "id": "4b1ab90d-d846-4968-8247-40963d77d06c",
   "metadata": {},
   "outputs": [],
   "source": [
    "ref.mkdir()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 43,
   "id": "477f2b20-219e-4b59-9665-69649dd38278",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "True"
      ]
     },
     "execution_count": 43,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "ref.exists()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 44,
   "id": "e1002a77-9543-4945-bb8a-22cc1f692460",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "True"
      ]
     },
     "execution_count": 44,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "ref.is_dir()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "id": "b1a09517-892c-43fb-bf6e-5f6163753b0c",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "total 12K\n",
      "drwxrwxr-x  3 arkadiy arkadiy 4.0K Jun 21 12:26 .\n",
      "drwxr-x--- 14 arkadiy arkadiy 4.0K Jun 21 12:25 ..\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 21 12:26 ref\n"
     ]
    }
   ],
   "source": [
    "!ls -lah Project1/"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 55,
   "id": "1904a58d-9a97-4bbd-9e53-9462690c724a",
   "metadata": {},
   "outputs": [],
   "source": [
    "genomeref = ref / Path('genome')\n",
    "genomeref.symlink_to(Path('/home/arkadiy/reference/genome.fa'))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 56,
   "id": "eca66bc2-e134-43ae-bd25-3b780c875eb0",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "total 74M\n",
      "drwxr-x--- 15 arkadiy arkadiy 4.0K Jun 21 12:41 .\n",
      "drwxr-xr-x  6 root    root    4.0K Jun  1 15:03 ..\n",
      "-rw-------  1 arkadiy arkadiy 1.4K Jun 20 15:04 .bash_history\n",
      "-rw-r--r--  1 arkadiy arkadiy  220 Jun  1 15:03 .bash_logout\n",
      "-rw-r--r--  1 arkadiy arkadiy 4.2K Jun 13 11:19 .bashrc\n",
      "drwx------  5 arkadiy arkadiy 4.0K Jun 21 11:58 .cache\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 13 11:19 .conda\n",
      "drwx------  4 arkadiy arkadiy 4.0K Jun  2 12:03 .config\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 20 13:04 .ipynb_checkpoints\n",
      "drwxrwxr-x  3 arkadiy arkadiy 4.0K Jun 13 11:40 .ipython\n",
      "drwxrwxr-x  3 arkadiy arkadiy 4.0K Jun 13 11:40 .jupyter\n",
      "-rw-------  1 arkadiy arkadiy   20 Jun  2 12:18 .lesshst\n",
      "drwx------  3 arkadiy arkadiy 4.0K Jun  2 12:03 .local\n",
      "drwxrwxr-x 16 arkadiy arkadiy 4.0K Jun 13 11:23 miniconda3\n",
      "-rw-rw-r--  1 arkadiy arkadiy  74M May 16 16:02 Miniconda3-py39_4.12.0-Linux-x86_64.sh\n",
      "-rwxrwxr-x  1 arkadiy arkadiy  441 Jun 13 15:03 Name1.py\n",
      "-rwxrwxr-x  1 arkadiy arkadiy  479 Jun 13 14:50 Name.py\n",
      "-rw-r--r--  1 arkadiy arkadiy  807 Jun  1 15:03 .profile\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 21 12:08 Project\n",
      "drwxrwxr-x  3 arkadiy arkadiy 4.0K Jun 21 12:26 Project1\n",
      "-rw-rw-r--  1 arkadiy arkadiy 7.9K Jun 21 12:41 Project1.ipynb\n",
      "-rw-rw-r--  1 arkadiy arkadiy  15K Jun 21 12:21 Project.ipynb\n",
      "-rw-rw-r--  1 arkadiy arkadiy  903 Jun 21 12:05 Project.py\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 21 12:36 reference\n",
      "drwx------  3 arkadiy arkadiy 4.0K Jun  2 12:03 snap\n",
      "drwx------  2 arkadiy arkadiy 4.0K Jun  2 12:52 .ssh\n",
      "-rw-r--r--  1 arkadiy arkadiy    0 Jun 21 12:01 .sudo_as_admin_successful\n",
      "-rw-rw-r--  1 arkadiy arkadiy 312K Jun 14 13:29 Untitled1.ipynb\n",
      "-rw-rw-r--  1 arkadiy arkadiy 130K Jun 14 13:29 Untitled2.ipynb\n",
      "-rw-rw-r--  1 arkadiy arkadiy  11K Jun 13 15:22 Untitled.ipynb\n"
     ]
    }
   ],
   "source": [
    "!ls -lah"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 57,
   "id": "bffe8bba-b065-4795-8e58-411a8104efe5",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "total 8.0K\n",
      "drwxrwxr-x 2 arkadiy arkadiy 4.0K Jun 21 12:42 .\n",
      "drwxrwxr-x 3 arkadiy arkadiy 4.0K Jun 21 12:26 ..\n",
      "lrwxrwxrwx 1 arkadiy arkadiy   33 Jun 21 12:42 genome -> /home/arkadiy/reference/genome.fa\n"
     ]
    }
   ],
   "source": [
    "!ls -lah Project1/ref/"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 58,
   "id": "337ea230-2dc9-4fb2-b0b3-b9be3640aa03",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "total 12K\n",
      "drwxrwxr-x  3 arkadiy arkadiy 4.0K Jun 21 12:26 .\n",
      "drwxr-x--- 15 arkadiy arkadiy 4.0K Jun 21 12:41 ..\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 21 12:42 ref\n"
     ]
    }
   ],
   "source": [
    "!ls -lah Project1/"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 59,
   "id": "1ff248b0-7c17-4880-9dc3-287f0f698ae0",
   "metadata": {},
   "outputs": [],
   "source": [
    "data = Path('data')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 62,
   "id": "2e854b1b-fc09-4431-82a9-d726ef812d0a",
   "metadata": {},
   "outputs": [],
   "source": [
    "data = Path.cwd() / Project1 / data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 63,
   "id": "5bce4d14-7cab-4e90-b36a-a4413293acfc",
   "metadata": {},
   "outputs": [],
   "source": [
    "data.mkdir()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 64,
   "id": "648d7d91-9bb6-4af6-b684-4ab6f73c2af7",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "True"
      ]
     },
     "execution_count": 64,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "data.exists()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 67,
   "id": "7de04d1a-0cac-4273-be88-32a0baa5f3d1",
   "metadata": {},
   "outputs": [
    {
     "ename": "FileExistsError",
     "evalue": "[Errno 17] File exists: '/home/arkadiy/Project1/notebook'",
     "output_type": "error",
     "traceback": [
      "\u001b[0;31m---------------------------------------------------------------------------\u001b[0m",
      "\u001b[0;31mFileExistsError\u001b[0m                           Traceback (most recent call last)",
      "Input \u001b[0;32mIn [67]\u001b[0m, in \u001b[0;36m<cell line: 3>\u001b[0;34m()\u001b[0m\n\u001b[1;32m      1\u001b[0m notebook \u001b[38;5;241m=\u001b[39m Path(\u001b[38;5;124m'\u001b[39m\u001b[38;5;124mnotebook\u001b[39m\u001b[38;5;124m'\u001b[39m)\n\u001b[1;32m      2\u001b[0m notebook \u001b[38;5;241m=\u001b[39m Path\u001b[38;5;241m.\u001b[39mcwd() \u001b[38;5;241m/\u001b[39m Project1 \u001b[38;5;241m/\u001b[39m notebook\n\u001b[0;32m----> 3\u001b[0m \u001b[43mnotebook\u001b[49m\u001b[38;5;241;43m.\u001b[39;49m\u001b[43mmkdir\u001b[49m\u001b[43m(\u001b[49m\u001b[43m)\u001b[49m\n\u001b[1;32m      4\u001b[0m notebook\u001b[38;5;241m.\u001b[39mexists()\n",
      "File \u001b[0;32m~/miniconda3/lib/python3.9/pathlib.py:1323\u001b[0m, in \u001b[0;36mPath.mkdir\u001b[0;34m(self, mode, parents, exist_ok)\u001b[0m\n\u001b[1;32m   1319\u001b[0m \u001b[38;5;124;03m\"\"\"\u001b[39;00m\n\u001b[1;32m   1320\u001b[0m \u001b[38;5;124;03mCreate a new directory at this given path.\u001b[39;00m\n\u001b[1;32m   1321\u001b[0m \u001b[38;5;124;03m\"\"\"\u001b[39;00m\n\u001b[1;32m   1322\u001b[0m \u001b[38;5;28;01mtry\u001b[39;00m:\n\u001b[0;32m-> 1323\u001b[0m     \u001b[38;5;28;43mself\u001b[39;49m\u001b[38;5;241;43m.\u001b[39;49m\u001b[43m_accessor\u001b[49m\u001b[38;5;241;43m.\u001b[39;49m\u001b[43mmkdir\u001b[49m\u001b[43m(\u001b[49m\u001b[38;5;28;43mself\u001b[39;49m\u001b[43m,\u001b[49m\u001b[43m \u001b[49m\u001b[43mmode\u001b[49m\u001b[43m)\u001b[49m\n\u001b[1;32m   1324\u001b[0m \u001b[38;5;28;01mexcept\u001b[39;00m \u001b[38;5;167;01mFileNotFoundError\u001b[39;00m:\n\u001b[1;32m   1325\u001b[0m     \u001b[38;5;28;01mif\u001b[39;00m \u001b[38;5;129;01mnot\u001b[39;00m parents \u001b[38;5;129;01mor\u001b[39;00m \u001b[38;5;28mself\u001b[39m\u001b[38;5;241m.\u001b[39mparent \u001b[38;5;241m==\u001b[39m \u001b[38;5;28mself\u001b[39m:\n",
      "\u001b[0;31mFileExistsError\u001b[0m: [Errno 17] File exists: '/home/arkadiy/Project1/notebook'"
     ]
    }
   ],
   "source": [
    "notebook = Path('notebook')\n",
    "notebook = Path.cwd() / Project1 / notebook\n",
    "notebook.mkdir()\n",
    "notebook.exists()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 68,
   "id": "ddd61baf-e6d8-4da3-a5f0-7025b28585ce",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "True"
      ]
     },
     "execution_count": 68,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "notebook.exists()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 69,
   "id": "9b812d75-5cb3-4153-ae9c-12d3ac47a2ea",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "True"
      ]
     },
     "execution_count": 69,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "results = Path('results')\n",
    "results = Path.cwd() / Project1 / results\n",
    "results.mkdir()\n",
    "results.exists()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 70,
   "id": "8e479cf0-9440-41e3-badc-11578446c2da",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "True"
      ]
     },
     "execution_count": 70,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "utils = Path('utils')\n",
    "utils = Path.cwd() / Project1 / utils\n",
    "utils.mkdir()\n",
    "utils.exists()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 71,
   "id": "5064a3ac-faac-453b-b93f-562eb6b4f3d9",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "total 28K\n",
      "drwxrwxr-x  7 arkadiy arkadiy 4.0K Jun 21 12:50 .\n",
      "drwxr-x--- 15 arkadiy arkadiy 4.0K Jun 21 12:49 ..\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 21 12:45 data\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 21 12:48 notebook\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 21 12:42 ref\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 21 12:50 results\n",
      "drwxrwxr-x  2 arkadiy arkadiy 4.0K Jun 21 12:50 utils\n"
     ]
    }
   ],
   "source": [
    "!ls -lah Project1/"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 72,
   "id": "37844d7c-ab65-418d-a3fb-b63dc1cbb827",
   "metadata": {},
   "outputs": [],
   "source": [
    "annotationref = ref / Path('annotation')\n",
    "annotationref.symlink_to(Path('/home/arkadiy/reference/annotation.gtf'))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 73,
   "id": "ed29caba-bfda-46d5-85b3-06b6f0e9b8b1",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "total 8.0K\n",
      "drwxrwxr-x 2 arkadiy arkadiy 4.0K Jun 21 12:52 .\n",
      "drwxrwxr-x 7 arkadiy arkadiy 4.0K Jun 21 12:50 ..\n",
      "lrwxrwxrwx 1 arkadiy arkadiy   38 Jun 21 12:52 annotation -> /home/arkadiy/reference/annotation.gtf\n",
      "lrwxrwxrwx 1 arkadiy arkadiy   33 Jun 21 12:42 genome -> /home/arkadiy/reference/genome.fa\n"
     ]
    }
   ],
   "source": [
    "!ls -lah Project1/ref/"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "3b8bc5ea-0e6e-43cd-b634-02af3f8a3db0",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.9.12"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
