//
//  Plugin.swift
//  PluginManagerPrototype
//
//  Created by Roben Kleene on 9/13/14.
//  Copyright (c) 2014 Roben Kleene. All rights reserved.
//

import Cocoa

@objcMembers
public class BasePlugin: POPPlugin, Plugin {
    public let autoShowLog: Bool? // `autoShowLog` is three state, `nil` means use the user prefrence
    public let debugModeEnabled: Bool? // `debugModeEnabled` is three state, `nil` means use the user prefrence
    public let hidden: Bool
    public let pluginKind: PluginKind
    public let promptInterrupt: Bool
    public let transparentBackground: Bool
    public let usesEnvironment: Bool
    public var command: String?
    public var commandPath: String?
    public let directoryPath: String
    public let directoryURL: URL
    public var editable: Bool
    public var identifier: String
    public var name: String
    public var path: String
    public var suffixes: [String]
    public let type: String
    public var url: URL

    init(autoShowLog: Bool?,
         debugModeEnabled: Bool?,
         hidden: Bool,
         pluginKind: PluginKind,
         promptInterrupt: Bool,
         transparentBackground: Bool,
         usesEnvironment: Bool,
         command: String,
         commandPath: String,
         directoryPath: String,
         directoryURL: URL,
         editable: Bool,
         identifier: String,
         name: String,
         path: String,
         suffixes: [String],
         type: String,
         url: URL) {
        self.autoShowLog = autoShowLog
        self.debugModeEnabled = debugModeEnabled
        self.hidden = hidden
        self.pluginKind = pluginKind
        self.promptInterrupt = promptInterrupt
        self.transparentBackground = transparentBackground
        self.usesEnvironment = usesEnvironment
        self.command = command
        self.commandPath = commandPath
        self.directoryPath = directoryPath
        self.directoryURL = directoryURL
        self.editable = editable
        self.identifier = identifier
        self.name = name
        self.path = path
        self.suffixes = suffixes
        self.type = type
        self.url = url
    }
}

extension BasePlugin {
    func isEqual(toOther plugin: XMLPlugin) -> Bool {
        if name != plugin.name {
            return false
        }

        if identifier != plugin.identifier {
            return false
        }

        if editable != plugin.editable {
            return false
        }

        if type != plugin.type {
            return false
        }

        if command != plugin.command {
            return false
        }

        if commandPath != plugin.commandPath {
            return false
        }

        if resourceURL != plugin.resourceURL {
            return false
        }

        return true
    }
}