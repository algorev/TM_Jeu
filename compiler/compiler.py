# -*- coding: utf-8 -*-
"""
Created on Wed Sep 15 14:02:10 2021

@author: whoanders
"""

import sys
import os
import glob
from lark import Lark

if len(sys.argv) < 3:
    print("Usage: compiler.py <folder name> <output file>")
    print("Compiles the files in the given folder into the JSON file specified in the given filename.")
    sys.exit(-1)
sourceDir = sys.argv[1]
destFilename = sys.argv[2]

if not os.path.isdir(sourceDir):
    if not sys.path.exists(sourceDir):
        print("The given source directory does not exist.")
    else:
        print("The given source directory is not a directory.")
    sys.exit(-1)

try:
    destFile = open(destFilename, 'w', encoding="utf8")
except OSError:
    print("Could not create/modity the given destination file.")
    sys.exit(-1)

storyData = {
        "variables": {},
        "rooms": {}
    }

with open("grammar.lark", "r", encoding="utf8") as grammar:
    parser = Lark(grammar)

for file in glob.glob(sourceDir + "/*.st"):
    with open(file, "r", encoding="utf8") as contents:
        tree = parser.parse(contents.read())
    for node in tree:
        print(node.pretty())
    #run lark on them
        #if error, signal the filename and the stack trace
    #edit the tree to flatten the variables and rooms
    #add to the dictionary

#dump the dictionary as json to the file

destFile.close()