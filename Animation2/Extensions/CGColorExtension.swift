//
//  CGColorExtension.swift
//  Animation2
//
//  Created by Paola Delgadillo on 8/31/24.
//

import Foundation
import UIKit

extension CGColor {
    var UIColor : UIKit.UIColor {
        return UIKit.UIColor(cgColor: self)
    }
}
