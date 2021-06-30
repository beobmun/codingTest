/*
 문제 설명

 두 수를 입력받아 두 수의 최대공약수와 최소공배수를 반환하는 함수, solution을 완성해 보세요. 배열의 맨 앞에 최대공약수, 그다음 최소공배수를 넣어 반환하면 됩니다. 예를 들어 두 수 3, 12의 최대공약수는 3, 최소공배수는 12이므로 solution(3, 12)는 [3, 12]를 반환해야 합니다.
 
 
 제한 사항
 두 수는 1이상 1000000이하의 자연수입니다.

 */


func solution(_ n:Int, _ m:Int) -> [Int] {
    
    var i: Int = 1
    var j: Int = 1
    var k: Int = 1
    var l: Int = 1
    
    var nn: Int = n
    var mm: Int = m
    
    var divN: [Int] = []
    var divM: [Int] = []
    var div: [Int] = []
    var result: [Int] = []
    var commul: Int
    var comdiv: Int
    
    
    while i <= n {
        if n % i == 0 {
            divN.append(i)
        }
        i += 1
    }

    while j <= m {
        if m % j == 0 {
            divM.append(j)
        }
        j += 1
    }
    
    for x in divN {
        for y in divM {
            if x == y {
                div.append(x)
            }
        }
    }
    div.sort(by: >)
    
    comdiv = div[0]
    
    if div.count == 1 {
        commul = n * m
    } else {
        while nn != mm {
            if nn < mm {
                k += 1
                nn = n * k
            } else {
                l += 1
                mm = m * l
            }
        }
        commul = nn
    }
    
    result.append(comdiv)
    result.append(commul)
    result.sort()
    
    return result
}
