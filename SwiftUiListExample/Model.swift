//
//  Model.swift
//  ListExample
//
//  Created by Sergio Mascetti on 26/05/2020.
//  Copyright © 2020 Sergio Mascetti. All rights reserved.
//

import Foundation
struct Person: Identifiable {
    var id = UUID()
    let name: String
    let surname: String
    let isFavourite : Bool
}

struct Model {
    var people: [Person] = []
    init() {
        people.append(Person(name: "Andrea", surname: "Andrei", isFavourite: true))
        people.append(Person(name: "Bruno", surname: "Bruni", isFavourite: true))
        people.append(Person(name: "Carlo", surname: "Carli", isFavourite: false))
        people.append(Person(name: "Diego", surname: "Dieghi", isFavourite: true))
        people.append(Person(name: "Elisa", surname: "Elisi", isFavourite: false))
        people.append(Person(name: "Federico", surname: "Federichi", isFavourite: true))
        people.append(Person(name: "Guido", surname: "Guidi", isFavourite: true))
        people.append(Person(name: "Ilaria", surname: "Ilari", isFavourite: false))
        people.append(Person(name: "Luca", surname: "Luchi", isFavourite: false))
        people.append(Person(name: "Mario", surname: "Mari", isFavourite: false))
    }
}
