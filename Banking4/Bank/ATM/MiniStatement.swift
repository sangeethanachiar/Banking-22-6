//
//  MiniStatement.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class MiniStatement{
    var ban = Bank()
    func transactionHistory(index: Int){
        //var accountIndex = ban.getAccountByIndex(accountNo: cards[index].account.accNo)
        //var obj =  Login()
        //obj.transactionHistory(index: accountIndex)
            
        if(cards[index].account.transactions.count  == 0){
            print("No transactions")
        }
        else{
        print(" s.no            Amount         Description")
        for i  in     0..<cards[index].account.transactions.count {
            print("\(i+1)  \( cards[index].account.transactions[i].amount)    \( cards[index].account.transactions[i].description!)")
        }
    }
}
}
