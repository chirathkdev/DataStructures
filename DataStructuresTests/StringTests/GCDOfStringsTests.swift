//
//  GCDOfStringsTests.swift
//  DataStructuresTests
//
//  Created by Chirath Kumarasiri on 2023-05-08.
//

import XCTest
@testable import DataStructures

/*
 Greatest Common Divisor of Strings.
 For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).
 Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.
 
 Complexity:
 Time complexity: O(n + m)
 Space complexity: O(n + m)
 */

final class GCDOfStringsTests: XCTestCase {

    private let gcdofStrings = GCDOfStrings()
    
    private func test1() {
        
        let str1 = "ABCABC", str2 = "ABC"
        let output = "ABC"
        let input = gcdofStrings.getDivisor(str1, str2)
        XCTAssertEqual(input, output)
    }
    
    private func test2() {
        
        let str1 = "ABABAB", str2 = "ABAB"
        let output = "AB"
        let input = gcdofStrings.getDivisor(str1, str2)
        XCTAssertEqual(input, output)
    }
    
    private func test3() {
        
        let str1 = "TEST", str2 = "CODE"
        let output = ""
        let input = gcdofStrings.getDivisor(str1, str2)
        XCTAssertEqual(input, output)
    }
}
