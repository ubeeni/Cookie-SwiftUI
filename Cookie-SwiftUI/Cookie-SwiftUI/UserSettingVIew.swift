//
//  UserSettingView.swift
//  Cookie-SwiftUI
//
//  Created by 김유빈 on 2023/11/25.
//

import SwiftUI

struct UserSettingView: View {
    @State var isNotification = false
    
    var circleSize = 100.0
    
    
    let userName = "name" //임시용
    let Version = "1.0.0"
    
    var body: some View {
        ZStack() {
            Color(UIColor.white).ignoresSafeArea(.all)
            VStack() {
                VStack() {
                    Button("Edit") {
                        //navigation
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 300, bottom: 0, trailing: 0))
                
                VStack() {
                    ZStack() {
                        RoundedRectangle(cornerRadius: 50)
                            .fill(.white)
                            .frame(width: .infinity, height: .infinity)
                            .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 0)
                            .overlay(
                                Text("dd")
                            )
                            .padding(EdgeInsets(top: circleSize/2, leading: 20, bottom: 0, trailing: 20))
                        Circle()
                            .fill(.white)
                            .frame(width: circleSize + 7)
                            .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 0)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 600.0, trailing: 0))
                        Circle()
                            .fill(.blue)
                            .frame(width: circleSize)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 600.0, trailing: 0))
                    }
                }
                .padding(.top, 50)
                .ignoresSafeArea(.all)
            }
        }
    }
}
//
//#Preview {
//    UserSettingView(isNotification: false, circleSize: 100)
//}
