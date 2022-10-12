//
//  ContentView.swift
//  TwitterSideMenu
//
//  Created by Jco Bea on 10/12/22.
//

import SwiftUI

struct ContentView: View {

    @State private var isShowingSideMenu = false

    var body: some View {
        NavigationView {
            ZStack {
                if isShowingSideMenu {
                    SideMenuView(isShowingSideMenu: $isShowingSideMenu)
                }
                HomeView()
                    .cornerRadius(isShowingSideMenu ? 20 : 10)
                    .offset(x: isShowingSideMenu ? 300 : 0, y: isShowingSideMenu ? 22 : 0)
                    .scaleEffect(isShowingSideMenu ? 0.9 : 1)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                                print("Burger clicked")
                                withAnimation(.spring()) {
                                    isShowingSideMenu.toggle()
                                }
                            } label: {
                                Image(systemName: "list.bullet")
                            }
                        }
                    }
                    .navigationTitle("Dashboard")
                    .navigationBarTitleDisplayMode(.automatic)
            }
            .onAppear {
                isShowingSideMenu = false
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
