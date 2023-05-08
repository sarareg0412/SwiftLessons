//
//  PersonRow.swift
//  ListExample
//
//  Created by Sergio Mascetti on 26/05/2020.
//  Copyright © 2020 Sergio Mascetti. All rights reserved.
//

import SwiftUI

struct PersonRow: View {
    var person: Person
    var body: some View {
        HStack {
            Text(person.name).bold()
            Text(person.surname)
            if(person.isFavourite){
                Image(systemName: "star")
                
            }
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Model().people[0])
    }
}
