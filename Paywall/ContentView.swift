//
//  ContentView.swift
//  Paywall
//
//  Created by Husnain Ali on 08/02/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isPresented.toggle()
            } label: {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Pay now")
            }
        }
        .padding()
        .sheet(isPresented: $isPresented) {
            PurchaseView(isPresented: $isPresented)
        }
    }
}

#Preview {
    ContentView()
}
