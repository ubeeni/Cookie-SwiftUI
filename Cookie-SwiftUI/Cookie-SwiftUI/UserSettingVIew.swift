//
//  UserSettingView.swift
//  Cookie-SwiftUI
//
//  Created by 김유빈 on 2023/11/25.
//

import SwiftUI

struct UserSettingView: View {
    @State var isNotification = false
    @Environment(\.presentationMode) var presentationMode
    
    let circleSize = 100.0
    let roundedRectangleHeight: CGFloat = 550.0
    
    let userName = "name" //임시용
    let Version = "1.0.0"
    
    var body: some View {
        NavigationView {
            ZStack() {
                Color(UIColor.gray)
                    .ignoresSafeArea(.all)
                VStack() {
                    
                    VStack() {
                        ZStack() {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(.white)
                                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 0)
                                .frame(height: roundedRectangleHeight)
                                .overlay(
                                    Text("dd")
                                )
                                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                            Circle()
                                .fill(.white)
                                .frame(width: circleSize + 7)
                                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 0)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: roundedRectangleHeight, trailing: 0))
                            Rectangle()
                                .fill(.white)
                                .frame(width: circleSize + 30, height: circleSize)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: roundedRectangleHeight - circleSize, trailing: 0))
                            Circle()
                                .fill(.blue)
                                .frame(width: circleSize)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: roundedRectangleHeight, trailing: 0))
                        }
                    }
                    .frame(height: roundedRectangleHeight + circleSize * 2)
                    .offset(y: circleSize - 40)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading: HStack {
                Button(action: {
                        presentationMode.wrappedValue.dismiss()
                }) {
                }
                .buttonStyle(RoundedRectangleButtonStyle())
            },
            trailing: HStack {
                Button(action: {
                        
                }) {
                    NavigationLink(destination: UserSettingEditView()) {
                        Text("EDIT")
                            .font(Font.system(size: 17))
                            .foregroundStyle(Color.black)
                    }
                }
            }
        )
    }
}

struct RoundedRectangleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        RoundedRectangle(cornerRadius: 15) // 원하는 값으로 조절
            .fill(configuration.isPressed ? Color.white : Color(red: 0.98, green: 0.98, blue: 0.98))
            .frame(width: 40, height: 40)
            .overlay(
                Image(systemName: "chevron.left")
            )
            .padding()
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
//#Preview {
//    UserSettingView(isNotification: false)
//}
