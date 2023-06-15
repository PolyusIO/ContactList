//
//  FullContactsTableViewController.swift
//  ContactList
//
//  Created by Сергей Поляков on 15.06.2023.
//

import UIKit

final class FullContactsTableViewController: UITableViewController {
    
    // MARK: - Public Properties
    var contacts: [Person]!
    
}

// MARK: - Table view data source
extension FullContactsTableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "full", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = contacts[indexPath.row].phone
        } else {
            content.image = UIImage(systemName: "envelope")
            content.text = contacts[indexPath.row].email
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
