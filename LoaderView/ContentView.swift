//
//  ContentView.swift
//  LoaderView
//
//  Created by Alex on 18/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var animate = false
    
    var body: some View {
        VStack {
            LoaderView(animate: $animate)
            Button {
                self.animate.toggle()
            } label: {
                Text(animate ? "Stop" : "Start")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
