//
//  ContentView.swift
//  SwiftTour1
//
//  Created by ramil on 24/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var name: String
}

struct UserView: View {
    var user: User
    
    var body: some View {
        NavigationLink(destination: Text(user.name)) {
            Text(user.name)
                .font(.title)
                .foregroundColor(.red)
        }
    }
}

struct ContentView: View {
    
    let users = [
        User(name: "Taylor"),
        User(name: "Adele"),
        User(name: "Justin")
    ]
    
    var body: some View {
        NavigationView {
            List(users, rowContent: UserView.init)
            .navigationBarTitle("SwiftUI Tour")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
