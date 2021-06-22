//
//  File.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class Bank{
  
    
    var accounts:[Account] = []
    var cards:[Card] = []
    var users:[User] = []
    
    func getChoice2(){
        print("1.Admin\n2.User")
        let ch = Int(readLine()!)!
        switch(ch){
        case 1:
            print("1.Open Account\n2.Issue Card\n3.Close Account\n")
            let ch1 = Int(readLine()!)!
            switch(ch1){
            case 1:
                openAccount()
                getChoice2()
            case 2:
                issueCard()
                getChoice2()
            case 3:
                closeAccount()
                getChoice2()
            default:
                print("invalid")
            }
        case 2:
            print("1.Deposit cash\n2.TransferFunds")
            let ch2 = Int(readLine()!)!
            switch(ch2){
            case 1:
                depositCash()
            case 2:
                print("..")
                //transferFunds()
            default:
                print("invalid")
            }
        default :
            print("Invalid Choice")
        }
    }
    func getAccountByIndex(accountNo: Int)->Int{
        var result = 0
       // for item in accounts{
      /*  func viewAccounts(){
            for  i in 0..<accounts.count{
                print("\(i)   \(accounts[i].accNo)")
            }
        }
        viewAccounts() */
        print("\(accounts.count)")
        if(accounts.count == 0 ){
            print("Account does not exist")
        }
       
        for i in 0..<accounts.count{
            if accounts[i].accNo == accountNo{
                         result =  i
                    }
                    else{
                         result = -1
                    }
                    
                }
         return result
        
    }
    func getCardsByIndex(cardNo: Int)->Int{
        var result = 0
        for i in 0..<cards.count{
            if cards[i].cardNo == cardNo{
                         result =  i
                print("\(i)")
                    }
                    else{
                         result = -1
                        print("\(i)")
                    }
                    
                }
         return result
    }
    func getUserByIndex(accountNo: Int)->Int{
        var result = 0
        print("\(users.count)")
        if(users.count == 0 ){
            print("Account does not exist")
        }
       
        for i in 0..<users.count{
            if users[i].accountNo == accountNo{
                         result =  i
                    }
                    else{
                         result = -1
                    }
                    
                }
         return result
        
    }
   
    
    
    
   
    
    func depositCash(){
        print("Enter account Number")
        let accountNo = Int(readLine()!)!
        print("Enter Amount")
        let amt = Double(readLine()!)!
        var ind  = getAccountByIndex(accountNo: accountNo)
        accounts[ind].accBalance += amt
        print("Anount added. Account Balance :\(accounts[ind].accBalance)")
    }
}

