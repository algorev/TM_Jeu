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
import json

ENCODING = "utf_8"
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
    destFile = open(destFilename, 'w', encoding=ENCODING)
except OSError:
    print("Could not create/modify the given destination file.")
    sys.exit(-1)

with open(str(GRAMMAR), "r", encoding=ENCODING) as grammar:
    #print(grammar.read())
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
            imageName = get_attr(attr)
            if imageName == "none":
                var.imageName = None
            else:
                var.imageName = imageName
        if attr.data == "varinfo":
            for info in attr.children:
                if info.data == "onset":
                    var.onSet = get_attr(info)
                if info.data == "onunset":
                    var.onUnset = get_attr(info)
                if info.data == "defaultvalue":
                    val = info.children[0].data
                    if val == "true":
                        var.value = True
                    else:
                        var.value = False
    if var.imageName == None:
        print("STORY COMPILER WARNING: Variable {} has no assigned image.".format(var.name))
    return var

def list_sideeffects(se):
    def list_effect(l, dic):
        effectType = None
        name = None
        tempdic = dic
        final = True
        nextEffect = None
        for attr in l.children:
            if attr.data == "none":
                return dic
            if attr.data == "set":
                effectType = "set"
            if attr.data == "unset":
                effectType = "unset"
            if attr.data == "flip":
                effectType = "flip"
            if attr.data == "varname":
                name = get_attr(attr)
            if attr.data == "effects":
                final = False
                nextEffect = attr
        tempdic[effectType].append(name)
        if not final:
            return list_effect(nextEffect, tempdic)
        else:
            return tempdic
    return list_effect(se.children[0], {"set": [], "unset": [], "flip": []})

def list_requirements(re):
    def list_requirement(l, dic):
        reqType = None
        name = None
        tempdic = dic
        final = True
        nextReq = None
        for attr in l.children:
            if attr.data == "none":
                return dic
            if attr.data == "yes":
                reqType = "yes"
            if attr.data == "no":
                reqType = "no"
            if attr.data == "varname":
                name = get_attr(attr)
            if attr.data == "requirements":
                final = False
                nextReq = attr
        tempdic[reqType].append(name)
        if not final:
            return list_requirement(nextReq, tempdic)
        else:
            return tempdic
    return list_requirement(re.children[0], {"yes": [], "no": []})

def make_choice(node):
    choice = Choice()
    for attr in node.children:
        if attr.data == "nomchoix":
            choice.publicName = get_attr(attr)
        if attr.data == "description":
            choice.description = get_attr(attr)
        if attr.data == "body":
            choice.body = get_attr(attr)
        if attr.data == "choiximage":
            imageName = get_attr(attr.children[0])
            if imageName == "none":
                choice.imageName = None
            else:
                choice.imageName = imageName
        if attr.data == "visibility":
            choice.visible = True if attr.children[0].data == "true" else False
        if attr.data == "redirect":
            nextRoom = get_attr(attr)
            if nextRoom == "none":
                choice.nextRoom = None
            else:
                choice.nextRoom = nextRoom
        if attr.data == "sideeffects":
            for key, effects in list_sideeffects(attr).items():
                for effect in effects:
                    choice.add_sideeffect(effect, key)
        if attr.data == "requirementlist":
            for key, requirements in list_requirements(attr).items():
                for requirement in requirements:
                    choice.add_requirement(requirement, key)
    return choice

def make_room(node, roomName):
    room = Room()
    room.name = roomName
    for attr in node.children:
        if attr.data == "nompiece":
            room.publicName = get_attr(attr)
        if attr.data == "description":
            room.description = get_attr(attr)
        if attr.data == "piececontents":
            for choice in attr.children[0].children: #piecechoices
                room.add_choice(make_choice(choice))
    return room

for filename in glob.glob(sourceDir + "/*.st"):
    roomname = Path(filename).stem
    with open(filename, "r", encoding=ENCODING) as contents:
        text = contents.read() # my life is a mystery
        print("Compiling: " + filename)
        tree = parser.parse(text)
    for node in tree.children:
        if node.data == "variable":
            story.add_variable(make_variable(node))
        if node.data == "piece":
            story.add_room(make_room(node, roomname))

#dump the dictionary as json to the file
destFile.write(json.dumps(story.serialize(), ensure_ascii=False, indent=4))

destFile.close()