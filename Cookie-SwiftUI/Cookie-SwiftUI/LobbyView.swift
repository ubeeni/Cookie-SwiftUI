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
        VStack {
            HStack {
                Text("COOKIE")
                    .font(
                        Font.system(size: 24)
                            .weight(.black)
                    )
                    .foregroundColor(Color(red: 0.21, green: 0.07, blue: 0.07))
                    .padding(.leading, 30)
                Spacer()
                NavigationLink(destination: UserSettingView(toggleManager: ToggleManager())) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.trailing, 20)
                }
            }
            
            ScrollView {
                VStack {
                    if hasRoom {
                        RoomView()
                    } else {
                        NoRoomView()
                    }
                }
            }
        }
        .background(Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea())
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
        VStack {
            HStack {
                NavigationLink(destination: EnterView()) {
                    HStack {
                        Image("plus-circle")
                            .padding(.leading, 15)
                        Text("JOIN하기")
                            .font(
                                Font.system(size: 17)
                                    .weight(.semibold)
                            )
                        
                        Spacer()
                    }
                    .foregroundColor(.black)
                    .frame(width: 270, height: 91)
                    .background(Color(red: 0.98, green: 0.98, blue: 0.98).opacity(0.98))
                    
                    .cornerRadius(20)
                    .shadow(color: Color(red: 0.34, green: 0.17, blue: 0.17).opacity(0.25), radius: 5, x: 0, y: 2)
                }
                
                NavigationLink(destination: LobbyMakeView()) {
                    Image("cookie")
                        .foregroundColor(.clear)
                        .frame(width: 80, height: 91)
                        .background(Color("OrangeColor"))
                        .cornerRadius(20)
                        .shadow(color: Color(red: 0.34, green: 0.17, blue: 0.17).opacity(0.25), radius: 5, x: 0, y: 2)
                }
            }
            .padding(.top, 0)
            
            HStack {
                Text("쿠키박스")
                    .font(
                        Font.system(size: 20)
                            .weight(.bold)
                    )
                    .foregroundColor(.black)
                
                Text("JOIN")
                    .font(
                        Font.system(size: 14)
                    )
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
            }
            .padding(.top, 15)
            .padding(.leading, 30)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("아직 열어본 쿠키박스가 없어요!")
                .font(
                    Font.system(size: 20)
                        .weight(.semibold)
                )
                .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                .padding(.top, 10)
                .padding(.leading, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("초대코드를 입력해 쿠키박스에 JOIN하세요")
                .font(
                    Font.system(size: 16)
                )
                .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                .padding(.leading, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Image("join-cookie")
            
            HStack {
                Text("쿠키박스")
                    .font(
                        Font.system(size: 20)
                            .weight(.bold)
                    )
                    .foregroundColor(.black)
                
                Text("HOST")
                    .font(
                        Font.system(size: 14)
                    )
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
            }
            .padding(.leading, 30)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("아직 만들어 본 쿠키박스가 없어요!")
                .font(
                    Font.system(size: 20)
                        .weight(.semibold)
                )
                .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                .padding(.top, 10)
                .padding(.leading, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("쿠키박스의 호스트가 되어보세요")
                .font(
                    Font.system(size: 16)
                )
                .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                .padding(.leading, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Image("host-cookie")
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}
