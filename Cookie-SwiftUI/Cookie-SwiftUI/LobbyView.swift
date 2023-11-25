//
//  LobbyView.swift
//  Cookie-SwiftUI
//
//  Created by 김유빈 on 2023/11/25.
//

import SwiftUI

struct LobbyView: View {
    @State private var hasRoom: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                if hasRoom {
                    RoomView()
                } else {
                    NoRoomView()
                }
            }
            .navigationBarItems(
                trailing: HStack {
                    NavigationLink(destination: UserSettingView()) {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                            .padding(.trailing, 20)
                    }
                }
            )
        }
    }
}

struct RoomView: View {
    var body: some View {
        Text("방이 있습니다")
            .font(.title)
            .foregroundColor(.red)
    }
}

struct NoRoomView: View {
    var body: some View {
        HStack {
            NavigationLink(destination: LobbyMakeView()) {
                Text("호스트되기")
                    .font(
                        Font.system(size: 17)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .frame(width: 180, height: 68)
                    .background(Color(red: 0.98, green: 0.98, blue: 0.98).opacity(0.98))

                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 2)
            }
            NavigationLink(destination: EnterView()) {
                Text("코드입력")
                    .font(
                        Font.system(size: 17)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .frame(width: 180, height: 68)
                    .background(Color(red: 0.98, green: 0.98, blue: 0.98).opacity(0.98))

                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 2)
            }
        }
        Spacer()
    }
}
