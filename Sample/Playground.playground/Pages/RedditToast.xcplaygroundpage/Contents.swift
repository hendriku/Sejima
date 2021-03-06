//: [Previous](@previous)

import UIKit
import PlaygroundSupport
import Sejima

MUToast.appearance().displayDuration = 0
MUToast.appearance().cornerRadius = 4
MUToast.appearance().titleColor = .white
MUToast.appearance().backgroundColor = .black
MUToast.appearance().indicatorColor = .red
MUToast.appearance().indicatorWidth = 10
MUToast.appearance().detailColor = .white

MUButton.appearance().borderWidth = 2
MUButton.appearance().cornerRadius = 4.0

// Global View

let vc = UIViewController()
vc.view.backgroundColor = .lightGray
vc.view.frame = CGRect(x: 0, y: 0, width: 375, height: 667)

let toast = MUToast()
//toast.icon = #imageLiteral(resourceName: "reddit")
toast.buttonHeight = 40.0
toast.spacing = 8
toast.buttonSpacing = 16
toast.displayPosition = .bottom
toast.title = "Sorry, can't reach Reddit"
toast.titleFont = .boldSystemFont(ofSize: 18)
toast.detail = "Sorry, can't reach Reddit. Sorry, can't reach Reddit. Sorry, can't reach Reddit. Sorry, can't reach Reddit. Sorry, can't reach Reddit. Sorry, can't reach Reddit. Sorry, can't reach Reddit."
toast.detailFont = .systemFont(ofSize: 14)
toast.show(in: vc, onTap: {
    print("toast has been tapped")
}, completion: { dismiss in
    print("toast has been dismissed > ", dismiss)
})

let cancel = MUButton()
cancel.title = "YES! THAT'S WORK"
cancel.titleFont = .boldSystemFont(ofSize: 14)
cancel.buttonBackgroundColor = .clear
cancel.borderColor = .orange

let okay = MUButton()
okay.title = "CONFIRMATION"
okay.titleFont = .boldSystemFont(ofSize: 14)
okay.buttonBackgroundColor = .red
okay.borderColor = .red

toast.add(view: UIView())
toast.add(view: cancel) { view in
    print("Button did tap cancel")
}
toast.add(view: okay) { view in
    print("Button did tap ok")
    toast.hide()
}

PlaygroundPage.current.liveView = vc

//: [Next](@next)
