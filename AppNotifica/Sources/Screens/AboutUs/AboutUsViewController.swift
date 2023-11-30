//
//  AboutViewController.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class AboutUsViewController: ViewControllerDefault {
    
    lazy var aboutView: AboutUsView = {
        let view = AboutUsView()
        return view
    }()
    
    override func loadView() {
        self.view = aboutView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
    }
    
}

