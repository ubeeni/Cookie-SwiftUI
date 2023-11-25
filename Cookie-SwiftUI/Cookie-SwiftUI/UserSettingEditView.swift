//
//  UserSettingEditView.swift
//  Cookie-SwiftUI
//
//  Created by 김영준 on 11/25/23.
//

import SwiftUI

struct UserSettingEditView: View {
    let circleSize = 80.0
    let roundedRectangleHeight: CGFloat = 650.0
    @Environment(\.presentationMode) var presentationMode
    
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
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
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
                    .offset(y: circleSize)
                }
            }
        }
        .navigationBarTitle("Custom Title", displayMode: .inline)
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
                        //서버 데이터 동기화
                    presentationMode.wrappedValue.dismiss()
                }) {
                    
                        Text("SAVE")
                            .font(Font.system(size: 17))
                            .foregroundStyle(Color.black)
                    
                }
//                .buttonStyle(RoundedRectangleButtonStyle2())
            }
        )
    }
}

//#Preview {
//    UserSettingEditView()
//}
