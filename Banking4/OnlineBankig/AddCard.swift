//
//  AddCard.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 21/06/21.
//

import Foundation
class AddCard{
    func addCreditCards(){
        print("Enter the card Number")
        let cardNo = Int(readLine()!)!
        var ind = ban.getCardsByIndex(cardNo: cardNo)
      // var  myCredit = ban.cards[ind]
        myCreditCard = Card(cardNo: ban.cards[ind].cardNo, expiryDate: ban.cards[ind].expiryDate, cvv: ban.cards[ind].cvv, pinNo: ban.cards[ind].pinNo, account: Account(accNo: ban.cards[ind].account.accNo, accBalance: ban.cards[ind].account.accBalance, transactions: ban.cards[ind].account.transactions), cardStatus: ban.cards[ind].cardStatus, pinValidationCount: ban.cards[ind].pinValidationCount)
        print("Card Added")
        }
}
