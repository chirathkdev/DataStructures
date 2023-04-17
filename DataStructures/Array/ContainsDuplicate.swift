//
//  ContainsDuplicate.swift
//  DataStructures
//
//  Created by Chirath Kumarasiri on 2023-04-16.
//

import Foundation

//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

class ContainsDuplicate {
    
    func checkSlow(in nums: [Int]) -> Bool {
        
        var nums2 = [Int]()
        for num in nums {            
            if nums2.contains(num) {
                return true
            } else {
                nums2.append(num)
            }
        }
        return false
    }
    
    func checkFast(in nums: [Int]) -> Bool {
        Set(nums).count != nums.count
    }

}

