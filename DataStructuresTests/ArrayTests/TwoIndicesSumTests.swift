//
//  TwoIndicesSumTests.swift
//  DataStructuresTests
//
//  Created by Chirath Kumarasiri on 2023-04-16.
//

import XCTest
@testable import DataStructures

/*
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order.
*/

final class TwoIndicesSumTests: XCTestCase {

    private let twoIndicesSum = TwoIndicesSum()
    
    private func test1() {
        
        let nums = [2,7,11,15], target = 9, output = [0,1]
        let input = twoIndicesSum.getTwoIndices(inArray: nums, for: target)
        XCTAssertEqual(input, output)
    }
    
    private func test2() {
        
        let nums = [2,3,4], target = 6, output = [1,2]
        let input = twoIndicesSum.getTwoIndices(inArray: nums, for: target)
        XCTAssertEqual(input, output)
    }
    
    private func test3() {
        
        let nums = [3,3], target = 6, output = [0,1]
        let input = twoIndicesSum.getTwoIndices(inArray: nums, for: target)
        XCTAssertEqual(input, output)
    }
}
