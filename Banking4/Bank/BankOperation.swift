//
//  BankOperation.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 21/06/21.
//

import Foundation
var accountNumber = 1
var cardNo = 1111111111111111
var expirydate = 0125
var cvv = 890
var result = -1
var   transArray1 : [Transaction] = []
class BankOperation{
    var ban = Bank()
    func openAccount(){
        
        accountNumber += 1
       print("Enter Name")
        let name = readLine()!
        print("Enter city")
        let city = readLine()!
        print("Enter min amount greater than or equal to 500 to open an account")
        let amount = Double(readLine()!)!
        if(amount >= 500){
        var account = Account(accNo: accountNumber,accBalance:amount , transactions: [])
        print("Account Created. Account No : \(accountNumber)")
            accounts.append(account)
           // print(ban.accounts.count)
            
        }
        else{
            print("Amount less than minimum balance")
        }
        
        var user1 = User(
            name: name, city: city, accountNo: accountNumber,cardNo: 0, cardType: .none)
        
        users.append(user1)
       
      //  ban.viewAccounts()
        
    }
  
    func issueCard(index1 : Int,index2 : Int){
     var result =   ban.checkCards(index: index1)
        if (result == 0 ){
        print("Enter card type")
        var type = readLine()!
        
        print("Enter your pin")
        let pin = readLine()!
        
        if(type == "credit"){
            accounts[index1].accBalance += 5000
            var card = CreditCard(cardNo: cardNo, expiryDate: expirydate, cvv: cvv, pinNo: pin, account: accounts[index1],cardStatus:true,pinValidationCount : 0)
           
          cards.append(card)
           users[index2].cardType = .credit
        }
        else if ( type == "debit"){
            var card = DebitCard(cardNo: cardNo, expiryDate: expirydate, cvv: cvv, pinNo: pin, account: accounts[index1],cardStatus:true,pinValidationCount : 0)
           cards.append(card)
          users[index2].cardType = .debit
        }
        print("Card issued.Card No : \(cardNo)")
       
       
        cardNo += 1
        expirydate += 1
        cvv += 1
        
        
    }
    
    else {
    print("Card already issued for this account")
    }
}

    func closeAccount(index1: Int,index2 : Int){
        var cardNo = ban.getCardnoFromAccountno(accountNo: accounts[index1].accNo)
        var ind = ban.getCardsByIndex(cardNo: cardNo)
       cards.remove(at: ind)
      accounts.remove(at: index1)
        users.remove(at: index2)
    print("Account Closed")
}
    func withdraw(index1 : Int,amt:Int)->Int{
        
        if(Double(amt) < accounts[index1].accBalance){
            if((accounts[index1].accBalance - Double(amt)) > 500){
            accounts[index1].accBalance   -= Double(amt)
            result = 0
                
              var  trans1 = Transaction(amount: Double(amt),description : "Withdraw from Account")
               transArray1.append(trans1)
                
                print("Amount Debted : \(amt)")
                    print("Available Balance : \(accounts[index1].accBalance)")
                if(ban.checkCards(index: index1) == -1){
                    var cardNo = ban.getCardnoFromAccountno(accountNo: accounts[index1].accNo)
                    var cardIndex = ban.getCardsByIndex(cardNo: cardNo)
                    cards[cardIndex].account.transactions.append(trans1)
                    
                }
                else{
                    accounts[index1].transactions.append(trans1)
                }
        }
            else{
                print("Insufficient Balance")
                
            }
            
        }
        else{
            print("Insufficient Balance")
            
        }
        
       return result
        
    }
    
    func depositCash(index1 : Int){
        print("Enter amount in multiple of Rs 100")
        let amt = Double(readLine()!)!
        accounts[index1].accBalance   += amt
        print("Anount added. Account Balance :\(accounts[index1].accBalance)")
        var   transArray : [Transaction] = []
      let   trans2 = Transaction(amount: Double(amt),description : "Deposited to  Account")
        transArray.append(trans2)
       
        if(ban.checkCards(index: index1) == -1){
            var cardNo = ban.getCardnoFromAccountno(accountNo: accounts[index1].accNo)
            var cardIndex = ban.getCardsByIndex(cardNo: cardNo)
            cards[cardIndex].account.transactions.append(trans2)
            
        }
        else{
            accounts[index1].transactions.append(trans2)
        }
        }
    func transferFund(index1 : Int){
        
  var   transArray : [Transaction] = []
    let ch = Int(readLine()!)!
   print("Enter the Benficiary account Number")
    let accountNo = Int(readLine()!)!
    print("Enter the amount")
    var amt = Double(readLine()!)!
    print("Enter Description")
    let des = readLine()!
    let trans3 = Transaction(amount:amt,description : des)
   transArray.append(trans3)
   
    
  
    if (amt > 500 ){
        if(amt < accounts[index1].accBalance){
           accounts[index1].accBalance -= amt
            
            if(ban.checkCards(index: index1) == -1){
                var cardNo = ban.getCardnoFromAccountno(accountNo: accounts[index1].accNo)
                var cardIndex = ban.getCardsByIndex(cardNo: cardNo)
                cards[cardIndex].account.transactions.append(trans3)
               
            }
            else{
                accounts[index1].transactions.append(trans3)
            }
            print("Amount transfered")
        }
        else{
            print("Amount insufficient in your account")
        }
    }
    }
}


