//
//  ViewCode.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 13/11/23.
//

import Foundation

protocol ViewCode {
    func setupHierarchy()
    func setupConstraints()
    func setupStyle()
}

extension ViewCode {
    func setup(){
        setupHierarchy()
        setupConstraints()
        setupStyle()
    }
}
