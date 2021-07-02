/*
 문제 설명

 정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.
 
 
 제한 사항
 n은 0 이상 3000이하인 정수입니다.
 
 */

func solution(_ n:Int) -> Int {
    var num: Int = 0
    var div: Int = 0
    
    while num < n {
        num += 1
        if n % num == 0 {
            div += num
        }
    }
    
    return div
}
