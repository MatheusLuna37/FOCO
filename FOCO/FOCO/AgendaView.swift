//
//  AgendaView.swift
//  FOCO
//
//  Created by Turma02-20 on 04/09/24.
//

import SwiftUI

struct AgendaView: View {
    var body: some View {
        //Creating a new task
        NavigationLink(destination: CreateTask(), label: {
            Image(systemName: "plus")
        })
    }
}

#Preview {
    AgendaView()
}
