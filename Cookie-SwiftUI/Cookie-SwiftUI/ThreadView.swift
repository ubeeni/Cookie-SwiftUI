//
//  ThreadView.swift
//  Cookie-SwiftUI
//
//  Created by 김유빈 on 2023/11/25.
//

import SwiftUI

struct ThreadView: View {
    @State private var selectedOption = "Option 1"
    let options = ["Option 1", "Option 2", "Option 3", "Option 4", "Option 5"]

    @Environment(\.presentationMode) var presentationMode
    let items: [String]
    
    var body: some View {
        NavigationView {
            ZStack() {
                //배경 이미지
                VStack() {
                    //Group 1
                    
                }
                ScrollView {
                    VStack() {
                        ZStack() {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white)
                                .offset(x: 20)
                        }
                        
                            
                    }
                    VStack() {
                        
                    }
                    VStack() {
                        
                    }
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
                    NavigationLink(destination: UserSettingView()) {

                    }
                }
                .buttonStyle(RoundedRectanglePlusButtonStyle())
            }
        )
    }
}


struct RoundedRectanglePlusButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        RoundedRectangle(cornerRadius: 15) // 원하는 값으로 조절
            .fill(configuration.isPressed ? Color.white : Color.gray)
            .frame(width: 40, height: 40)
            .overlay(
                Image(systemName: "plus.circle")
            )
            .padding()
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
