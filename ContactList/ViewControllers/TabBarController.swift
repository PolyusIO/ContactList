//
//  TabBarController.swift
//  ContactList
//
//  Created by Сергей Поляков on 15.06.2023.
//

import UIKit

final class TabBarController: UITabBarController {

    // MARK: - Private Properties
    private let contacts = Person.getContacts()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    // MARK: - Private Methods
    private func setupTabBar() {
        guard let shortContactsVC = viewControllers?.first as? ShortContactsTableViewController else { return }
        guard let fullContactsVC = viewControllers?.last as? FullContactsTableViewController else { return }
        shortContactsVC.contacts = contacts
        fullContactsVC.contacts = contacts
    }
}
