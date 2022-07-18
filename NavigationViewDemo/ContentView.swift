//
//  ContentView.swift
//  NavigationViewDemo
//
//  Created by Siro on 2022/7/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            GeometryReader { proxy in
                let topEdge = proxy.safeAreaInsets.top
                NavigationView{
                    Home(topEdge: topEdge)
                        .ignoresSafeArea(edges: .top)
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                }
            }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
