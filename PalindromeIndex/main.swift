//
//  main.swift
//  PalindromeIndex
//
//  Created by slava bily on 12.11.2021.
//

import Foundation

func palindromeIndex(s: String) -> Int {
    
    let sArray = s.map { String($0) }
    let reversedArray = Array(sArray.reversed())
    
    guard sArray != reversedArray else { return -1 }
    let n = s.count
    let k = n/2
    
    for i in 0...k {
        if sArray[i] != reversedArray[i] {
            if sArray[i+1...n-1-i] == reversedArray[i...n-2-i] {
                return i
            } else if sArray[i...n-i-2] == reversedArray[i+1...n-1-i] {
                return n-i-1
            }
        }
    }
    return -1
}

print(palindromeIndex(s: "azaa"))

