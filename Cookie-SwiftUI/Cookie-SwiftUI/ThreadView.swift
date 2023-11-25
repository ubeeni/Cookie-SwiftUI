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
            VStack() {
                ZStack() {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 90)
                        .shadow(color: Color(red: 0.34, green: 0.17, blue: 0.17).opacity(0.25), radius: 5, x: 0, y: 2)
                    HStack() {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Color(red: 0.85, green: 0.85, blue: 0.85))
                            .frame(width: 80, height: 80)
                        VStack(alignment: .leading) {
                            HStack() {
                                Text("NEWJEANS")
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundStyle(Color(red: 0.21, green: 0.07, blue: 0.07))
                                Spacer()
                                Text("2023.11.25")
                                    .font(.system(size: 12))
                                    .foregroundStyle(Color(red: 0.6, green: 0.6, blue: 0.6).opacity(0.6))
                            }
                            Text("내가만든쿠키 너를위해구웠지")
                                .font(.system(size: 16))
                                .foregroundStyle(Color(red: 0.6, green: 0.6, blue: 0.6).opacity(0.6))
                        }
                    }
                    .frame(width: 345, height: 90)
                }
                ScrollView(showsIndicators: false) {
                    HStack() {
                        Spacer()
                        ZStack() {
                            Rectangle()
                                .fill(Color(red: 0.89, green: 0.89, blue: 0.89))
                                .frame(width: 1, height: 180)
                            Circle()
                                .fill(Color(red: 0.95, green: 0.64, blue: 0.75))
                                .frame(width: 18)
                                .padding(.top, -40)
                        }
                        .padding(.trailing, 15)
                        ZStack(){
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundStyle(.white)
                                .frame(width: 290, height: 160)
                                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 0)
                                .offset(x: 5)
                            VStack(alignment: .leading) {
                                HStack() {
                                    Text("해커톤 시작!")
                                        .font(.system(size: 20, weight: .bold))
                                        .foregroundStyle(.black)
                                    Image(systemName: "square.and.pencil")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .padding(EdgeInsets(top: 0, leading: 130, bottom: 5, trailing: 0))
                                }
                                Text("25일 오전 10시부터 26일 오후 2시까지! 열심히 해봐요오~")
                                    .font(.system(size: 16, weight: .none))
                                    .foregroundStyle(.black)
                                    .padding(.top, 1)
                                HStack() {
                                    Image(systemName: "person.crop.circle")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .padding(.trailing, 5)
                                    Text("username")
                                        .font(.system(size: 11, weight: .none))
                                        .foregroundStyle(Color(red: 0.67, green: 0.67, blue: 0.67))
                                    Text("time")
                                        .font(.system(size: 11, weight: .none))
                                        .foregroundStyle(Color(red: 0.67, green: 0.67, blue: 0.67))
                                    
                                }
                                .padding(.top, 5)
                            }
                            .padding(.leading, 20)
                        }
                        Spacer()
                    }
                    HStack() {
                        ZStack() {
                            Rectangle()
                                .fill(Color(red: 0.89, green: 0.89, blue: 0.89))
                                .frame(width: 1, height: 180)
                            Circle()
                                .fill(Color(red: 0.95, green: 0.64, blue: 0.75))
                                .frame(width: 18)
                                .padding(.top, -40)
                        }
                        .padding(.trailing, 15)
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundStyle(.white)
                            .frame(width: 290, height: 160)
                            .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 0)
                            .offset(x: 5)
                    }
                    .padding(.top, -8)
                    HStack() {
                        ZStack() {
                            Rectangle()
                                .fill(Color(red: 0.89, green: 0.89, blue: 0.89))
                                .frame(width: 1, height: 390)
                            Circle()
                                .fill(Color(red: 0.95, green: 0.64, blue: 0.75))
                                .frame(width: 18)
                                .padding(.top, -120)
                        }
                        .padding(.trailing, 15)
                        ZStack() {
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundStyle(.white)
                                .frame(width: 290, height: 370)
                                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 0)
                            VStack(alignment: .leading) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 260, height: 210)
                                    .background(.white.opacity(0.5))
                                    .background(
                                        LinearGradient(
                                            stops: [
                                                Gradient.Stop(color: Color(red: 0.95, green: 0.74, blue: 0.11), location: 0.00),
                                                Gradient.Stop(color: Color(red: 0.95, green: 0.58, blue: 0.26), location: 0.38),
                                            ],
                                            startPoint: UnitPoint(x: 0.5, y: 0),
                                            endPoint: UnitPoint(x: 0.5, y: 1)
                                        )
                                    )
                                    .cornerRadius(35)
                                    .padding(.top, -20)
                                
                                HStack() {
                                    Text("해커톤 시작!")
                                        .font(.system(size: 20, weight: .bold))
                                        .foregroundStyle(.black)
                                    Image(systemName: "square.and.pencil")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .padding(EdgeInsets(top: 0, leading: 130, bottom: 5, trailing: 0))
                                }
                                .padding(.top, 15)
                                Text("25일 오전 10시부터 26일 오후 2시까지! 열심히 해봐요오~")
                                    .font(.system(size: 16, weight: .none))
                                    .foregroundStyle(.black)
                                    .padding(.top, 1)
                                HStack() {
                                    Image(systemName: "person.crop.circle")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .padding(.trailing, 5)
                                    Text("username")
                                        .font(.system(size: 11, weight: .none))
                                        .foregroundStyle(Color(red: 0.67, green: 0.67, blue: 0.67))
                                    Text("time")
                                        .font(.system(size: 11, weight: .none))
                                        .foregroundStyle(Color(red: 0.67, green: 0.67, blue: 0.67))
                                }
                            }
                            
                        }
                        .offset(x: 5)
                    }
                    .padding(.top, -8)
                    HStack() {
                        ZStack() {
                            Rectangle()
                                .fill(Color(red: 0.89, green: 0.89, blue: 0.89))
                                .frame(width: 1, height: 80)
                            Circle()
                                .fill(Color(red: 0.95, green: 0.64, blue: 0.75))
                                .frame(width: 18)
                        }
                        .padding(.trailing, 15)
                        ZStack() {
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundStyle(Color.white)
                                .frame(width: 290, height: 60)
                                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 0)
                                .offset(x: 5)
                            Button {
                            } label: {
                                Image(systemName: "plus.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(Color(red: 0.67, green: 0.67, blue: 0.67))
                            }
                        }
                    }
                    .padding(.top, -8)
                }
                
            }
            .background(Image("background")
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea())
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
                    NavigationLink(destination: UserSettingView(toggleManager: ToggleManager())) {
                        
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

#Preview {
    ThreadView()
}
