//
//  MergeSortedArrayTests.swift
//  DataStructuresTests
//
//  Created by Chirath Kumarasiri on 2023-04-17.
//

import XCTest
@testable import DataStructures

/*
 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.
 
 Merge nums1 and nums2 into a single array sorted in non-decreasing order.
 
 The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.
 */

final class MergeSortedArrayTests: XCTestCase {

    private let mergeSortedArray = MergeSortedArray()
    
    private func test1() {
        
        let nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
        let output = [1,2,2,3,5,6]
        let input = mergeSortedArray.getArray(from: nums1, withLength: m, from: nums2, withLength: n)
        XCTAssertEqual(input, output)
    }
    
    private func test2() {
        
        let nums1 = [1], m = 1, nums2: [Int] = [], n = 0
        let output = [1]
        let input = mergeSortedArray.getArray(from: nums1, withLength: m, from: nums2, withLength: n)
        XCTAssertEqual(input, output)
    }
    
    private func test3() {
        
        let nums1 = [0], m = 0, nums2 = [1], n = 1
        let output = [1]
        let input = mergeSortedArray.getArray(from: nums1, withLength: m, from: nums2, withLength: n)
        XCTAssertEqual(input, output)
    }
}
