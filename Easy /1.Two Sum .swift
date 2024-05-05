//
//  1.Two Sum .swift
//  
//
//  Created by iSparshIT on 05/05/24.
//

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count < 2 { return [] }
        var mappingNumberToIndex = [Int: Int]()
    
        for (index, number) in nums.enumerated() {
            if let secondIndex = mappingNumberToIndex[target - number] {
                return [index, secondIndex]
            }
            mappingNumberToIndex[number] = index
        }
        return []
    }
}

var  arr = [1,2,3,4,5,6]
var arr2 = [7,8,9]

var a = Solution

print(a.twoSum(arr,arr2))

