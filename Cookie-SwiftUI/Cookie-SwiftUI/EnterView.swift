//
//  EnterView.swift
//  Cookie-SwiftUI
//
//  Created by 김유빈 on 2023/11/25.
//

import SwiftUI

struct EnterView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            VStack {
                Text("참여코드 입력")
                    .font(
                        Font.system(size: 24)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .padding(.top, 20)
                
                Spacer()
                
                Button("참여하기") {
                    
                }
                .font(
                    Font.system(size: 24)
                        .weight(.semibold)
                )
                .foregroundColor(.black)
                .frame(width: 329, height: 70)
                .background(.white)
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 2)
                .padding(.bottom, 20)
                
                Spacer()
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
            }
        )
    }
}
    
