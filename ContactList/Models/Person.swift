//
//  Person.swift
//  ContactList
//
//  Created by Сергей Поляков on 15.06.2023.
//

// MARK: - Model
struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

// MARK: - Static Methods
extension Person {
    static func getContacts() -> [Person] {
        var contacts: [Person] = []
        
        let names = DataStore.names.shuffled()
        let surnames = DataStore.surnames.shuffled()
        let emails = DataStore.emails.shuffled()
        let phones = DataStore.phones.shuffled()
        
        let minValue = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0 ..< minValue {
            contacts.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    email: emails[index],
                    phone: phones[index]
                )
            )
        }
        
        return contacts
    }
}
