//
//  NoAdjacentIndexesTests.swift
//  DataStructuresTests
//
//  Created by Chirath Kumarasiri on 2023-05-09.
//

import XCTest
@testable import DataStructures

/*
 You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

 Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.
 */

final class NoAdjacentIndexesTests: XCTestCase {
    
    private let noAdjacentIndexes = NoAdjacentIndexes()
    
    func test1() {
           let value = noAdjacentIndexes.canPlaceFlowers([1,0,0,0,1], 1)
           XCTAssertEqual(value, true)
       }
       
       func test2() {
           let value = noAdjacentIndexes.canPlaceFlowers([1,0,0,0,1], 2)
           XCTAssertEqual(value, false)
       }
}
