//
//  MaximumSubarray.swift
//  DataStructures
//
//  Created by Chirath Kumarasiri on 2023-04-17.
//

import Foundation

// Given an integer array nums, find the subarray with the largest sum, and return its sum. This is also called Kadane's algorithm.

class MaximumSubarray {
    
    func getSubArray(in nums: [Int]) -> Int {
        var currSum = nums[0]
        var maxSum = nums[0]
        
        for i in 1..<nums.count {
            currSum = max(nums[i], currSum + nums[i])
            maxSum = max(currSum, maxSum)
        }
        return maxSum
    }
    
}
