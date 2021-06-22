//
//  Bank.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
var accounts:[Account] = []
var cards:[Card] = []
var users:[User] = []
class Bank{
 
    
    
    func getUserType(){
       
    print("1.New user\n2.Existing user\n")
    print("Enter your choice")
    let ch = Int(readLine()!)!
        switch(ch){
        case 1:
            let obj1 = BankOperation()
            obj1.openAccount()
            getUserType()
        case 2:
            existingUser()
        default:
            print("Invalid")
            }
    }
    
    func existingUser(){
      //  viewAccounts()
        print("Enter the Account no")
        let accountNo = Int(readLine()!)!
        let ind1  = getAccountByIndex(accountNo: accountNo)
        
        if(ind1 != -1){
            let ind2 = getUserByIndex(accountNo: accountNo)
        print("1.Issue Card\n2.Close Account\n3.DepositCash\n4.WithdrawCash\n5.TransferFund\n6.TransactionHistory")
        let ch1 = Int(readLine()!)!
        switch(ch1){
     
        case 1:
            let obj1 = BankOperation()
            obj1.issueCard(index1: ind1,index2 : ind2)
           getUserType()
        case 2:
            
            let obj1 = BankOperation()
            
            obj1.closeAccount(index1: ind1, index2: ind2)
           
            getUserType()
        case 3:
           
            let obj1 = BankOperation()
           
            obj1.depositCash(index1: ind1)
            getUserType()
            
        case 4:
            print("Enter amount in multiple of Rs 100")
            let amt = Double(readLine()!)!
            let obj1 = BankOperation()
            obj1.withdraw(index1 : ind1, amt: Int(amt))
            
            getUserType()
        case 5:
           
            let obj1 = BankOperation()
            obj1.transferFund(index1 : ind1)
           
            getUserType()
        case 6:
            var obj2 = Login()
            obj2.transactionHistory(index: ind1)
        default:
            print("invalid")
        }
        }
        else{
            print("Account doesnot exist")
        }
}
    func getAccountByIndex(accountNo: Int)->Int{
        var result = -1
       
        
        for i in 0..<accounts.count{
            if accounts[i].accNo == accountNo{
                         result =  i
                    }
                    
                    
                }
         return result
        
    
    }
    func getCardsByIndex(cardNo: Int)->Int{
        var result =  -1
        
        
        for i in 0..<cards.count{
            if cards[i].cardNo == cardNo{
                         result =  i
               // print("card index is \(i)")
                    }
                    
                    
                }
        
         return result
    }
        
    func getUserByIndex(accountNo: Int)->Int{
        var result = -1
        
        
        
       for i in 0..<users.count{
            if users[i].accountNo == accountNo{
                         result =  i
                    }
                    
                    
                }
         return result
        
    }
    func getCardnoFromAccountno(accountNo : Int)->Int{
        var result = -1
        for i in 0..<cards.count{
            if cards[i].account.accNo == accountNo{
                result = cards[i].cardNo
            }
        }
        return result
    }
    
    
    func getUserIndexFromCardno(cardNo : Int)-> Int{
        var result = -1
        for i in 0..<users.count{
            if users[i].cardNo == cardNo {
                result = i
            }
            
        }
        return result
    }
    func viewAccounts(){
        print("total \(users.count)")
        for item in users{
            print(" \(item.name)    \(item.accountNo)")
        }
    }
    
    func checkCards(index: Int)->Int{
        var result = 0
        for item in cards{
            if(item.account.accNo == accounts[index].accNo){
                print("card no is \(item.cardNo)")
            result = -1
        }
            
    }
    
        return result
    
    
    }
    
    
}
        


