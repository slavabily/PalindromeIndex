//
//  main.swift
//  PalindromeIndex
//
//  Created by slava bily on 12.11.2021.
//

import Foundation

func palindromeIndex(s: String) -> Int {
    var a = Array(s)
    for _ in 0..<a.count - 1 {
        for i in 0..<a.count {
            // checking if string is already a palindrome
            if a[i] != a[a.count - 1 - i] {
                break
            } else {
                return -1
            }
        }
        let v = a.endIndex
        print(v - 1)
        a.removeLast()
    }
    return 0
}

print(palindromeIndex(s: "baa"))

