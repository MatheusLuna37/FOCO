//
//  ContentView.swift
//  FOCO
//
//  Created by Turma02-20 on 04/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingMenu: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    //Menu
                    Button(action: {
                        showingMenu.toggle()
                    }, label: {
                        Image(systemName: "line.horizontal.3")
                    })
                    .sheet(isPresented: $showingMenu, content: {
                        MenuView()
                    })
                    Spacer()
                    
                    //Character personalization
                    Button(action: {}, label: {
                        NavigationLink(destination: CharacterView(), label: {
                            Image(systemName: "person.crop.square")
                        })
                    })
                    
                    Spacer()
                    
                    //Starts Focus Mode
                    Button(action: {}, label: {
                        NavigationLink(destination: FocusView(), label: {
                            Image(systemName: "play.fill")
                        })
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
