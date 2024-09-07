//
//  ViewModel.swift
//  FOCO
//
//  Created by Turma02-20 on 04/09/24.
//

import Foundation
import SwiftUI

class GlobalSettings: ObservableObject {
    @Published public var colorScheme: ColorScheme = .dark
}
