//
//  AboutViewController.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class AboutViewController: ViewControllerDefault {
    
    lazy var aboutView: AboutView = {
        let view = AboutView()
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

