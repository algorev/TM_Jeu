# -*- coding: utf-8 -*-
"""
Created on Tue Sep 21 09:23:32 2021

@author: whoanders
"""

class Story:
    def __init__(self):
        self.rooms = {}
        self.variables = {}
    
    def add_room(self, room):
        if room.name in self.rooms:
            raise Exception("ERROR: The given room already exists: {0}".format(room.name))
        self.rooms[room.name] = room
    
    def add_variable(self, var):
        if var.name in self.variables:
            raise Exception("ERROR: The given variable already exists: {0}".format(var.name))
        self.variables[var.name] = var
    
    def serialize(self):
        data = {
            "variables": {},
            "rooms": {}
            }
        data["variables"] = {name:(var.serialize())
                             for (name, var)
                             in self.variables.items()}
        data["rooms"] = {name:(room.serialize())
                             for (name, room)
                             in self.rooms.items()}
        return data

class Variable:
    def __init__(self):
        self.name = "unnamed"
        self.imageName = None
        self.onSet = None
        self.onUnset = None
        self.value = False #It makes more sense that a variable be off by default.
        self.showIf = {
            "yes": [],
            "no": []
            }
        self.removeIf = None
    
    def add_show_if(self, varname, reqtype):
        if reqtype in [Choice.REQUIREMENT_YES, Choice.REQUIREMENT_NO]:
            self.showIf[reqtype].append(varname)
        else:
            raise Exception("Requirement type doesn't exist: {0} for requirement {1}".format(reqtype, varname))
    
    def add_remove_if(self, varname, reqtype):
        if self.removeIf == None:
            self.removeIf = {
            "yes": [],
            "no": []
            }
        if reqtype in [Choice.REQUIREMENT_YES, Choice.REQUIREMENT_NO]:
            self.removeIf[reqtype].append(varname)
        else:
            raise Exception("Requirement type doesn't exist: {0} for requirement {1}".format(reqtype, varname))
    
    def serialize(self):
        return {
                "imageName": self.imageName,
                "onSet": self.onSet,
                "onUnset": self.onUnset,
                "showIf": self.showIf,
                "removeIf": self.removeIf,
                "value": self.value
            }

class Choice:
    REQUIREMENT_YES = "yes"
    REQUIREMENT_NO = "no"
    SIDEEFFECT_SET = "set"
    SIDEEFFECT_UNSET = "unset"
    SIDEEFFECT_FLIP = "flip"
    
    def __init__(self):
        self.name = "UnnamedChoice"
        self.publicName = ""
        self.description = ""
        self.body = ""
        self.imageName = None
        self.requirements = {
            "yes": [],
            "no": []
            }
        self.visible = True
        self.sideEffects = {
            "set": [],
            "unset": [],
            "flip": []
            }
        self.hideRequirements = False
        self.nextRoom = "error"
    
    def add_requirement(self, varname, reqtype):
        if reqtype in [Choice.REQUIREMENT_YES, Choice.REQUIREMENT_NO]:
            self.requirements[reqtype].append(varname)
        else:
            raise Exception("Requirement type doesn't exist: {0} for requirement {1}".format(reqtype, varname))
    
    def add_sideeffect(self, varname, setype):
        if setype in [Choice.SIDEEFFECT_SET, Choice.SIDEEFFECT_UNSET, Choice.SIDEEFFECT_FLIP]:
            self.sideEffects[setype].append(varname)
        else:
            raise Exception("Side-effect type doesn't exist: {0} for requirement {1}".format(setype, varname))
    
    def serialize(self):
        return {
            "publicName": self.publicName,
            "description": self.description,
            "body": self.body,
            "imageName": self.imageName,
            "requirements": self.requirements,
            "visible": self.visible,
            "sideeffects": self.sideEffects,
            "hideRequirements": self.hideRequirements,
            "next": self.nextRoom
            }

class Room:
    def __init__(self):
        self.name = "UnnamedRoom"
        self.publicName = ""
        self.description = ""
        self.choices = []
    
    def add_choice(self, choice):
        self.choices.append(choice)
    
    def serialize(self):
        return {
            "publicName": self.publicName,
            "description": self.description,
            "choices": [choice.serialize() for choice in self.choices]
            }