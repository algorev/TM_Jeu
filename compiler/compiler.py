# -*- coding: utf-8 -*-
"""
Created on Wed Sep 15 14:02:10 2021

@author: whoanders
"""

import sys
import os
import glob
from pathlib import Path
from lark import Lark
from story import *

PREFIX = Path(os.path.dirname(os.path.realpath(__file__)))
GRAMMAR = PREFIX / Path("grammar.lark")

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

with open(str(GRAMMAR), "r", encoding="utf8") as grammar:
    parser = Lark(grammar)

story = Story()

def get_attr(attr):
    return str(attr.children[0]).lstrip()

def make_variable(node):
    var = Variable()
    for attr in node.children:
        if attr.data == "nomprog":
            var.name = get_attr(attr)
        if attr.data == "imgpath":
            var.imageName = get_attr(attr)
        if attr.data == "varinfo":
            for info in attr.children:
                if info.data == "onset":
                    var.onSet = get_attr(info)
                if info.data == "onunset":
                    var.onUnset = get_attr(info)
                if info.data == "defaultvalue":
                    val = get_attr(info)
                    if val == "true":
                        var.value = True
                    else:
                        var.value = False
    return var

def make_room(node):
    return Room("privateName", "publicName", "description")

for file in glob.glob(sourceDir + "/*.st"):
    with open(file, "r", encoding="utf8") as contents:
        tree = parser.parse(contents.read())
    for node in tree.children:
        if node.data == "variable":
            story.add_variable(make_variable(node))
        if node.data == "room":
            #story.add_room(make_room(node))
            pass

print(story.serialize())

#dump the dictionary as json to the file
#destFile.write(story.serialize())

destFile.close()