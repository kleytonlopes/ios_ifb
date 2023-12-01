//
//  String_Extension.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 30/11/23.
//

import Foundation

extension String {
    func containsCaseInsensitive(_ value: String) -> Bool{
        return self.lowercased().contains(value.lowercased())
    }
}
