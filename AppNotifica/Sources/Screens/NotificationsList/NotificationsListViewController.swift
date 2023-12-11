//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class NotificationsListViewController: ViewControllerDefault {
    private var viewModel: NotificationsListViewModel
    private var allNotifications: [Notification] = []
    private var filteredNotifications: [Notification] = []
    
    private lazy var listView: NotificationsListView = {
        let listView = NotificationsListView()
        listView.dataSource = self
        return listView
    }()
    
    private lazy var searchController : UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.searchBar.tintColor = UIColor.mainColor
        return searchController
    }()

    
    override func loadView() {
        self.view = listView
    }
    
    init(viewModel: NotificationsListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.title = "Ocorrências"
        self.setupBindings()
        self.viewModel.fetchData()
    }
    
    private func setupBindings(){
        viewModel.downloadDataSuccess = { notifications in
            self.allNotifications = notifications
            self.filteredNotifications = notifications
        }
        viewModel.errorStateChanged = { message in
            //TODO: show alert
        }
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

extension NotificationsListViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let currentText = searchController.searchBar.text?.lowercased() ?? ""
        self.filteredNotifications = allNotifications
        if(currentText.trimmingCharacters(in: [" "]) != ""){
            self.filteredNotifications = self.allNotifications.filter{
                [$0.title, $0.subtitle].someStringContains(currentText)
            }
        }
        self.listView.reloadDataTableView()
    }
}

