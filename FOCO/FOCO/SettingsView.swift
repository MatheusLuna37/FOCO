//
//  SettingsView.swift
//  FOCO
//
//  Created by Turma02-20 on 04/09/24.
//

import SwiftUI

struct SettingsView: View {
    @State var colorScheme: ColorScheme = .dark
    @State var isDark: Bool = true
    var body: some View {
        ZStack {
            Color(colorScheme == .dark ? .black : .white)
                .ignoresSafeArea()
            ScrollView {
                List(content: {
                    
                })
                VStack {
                    Text("CONFIGURAÇÕES")
                        .font(.system(size: 35))
                        .fontWeight(.bold)
                    Image(systemName: "gearshape")
                        .font(.system(size: 100))
                    HStack {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .opacity(0.4)
                                .frame(width: 180, height: 70)
                                .cornerRadius(40)
                            Text("IMPORTAR")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .opacity(0.4)
                                .frame(width: 180, height: 70)
                                .cornerRadius(40)
                            Text("EXPORTAR")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.4)
                            .frame(width: 360, height: 70)
                            .cornerRadius(50)
                        HStack {
                            Text("MODO")
                                .font(.title)
                                .fontWeight(.bold)
                            Spacer()
                            Toggle("", isOn: $isDark)
                                .onAppear(){
                                    switch colorScheme {
                                    case .light:
                                        isDark = false
                                    case .dark:
                                        isDark = true
                                    @unknown default:
                                        fatalError()
                                    }
                                }
                                .onChange(of: isDark, {
                                    switch isDark {
                                    case true:
                                        colorScheme = .dark
                                    case false:
                                        colorScheme = .light
                                    }
                                    print(colorScheme)
                                })
                            /*Button(action: {
                                dark.toggle()
                                withAnimation(.easeInOut(duration: 10)) {}
                            }, label: {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.gray)
                                        .frame(width: 120, height: 50)
                                        .cornerRadius(30)
                                    HStack {
                                        Image(systemName: "sun.max.fill")
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .opacity(dark ? 0 : 1)
                                            .symbolEffect(.bounce, value: dark)
                                        Spacer()
                                        Image(systemName: "moon.fill")
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .opacity(dark ? 1 : 0)
                                            .symbolEffect(.bounce, value: dark)
                                    }
                                    .padding([.horizontal], 10)
                                }
                                .frame(width: 120, height: 50)
                            })
                             */
                        }
                        .frame(width: 320, height: 70)
                    }
                }
            }
        }
        .colorScheme(colorScheme)
    }
}

#Preview {
    SettingsView()
}


