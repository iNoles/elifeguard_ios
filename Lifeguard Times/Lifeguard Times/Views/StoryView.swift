//
//  StoryView.swift
//  Lifeguard Times
//
//  Created by TECH1 on 5/4/23.
//

import SwiftUI

struct StoryView: View {
    @State var title: String = ""
    @State var message: String = ""
    @State private var confirmationShown = false
    @State private var isShowingMailView = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack(alignment: .firstTextBaseline) {
                        Text("Story Title").font(.headline)
                        TextField("Enter your title", text: $title)
                    }
                    HStack(alignment: .center) {
                        Text("Story message").font(.headline)
                        TextEditor(text: $message)
                    }
                }.padding()
                Section {
                    Button("Submit", action: {
                        self.confirmationShown = true
                    }).confirmationDialog(
                        "Are you sure?", isPresented: $confirmationShown, actions: {
                            Button("Confirm", action: {
                                self.isShowingMailView = true
                            })
                    }, message: {
                        Text("I understand that by submitting this article, I am granting Lifeguard Times™ full rights and copyright ownership to publish it as it deems appropriate.")
                        }
                    )
                }
            }
            .navigationTitle("Submit Your Story")
            .sheet(isPresented: $isShowingMailView) {
                MailView(
                    messageBody: message, title: title
                )
            }
        }
        .navigationViewStyle(.stack)
    }
}

/*struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}*/
