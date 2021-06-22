//
//  File1.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class Account{
    var accNo : Int
    var accBalance : Double
    var transactions : [Transaction]
  final  var minBalance = 500
    
    
    init(accNo:Int,accBalance: Double,transactions:[Transaction]){
        self.accNo = accNo
        self.accBalance = accBalance
        self.transactions = transactions
        
    }
}
