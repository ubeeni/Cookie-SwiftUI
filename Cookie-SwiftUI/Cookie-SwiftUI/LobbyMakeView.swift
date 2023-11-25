//
//  LobbyMakeView.swift
//  Cookie-SwiftUI
//
//  Created by 김유빈 on 2023/11/25.
//

import SwiftUI

struct LobbyMakeView: View {
    @State private var title: String = ""
    @State private var subtitle: String = ""
    @State private var place: String = ""
    @State private var openPhoto = false
    @State private var uiImage: UIImage? = UIImage(systemName: " ")
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {
                Text("그룹 만들기")
                    .font(
                        Font.system(size: 24)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 380, height: 538)
                        .cornerRadius(40)
                        .shadow(color: Color(red: 0.34, green: 0.17, blue: 0.17).opacity(0.25), radius: 5, x: 0, y: 2)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.6, green: 0.6, blue: 0.6).opacity(0.6), lineWidth: 1)
                        )
                    
                    VStack {
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                                .frame(width: 352, height: 309)
                                .cornerRadius(40)
                                .shadow(color: Color(red: 0.34, green: 0.17, blue: 0.17).opacity(0.25), radius: 5, x: 0, y: 2)
                            
                            if let selectedImage = uiImage {
                                Image(uiImage: selectedImage)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 352, height: 309)
                                    .clipShape(Circle())
                            }
                            
                            Button(action: {
                                self.openPhoto = true
                            }) {
                                Image("plus")
                            }
                            .sheet(isPresented: $openPhoto) {
                                ImagePicker(sourceType: .photoLibrary, selectedImage: self.$uiImage, uiImage: self.$uiImage)
                            }
                        }
                        
                        HStack {
                            VStack {
                                TextField("그룹 이름", text: $title)
                                    .padding()
                                    .font(
                                        Font.system(size: 24)
                                            .weight(.semibold)
                                    )
                                TextField("부제목", text: $subtitle)
                                    .padding()
                                    .font(
                                        Font.system(size: 20)
                                            .weight(.semibold)
                                    )
                            }
                        }
                        .padding(.top, 50)
                        .padding(.bottom, 10)
                    }
                }
                
                Button("만들기") {
                    
                }
                .font(
                    Font.system(size: 20)
                        .weight(.semibold)
                )
                .foregroundColor(.black)
                .frame(width: 329, height: 70)
                .background(.white)
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 2)
                .padding(.bottom, 20)
                .padding(.top, 20)
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
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.trailing, 20)
                    }
                    
                }
            }
        )
    }
}
struct ImagePicker: UIViewControllerRepresentable {
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    @Binding var selectedImage: UIImage?
    @Binding var uiImage: UIImage?
    
    @Environment(\.presentationMode) private var presentationMode
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        var parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImage = image
                parent.uiImage = image
            }
            
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}
