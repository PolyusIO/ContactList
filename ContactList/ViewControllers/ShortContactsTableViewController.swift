//
//  ShortContactsTableViewController.swift
//  ContactList
//
//  Created by Сергей Поляков on 15.06.2023.
//

import UIKit

final class ShortContactsTableViewController: UITableViewController {
    
    // MARK: - Public Properties
    var contacts: [Person]!

}

// MARK: - Table view data source
extension ShortContactsTableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "short", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = contacts[indexPath.row].fullName
        cell.contentConfiguration = content
        return cell
    }
}

// MARK: - Navigation
extension ShortContactsTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailedVC = segue.destination as? DetailedViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailedVC.contact = contacts[indexPath.row]
    }
}
