//
//  UserSettingEditView.swift
//  Cookie-SwiftUI
//
//  Created by 김영준 on 11/25/23.
//

import SwiftUI

struct UserSettingEditView: View {
    var circleSize = 100.0
    
    var body: some View {
        ZStack() {
            Color(UIColor.gray).ignoresSafeArea(.all)
            
            VStack() {
                Button("SAVE") {
                    //navigation
                }
            }
            .padding(EdgeInsets(top: 0, leading: 300, bottom: 0, trailing: 0))
                
            VStack() {
                ZStack() {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(.white)
                        .frame(width: .infinity, height: .infinity)
                        .overlay(
                            Text("dd")
                        )
                        .padding(.top, circleSize/2)
                    Circle()
                        .fill(.white)
                        .frame(width: circleSize + 7)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 600.0, trailing: 0))
                    Circle()
                        .fill(.blue)
                        .frame(width: circleSize)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 600.0, trailing: 0))
                }
            }
            .padding(.top, 150)
            .ignoresSafeArea(.all)
        }
    }
}

