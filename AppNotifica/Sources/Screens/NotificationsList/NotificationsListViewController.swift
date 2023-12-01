//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class NotificationsListViewController: ViewControllerDefault {    
    lazy var listView: NotificationsListView = {
class NotificationsListViewController: ViewControllerDefault {
    private let notifications: [(title: String, subtitle: String)] = [
        ("Título da Ocorrência 1", "10/10/2023"),
        ("Título da Ocorrência 2", "11/10/2023"),
        ("Título da Ocorrência 3", "12/10/2023"),
        ("Título da Ocorrência 4", "13/10/2023"),
        ("Título da Ocorrência 5", "14/10/2023"),
        ("Título da Ocorrência 6", "15/10/2023"),
        ("Título da Ocorrência 7", "16/10/2023"),
        ("Título da Ocorrência 8", "17/10/2023"),
        ("Título da Ocorrência 9", "18/10/2023"),
        ("Título da Ocorrência 10", "20/10/2023"),

    ]
    
    private var filteredNotifications: [(title: String, subtitle: String)] = []
    
    private lazy var listView: NotificationsListView = {
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
        filteredNotifications = notifications
    }
}
extension NotificationsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredNotifications.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
                withIdentifier: NotificationCell.IDENTIFIER,
                for: indexPath) as? NotificationCell {
            cell.setData(title: filteredNotifications[indexPath.row].title,
                         subtitle: filteredNotifications[indexPath.row].subtitle)
            return cell
        }
        return UITableViewCell()
    }
}

