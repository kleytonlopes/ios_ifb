//
//  AboutView.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class AboutUsView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension AboutUsView: ViewCodeProtocol{
    func setupHierarchy() {
    }
    
    func setupConstraints() {
    }
    
    func setupStyle() {
        self.backgroundColor = .viewBackgroundColor
    }
}
