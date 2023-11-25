//
//  ContentView.swift
//  Cookie-SwiftUI
//
//  Created by 김영준 on 11/25/23.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @State private var isAnonymous = false
    @State private var uid = ""

    var body: some View {
        VStack {
            if isAnonymous {
                Text("익명으로 로그인됨")
                Text("UID: \(uid)")
            } else {
                Button("익명으로 로그인") {
                    authenticateAnonymously()
                }
            }
        }
    }

    private func authenticateAnonymously() {
        Auth.auth().signInAnonymously { authResult, error in
            if let error = error {
                print("익명으로 로그인 중 오류 발생: \(error.localizedDescription)")
            } else if let user = authResult?.user {
                self.isAnonymous = user.isAnonymous
                self.uid = user.uid
            }
        }
    }
}

/*
#Preview {
    ContentView()
}
*/
