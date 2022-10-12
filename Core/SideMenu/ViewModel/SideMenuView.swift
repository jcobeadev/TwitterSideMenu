//
//  SideMenuView.swift
//  TwitterSideMenu
//
//  Created by Jco Bea on 10/12/22.
//

import SwiftUI

struct SideMenuView: View {

    @Binding var isShowingSideMenu: Bool

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.green, .blue]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack() {
                // Header
                SideMenuHeaderView(isShowingSideMenu: $isShowingSideMenu)
                    .frame(height: 240)
                // Cell Items
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink {
                        Text(option.title)
                    } label: {
                        SideMenuOptionView(viewModel: option)
                    }

                }

                Spacer()
            }
        }
        .navigationBarHidden(true)

    }
}
//
//struct SideMenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenuView(isShowingSideMenu: .constant(true))
//    }
//}
