//
//  MeasurementViewDelegate.swift
//  HyperionSwift
//
//  Created by Matheus Gois on 02/01/25.
//

import UIKit

@available(iOS 14, *)
@MainActor
protocol MeasurementViewDelegate: AnyObject {
    var attachedWindow: UIWindow? { get }
}
