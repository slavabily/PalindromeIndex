//
//  main.swift
//  PalindromeIndex
//
//  Created by slava bily on 12.11.2021.
//

import Foundation

func palindromeIndex(s: String) -> Int {
    let a = Array(s)
    for i in 0..<a.count {
        // checking if string is already a palindrome
        if a[i] == a[a.count - 1 - i] {
            return -1
        }
    }
    return 0
}

print(palindromeIndex(s: "bcb"))

