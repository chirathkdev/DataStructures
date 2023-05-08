//
//  GCDOfStrings.swift
//  DataStructures
//
//  Created by Chirath Kumarasiri on 2023-05-08.
//

import Foundation

/*
 Greatest Common Divisor of Strings.
 For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).
 Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.
 
 Complexity:
 Time complexity: O(n + m)
 Space complexity: O(n + m)
 */

class GCDOfStrings{
    
    func getDivisor(_ str1: String, _ str2: String) -> String {
        
        guard (str1 + str2) == (str2 + str1) else { return "" }
        
        let gcd = gcd(str1.count, str2.count)
        return String(str1.prefix(gcd))
    }
 
    func gcd(_ x: Int, _ y: Int) -> Int {
        
        if y == 0 {
            return x
        } else {
            return gcd(y, x % y)
        }
    }
}
