/*
 문제 설명

 어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식을 시저 암호라고 합니다. 예를 들어 "AB"는 1만큼 밀면 "BC"가 되고, 3만큼 밀면 "DE"가 됩니다. "z"는 1만큼 밀면 "a"가 됩니다. 문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수, solution을 완성해 보세요.
 
 
 제한 조건
 공백은 아무리 밀어도 공백입니다.
 s는 알파벳 소문자, 대문자, 공백으로만 이루어져 있습니다.
 s의 길이는 8000이하입니다.
 n은 1 이상, 25이하인 자연수입니다.

 */

func solution(_ s:String, _ n:Int) -> String {
    
    let dict: [Int:String] = [1:"a", 2:"b", 3:"c", 4:"d", 5:"e", 6:"f", 7:"g", 8:"h", 9:"i", 10:"j", 11:"k", 12:"l", 13:"m", 14:"n", 15:"o", 16:"p", 17:"q", 18:"r", 19:"s", 20:"t", 21:"u", 22:"v", 23:"w", 24:"x", 25:"y", 26:"z"]
    var count: Int = 1
    var a: String = ""
    var result: String = ""
    
    for i in s {
        a = String(i)
        if i == " " {
            result += a
        } else {
            if a == a.lowercased() {
                while count <= 26 {
                    if a == dict[count]! {
                        count += n
                        if count > 26 {
                            count -= 26
                        }
                        result += dict[count]!
                        count = 27
                    } else {
                        count += 1
                    }
                }
            } else {
                a = a.lowercased()
                while count <= 26 {
                    if a == dict[count]! {
                        count += n
                        if count > 26 {
                            count -= 26
                        }
                        result += dict[count]!.uppercased()
                        count = 27
                    } else {
                        count += 1
                    }
                }
            }
        }
        count = 1
    }
    
    return result
}
