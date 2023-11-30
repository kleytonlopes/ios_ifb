//
//  ViewCode.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 13/11/23.
//

import Foundation

protocol ViewCodeProtocol {
    func setupHierarchy()
    func setupConstraints()
    func setupStyle()
}

extension ViewCodeProtocol {
    func setup(){
        setupHierarchy()
        setupConstraints()
        setupStyle()
    }
}
