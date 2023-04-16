//
//  ContainsDuplicateTests.swift
//  DataStructuresTests
//
//  Created by Chirath Kumarasiri on 2023-04-16.
//

import XCTest
@testable import DataStructures

//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

final class ContainsDuplicateTests: XCTestCase {
    
    private let containsDuplicate = ContainsDuplicate()
    
    private func test1() {
        
        let nums = [1,2,3,1]
        let input = containsDuplicate.checkFast(in: nums)
        XCTAssertTrue(input)
    }
    
    private func test2() {
    
        let nums = [1,2,3,4]
        let input = containsDuplicate.checkFast(in: nums)
        XCTAssertFalse(input)
    }
    
    private func test3() {
    
        let nums = [1,1,1,3,3,4,3,2,4,2]
        let input = containsDuplicate.checkFast(in: nums)
        XCTAssertTrue(input)
    }
}
