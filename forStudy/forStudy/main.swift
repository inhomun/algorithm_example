//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ n:Int, _ m:Int) -> [Int] {
    func gcd(_ n: Int, _ m: Int) -> Int {
        if m == 0 {
            return n
        }
        else {
            return gcd(m, n % m)
        }
    }
    
    func lcm (_ n: Int, _ m: Int) -> Int {
        return n * m / gcd(n, m)
    }
    
    return [gcd(n, m), lcm(n, m)]
}
