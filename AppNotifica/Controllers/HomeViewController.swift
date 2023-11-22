//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class HomeViewController: ViewControllerDefault {
    public var onRegisterTap: (() -> Void)?
    
    lazy var homeView: HomeView = {
        let view = HomeView()
        return view
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
    }
    
}

