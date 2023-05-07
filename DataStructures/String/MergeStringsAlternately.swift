//
//  MergeStringsAlternately.swift
//  DataStructures
//
//  Created by Chirath Kumarasiri on 2023-05-07.
//

import Foundation

class MergeStringsAlternately {
    
    func mergeNormally(_ word1: String, _ word2: String) -> String {
        
        let word1 = Array(word1)
        let word2 = Array(word2)
        
        var i = 0
        var j = 0
        
        var result: String = ""
        
        while i < word1.count || j < word2.count {
            
            if i < word1.count {
                result.append(word1[i])
                i += 1
            }
            
            if j < word2.count {
                result.append(word2[j])
                j += 1
            }
        }
        
        return result
    }
    
    func mergeUsingZip(_ word1: String, _ word2: String) -> String {
        
        var result: String = ""
        
        for (ch1, ch2) in zip(word1, word2) {
            result += [ch1, ch2]
        }
        
        if word1.count < word2.count {
            result += word2[word1.endIndex...]
        } else {
            result += word1[word2.endIndex...]
        }
        
        return result
    }
}
