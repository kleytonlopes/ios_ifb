//
//  TableViewNotifications.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 30/11/23.
//

import UIKit

class NotificationsTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setup()
    }
    
    private func setup(){
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
