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
        var b = a
        b.remove(at: i)
        print(b)
        var r = b
        r.reverse()
        print(r)
        if r == b {
            print(b)
            return i
        } else {
            continue
        }
    }
    return -1
}

print(palindromeIndex(s: "raa"))

