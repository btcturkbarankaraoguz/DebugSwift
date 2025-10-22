//
//  DebugSwift.Console.swift
//  DebugSwift
//
//  Created by Matheus Gois on 11/06/24.
//

import UIKit

@available(iOS 14, *)
extension DebugSwift {
    @available(iOS 14, *)
    public class Console: @unchecked Sendable {
        public static let shared = Console()
        private init() {}
        
        public var ignoredLogs = [String]()
        public var onlyLogs = [String]()
    }
}
