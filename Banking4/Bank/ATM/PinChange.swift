//
//  PinChange.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class PinChange {
    var ban = Bank()
    func pinChange(index:Int){
        print("Enter  new pin")
        let newPin = readLine()!
       cards[index].pinNo = newPin
        print("Pin changed")
    }
}
