//
//  MergeStringsAlternatelyTests.swift
//  DataStructuresTests
//
//  Created by Chirath Kumarasiri on 2023-05-07.
//

import XCTest
@testable import DataStructures

/*
 You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

 Return the merged string.
*/

final class MergeStringsAlternatelyTests: XCTestCase {

    private let mergeStringsAlternately = MergeStringsAlternately()
    
    private func test1() {
        
        let word1 = "abc", word2 = "pqr"
        let output = "apbqcr"
        let input = mergeStringsAlternately.mergeNormally(word1, word2)
        XCTAssertEqual(input, output)
    }
    
    private func test2() {
        
        let word1 = "ab", word2 = "pqrs"
        let output = "apbqrs"
        let input = mergeStringsAlternately.mergeNormally(word1, word2)
        XCTAssertEqual(input, output)
    }
    
    private func test3() {
        
        let word1 = "abcd", word2 = "pq"
        let output = "apbqcd"
        let input = mergeStringsAlternately.mergeNormally(word1, word2)
        XCTAssertEqual(input, output)
    }
}
