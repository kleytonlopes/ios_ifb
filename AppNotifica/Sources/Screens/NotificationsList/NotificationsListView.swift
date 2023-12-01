//
//  ViewHome.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class NotificationsListView: UIView {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(NotificationCell.self,
                           forCellReuseIdentifier: NotificationCell.IDENTIFIER)
        tableView.rowHeight = 75
        tableView.translatesAutoresizingMaskIntoConstraints = false
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
    
    public func reloadDataTableView(){
        self.tableView.reloadData()
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
            .sameBottomAnchorAsSuperview()
            .alignToSuperview()
            .activateConstraints()
    }
    
    func setupStyle() {
        self.backgroundColor = .viewBackgroundColor
    }
}

