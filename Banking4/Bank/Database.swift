//
//  Database.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 18/06/21.
//

import Foundation
class Database{
   var ban = Bank()
    func createDatabase(){
    var account1 = Account(accNo:101,accBalance: 500,transactions:[])
    var account2 = Account(accNo:102,accBalance: 10000,transactions:[])
    
    accounts.append(account1)
  accounts.append(account2)
    
    var card1 = DebitCard(cardNo: 0000000000001111 , expiryDate: 0921, cvv: 789, pinNo: "8911", account: account1, cardStatus: true, pinValidationCount: 0)
    
    var card2 = DebitCard(cardNo: 0000000000002222, expiryDate: 0822, cvv: 890, pinNo: "7800", account: account2, cardStatus: true, pinValidationCount: 0)
    
   cards.append(card1)
   cards.append(card2)
    
    var user1 = User(name: "Joy", city: "Chennai", accountNo: 1, cardNo: 0000000000001111 , cardType: .credit )
    var user2 = User(name: "Jack", city: "Bangalore", accountNo: 2, cardNo: 0000000000002222, cardType: .debit)
    
   users.append(user1)
    users.append(user2)
}
}

