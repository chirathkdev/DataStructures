//
//  MergeSortedArray.swift
//  DataStructures
//
//  Created by Chirath Kumarasiri on 2023-04-17.
//

import Foundation

/*
 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.
 
 Merge nums1 and nums2 into a single array sorted in non-decreasing order.
 
 The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.
 */

class MergeSortedArray {
    
    func getArray(from nums1: [Int], withLength m: Int, from nums2: [Int], withLength n: Int) -> [Int] {
        
        var lastA = m - 1
        var lastB = n - 1
        var curr = m + n - 1
        
        var nums = nums1
        
        while lastA >= 0, lastB >= 0 {
            
            if nums1[lastA] >= nums2[lastB] {
                nums[curr] = nums1[lastA]
                lastA -= 1
            } else {
                nums[curr] = nums2[lastB]
                lastB -= 1
            }
            curr -= 1
        }
        
        while lastB >= 0 {
            nums[curr] = nums2[lastB]
            lastB -= 1
            curr -= 1
        }
        return nums
    }
}
