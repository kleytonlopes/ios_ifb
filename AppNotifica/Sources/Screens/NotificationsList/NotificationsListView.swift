//
//  ViewHome.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class NotificationsListView: UIView {
    public static let CELL_IDENTIFIER = "NotificationCell";
    
    lazy var tableView: NotificationsTableView = {
        let tableView = NotificationsTableView()
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: NotificationsListView.CELL_IDENTIFIER)
        return tableView
    }()
    
    
    weak var dataSource: UITableViewDataSource? {
        didSet{
            tableView.dataSource = dataSource
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension NotificationsListView: ViewCodeProtocol{
    func setupHierarchy() {
        self.addSubview(tableView)
    }
    
    func setupConstraints() {
        tableView.getAutolayout()
            .sameTopAnchorAsSuperview()
            .withHeight(300)
            .alignToSuperview()
            .activateConstraints()
    }
    
    func setupStyle() {
        self.backgroundColor = .viewBackgroundColor
    }
}

