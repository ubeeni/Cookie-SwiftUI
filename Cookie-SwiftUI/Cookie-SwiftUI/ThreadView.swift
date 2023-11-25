//
//  ThreadView.swift
//  Cookie-SwiftUI
//
//  Created by 김유빈 on 2023/11/25.
//

import SwiftUI

struct ThreadView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ZStack() {
                Color(UIColor.gray)
                    .ignoresSafeArea(.all)
                    VStack() {
                        ZStack() {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white)
                                .frame(width: 360, height: 91)
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.gray)
                                .frame(width: 80, height: 80)
                        }
                        
                        Spacer()
                        HStack() {
                            ZStack() {
                                Rectangle()
                                    .frame(width: 1, height: nil, alignment: .center)
                                    .foregroundStyle(Color.black)
                                Circle()
                                    .fill(.gray)
                                    .frame(width: 10)
                            }
                            .padding(.leading, 20)
                            
                            ScrollView {
                                VStack() {
                                    ZStack() {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(.white)
                                            .frame(width: 320)
                                        
                                        VStack() {
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(.gray)
                                                .frame(width: 260, height: 200)
                                                .padding(.top, 10)
                                            HStack() {
                                                Text("time")
                                                Spacer()
                                                Image(systemName: "square.and.pencil")
                                            }
                                            .padding(.top, 10)
                                            HStack() {
                                                Text("소제목")
                                                Text("작성자")
                                            }
                                            Text("내용")
                                            HStack() {
                                                Text("내용")
                                                Spacer()
                                                Text("리플")
                                            }
                                            
                                        }
                                        .frame(width: 260)
                                        
                                    }
                                    VStack{
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Color.white)
                                                .frame(width: 320, height: 160)
                                            VStack {
                                                Spacer()
                                                
                                                Text("가가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사나다라마바사")
                                                    .font(.system(size: 16))
                                                    .multilineTextAlignment(.leading)
                                                    .lineSpacing(3)
                                                    .padding(35)
                                                    .frame(width: 320, height: nil)
                                                    .fixedSize(horizontal: false, vertical: true)
                                                HStack() {
                                                    Text("time")
                                                    Spacer()
                                                    Image(systemName: "square.and.pencil")
                                                }
                                                .padding(.top, 10)
                                                HStack() {
                                                    Text("소제목")
                                                    Text("작성자")
                                                }
                                                Text("내용")
                                                HStack() {
                                                    Text("내용")
                                                    Spacer()
                                                    Text("리플")
                                                }
                                                Spacer()
                                            }
                                        }
                                    }
                                }
                            }
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
