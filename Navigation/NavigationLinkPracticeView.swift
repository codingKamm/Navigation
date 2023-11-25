//
//  NavigationLinkPracticeView.swift
//  Navigation
//
//  Created by Cameron Warner on 11/25/23.
//

import SwiftUI

struct NavigationLinkPracticeView: View {
    var body: some View {
        NavigationStack{
            List(0..<100) { i in
                NavigationLink("Select \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
        }
    }
}

#Preview {
    NavigationLinkPracticeView()
}
