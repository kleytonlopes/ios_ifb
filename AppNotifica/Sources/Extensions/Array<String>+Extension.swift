//
//  Array<String>+extension.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 30/11/23.
//

import Foundation

extension Array where Element == String {
    func someStringContains(_ string: String) -> Bool {
        return self.filter{ $0.containsCaseInsensitive(string) }.count > 0
    }
}
