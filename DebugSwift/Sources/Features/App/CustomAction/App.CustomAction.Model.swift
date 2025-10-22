//
//  App.CustomAction.Model.swift
//  DebugSwift
//
//  Created by Matheus Gois on 16/01/24.
//

import Foundation

@available(iOS 14, *)
public struct CustomAction {
    public init(title: String, actions: Actions) {
        self.title = title
        self.actions = actions
    }

    let title: String
    let actions: Actions
}

@available(iOS 14, *)
extension CustomAction {
    public typealias Actions = [Action]

    @available(iOS 14, *)
    public struct Action {
        public init(title: String, action: (() -> Void)?) {
            self.title = title
            self.action = action
        }

        let title: String
        let action: (() -> Void)?
    }
}
