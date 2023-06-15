//
//  Person.swift
//  ContactList
//
//  Created by Сергей Поляков on 15.06.2023.
//

//import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
