//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 17/11/23.
//

import UIKit

class LabelDefault: UILabel {
    init(text: String = "",
         fontSize: CGFloat = 17,
         fontWeight: UIFont.Weight = .regular,
         textAlignment: NSTextAlignment = .center,
         color: UIColor? = UIColor.textColor
    ) {
        super.init(frame: .zero)
        setup(text, fontSize, fontWeight , textAlignment, color)
    }
    
    private func setup(_ text: String,
                       _ size: CGFloat,
                       _ weight: UIFont.Weight,
                       _ textAlignment: NSTextAlignment,
                       _ color: UIColor?
    ){
        self.text = text
        self.textColor = color
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: size, weight: weight)
        self.numberOfLines = 0
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
