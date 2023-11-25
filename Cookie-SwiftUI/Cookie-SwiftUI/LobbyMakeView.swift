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
    @State private var openPhoto = false
    @State private var uiImage: UIImage? = UIImage(systemName: "person.crop.circle.fill")
    
    var body: some View {
        VStack {
            Text("그룹 만들기")
                .font(
                    Font.system(size: 24)
                        .weight(.semibold)
                )
                .foregroundColor(.black)
            
            Image(uiImage: uiImage ?? UIImage(systemName: "person.crop.circle.fill")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .onTapGesture {
                    self.openPhoto = true
                }
                .sheet(isPresented: $openPhoto) {
                    ImagePicker(sourceType: .photoLibrary, selectedImage: self.$uiImage, uiImage: self.$uiImage)
                } .padding(.vertical, 10)
            
            TextField("제목", text: $title)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal)
            
            TextField("부제목", text: $subtitle)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal)
            
            Spacer()
            
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
        }
        .padding(.top, 20)
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
