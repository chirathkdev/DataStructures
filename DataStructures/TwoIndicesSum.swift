//
//  TwoIndicesSum.swift
//  DataStructures
//
//  Created by Chirath Kumarasiri on 2023-04-16.
//

import Foundation

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.

class TwoIndicesSum {
    
    func getTwoIndices(inArray nums: [Int], for target: Int) -> [Int] {
        
        var dict = [Int:Int]()
        
        for (i,n) in nums.enumerated() {
            if let val = dict[target - n] {
                return [val, i]
            }
            dict[n] = i
        }
        return []
    }
}
