//
//  MailView.swift
//  Lifeguard Times
//
//  Created by TECH1 on 5/4/23.
//

import Foundation
import MessageUI
import UIKit
import SwiftUI

struct MailView: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentation
    var messageBody = ""
    var title = ""

    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        @Binding var presentation: PresentationMode

        init(presentation: Binding<PresentationMode>) {
            _presentation = presentation
        }

        func mailComposeController(_: MFMailComposeViewController,
                                   didFinishWith result: MFMailComposeResult,
                                   error: Error?) {
            $presentation.wrappedValue.dismiss()
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(presentation: presentation)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.setToRecipients(["info@elifeguard.com"])
        vc.setSubject(title)
        vc.setMessageBody(messageBody, isHTML: false)
        vc.mailComposeDelegate = context.coordinator
        return vc
    }

    func updateUIViewController(_: MFMailComposeViewController,
                                context _: UIViewControllerRepresentableContext<MailView>) {}
}
