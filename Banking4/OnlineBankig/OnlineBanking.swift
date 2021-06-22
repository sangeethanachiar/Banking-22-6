//
//  OnlineBanking.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
var  myAccount : Account  = Account(accNo: 0, accBalance: 0, transactions: [])
class OnlineBanking {
    
    var atm = ATM1()
    var ban = Bank()
    
    func openApp(){
        let obj = Login()
    obj.login()
}
}
