//
//  ViewController.swift
//  ContactList
//
//  Created by Сергей Поляков on 15.06.2023.
//

import UIKit

final class DetailedViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var contact: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        showContact()
    }
    
    // MARK: - Private Methods
    private func showContact() {
        navigationItem.title = contact.fullName
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
