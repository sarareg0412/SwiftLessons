//
//  ContentView.swift
//  SwiftUiListExample
//
//  Created by Sergio Mascetti on 12/05/21.
//

import SwiftUI

let people = Model().people.filter{person in person.isFavourite == true}

struct ContentView: View {
    @State private var showFavs = false

    var body: some View {
        VStack{
            Button(action: {self.showFavs.toggle()}){
                Text("Show Only Favourites")
            }
            
            if showFavs{
                List(people) { person in  PersonRow(person: person)
                    
                }
            }else{
                List(Model().people) { person in  PersonRow(person: person)
                    
                }
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
