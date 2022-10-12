//
//  SideMenuHeaderView.swift
//  TwitterSideMenu
//
//  Created by Jco Bea on 10/12/22.
//

import SwiftUI

struct SideMenuHeaderView: View {

    @Binding var isShowingSideMenu: Bool

    var body: some View {
        ZStack(alignment: .topTrailing) {

            Button(action: {
                withAnimation(.spring()) {
                    isShowingSideMenu.toggle()
                }
            }) {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .padding()
            }

            VStack(alignment: .leading) {
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 64, height: 64)
                    // .padding()
                    //.background(Color.blue)
                    .clipShape(Circle())

                Text("Jayco Bea")
                    .font(.system(size: 24, weight: .semibold))

                Text("@jcobea")
                    .font(.system(size: 14))

                HStack(spacing: 12) {
                    HStack(spacing: 4) {
                        Text("1,234")
                            .bold()
                        Text("Following")
                    }

                    HStack(spacing: 4) {
                        Text("1M")
                            .bold()
                        Text("Followers")
                    }

                    Spacer()
                }
                .padding(.top, 8)

                Spacer()
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

//struct SideMenuHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenuHeaderView()
//    }
//}
