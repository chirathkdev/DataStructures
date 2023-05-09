//
//  NoAdjacentIndexes.swift
//  DataStructures
//
//  Created by Chirath Kumarasiri on 2023-05-09.
//

import Foundation

/*
 You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

 Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.
 */

class NoAdjacentIndexes {
    
    func canPlaceFlowers(_ flowerbed: [Int],  _ n: Int) -> Bool {

        var flowerbed = flowerbed
        var placed = 0
        
        for (index, plot) in flowerbed.enumerated() where plot != 1 {
            
            let prevIndex = index - 1
            let nextIndex = index + 1
            
            if prevIndex >= 0 && flowerbed[prevIndex] != 0 { continue }
            
            if nextIndex < flowerbed.count && flowerbed[nextIndex] != 0 { continue }
            
            flowerbed[index] = 1
            placed += 1
        }
        
        return placed >= n
    }
}
