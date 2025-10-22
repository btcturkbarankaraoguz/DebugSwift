//
//  Dictionary+.swift
//  DebugSwift
//
//  Created by Matheus Gois on 15/12/23.
//  Copyright © 2023 apple. All rights reserved.
//

import Foundation

@available(iOS 14, *)
extension [String: Any] {
    func formattedString() -> String {
        var formattedString = ""
        for (key, value) in self {
            formattedString += "\(key): \(value)\n"
        }
        return formattedString
    }
}

@available(iOS 14, *)
extension [AnyHashable: Any] {
    func convertKeysToString() -> [String: Value] {
        var result: [String: Value] = [:]

        for (key, value) in self {
            if let keyString = key as? String {
                result[keyString] = value
            }
        }

        return result
    }
}

@available(iOS 14, *)
extension Dictionary {
    func asJsonStr() -> String? {
        var jsonCompatibleDictionary: [String: Any] = [:]

        // Converte valores incompatíveis
        for (key, value) in self {
            if let data = value as? Data {
                jsonCompatibleDictionary[key as! String] = data.base64EncodedString()
            } else {
                jsonCompatibleDictionary[key as! String] = value
            }
        }

        do {
            let jsonData = try JSONSerialization.data(withJSONObject: jsonCompatibleDictionary, options: .sortedKeys)
            return String(decoding: jsonData, as: UTF8.self)
        } catch {
            print("Error serializing JSON: \(error)")
            return nil
        }
    }
}
