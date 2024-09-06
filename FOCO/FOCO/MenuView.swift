//
//  MenuView.swift
//  FOCO
//
//  Created by Turma02-20 on 04/09/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationLink(destination: AgendaView(), label: {
            Text("Agenda")
        })
        NavigationLink(destination: RankingView(), label: {
            Text("Ranking")
        })
        NavigationLink(destination: StatsView(), label: {
            Text("Estatísticas")
        })
        NavigationLink(destination: SettingsView(), label: {
            Text("Configurações")
        })
    }
}

#Preview {
    MenuView()
}
