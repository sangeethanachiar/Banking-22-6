//
//  Printer.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class Printer{
    var ban = Bank()
    func printTransactionReciept(index: Int,amt:Int){
    print("----------TRANSACTION RECIEPT--------")
    print("Location : Chennai")
    print("Amount Debted : \(amt)")
        print("Available Balance : \(cards[index].account.accBalance)")
    }
    
    func printBalanceReciept(index :Int){
    print("----------BALANCE ENQUIRY RECIEPT--------")
    print("Location : Chennai ")
        print("Available Balance : \(cards[index].account.accBalance )")
    }

}
