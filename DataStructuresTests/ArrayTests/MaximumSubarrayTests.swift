//
//  MaximumSubarrayTests.swift
//  DataStructuresTests
//
//  Created by Chirath Kumarasiri on 2023-04-17.
//

import XCTest
@testable import DataStructures

// Given an integer array nums, find the subarray with the largest sum, and return its sum. This is also called Kadane's algorithm.

final class MaximumSubarrayTests: XCTestCase {

    private let maximumSubarray = MaximumSubarray()
    
    private func test1() {
        
        let nums = [-2,1,-3,4,-1,2,1,-5,4], output = 6
        let input = maximumSubarray.getSubArray(in: nums)
        XCTAssertEqual(input, output)
    }
    
    private func test2() {
        
        let nums = [1], output = 1
        let input = maximumSubarray.getSubArray(in: nums)
        XCTAssertEqual(input, output)
    }
    
    private func test3() {
        
        let nums = [5,4,-1,7,8], output = 23
        let input = maximumSubarray.getSubArray(in: nums)
        XCTAssertEqual(input, output)
    }

}
