//
//  UIView+extension.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 18/11/23.
//

import UIKit

extension UIView {
    func getAutolayout() -> MyAutoLayout {
        return MyAutoLayout(view: self)
    }
}
