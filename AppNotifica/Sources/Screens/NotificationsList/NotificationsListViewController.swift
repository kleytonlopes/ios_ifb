//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class NotificationsListViewController: ViewControllerDefault {    
    lazy var listView: NotificationsListView = {
        let listView = NotificationsListView()
        listView.dataSource = self
        return listView
    }()
    
    override func loadView() {
        self.view = listView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ocorrências"
    }
}
extension NotificationsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
                withIdentifier: NotificationCell.IDENTIFIER,
                for: indexPath) as? NotificationCell {
            cell.setData(title: "Título da Ocorrência", subtitle: "10/10/2023")
            return cell
        }
        return UITableViewCell()
    }
}

