//
//  ImageDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 17/11/23.
//

import UIKit

class ImageViewDefault: UIImageView {
    init(imageName: String) {
        super.init(frame: .zero)
        setup(imageName: imageName)
    }
    
    private func setup(imageName: String){
        self.image = UIImage(named: imageName)
        self.contentMode = .scaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
