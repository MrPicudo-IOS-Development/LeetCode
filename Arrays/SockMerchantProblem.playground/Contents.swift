/* INSTRUCTIONS:
 
 There is a large pile of socks that must be paired by color. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.

 Example
 
 n = 7
 ar = [1, 2, 1, 2, 1, 3, 2]

 There is one pair of color 1 and one of color 2. There are three odd socks left, one of each color. The number of pairs is 2.

 *Function Description*

 Complete the sockMerchant function in the editor below.

 sockMerchant has the following parameter(s):

 int n: the number of socks in the pile
 int ar[n]: the colors of each sock
 Returns

 int: the number of pairs
 Input Format

 The first line contains an integer n, the number of socks represented in ar.
 The second line contains n space-separated integers, ar[i], the colors of the socks in the pile.

 Constraints
 1 <= n <= 100
 a <= ar[i] <= 100 where 0 <= i < n
 
 */

import SwiftUI

var n = 10
var ar = [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]

func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Creamos un diccionario para contar las ocurrencias de cada color
    var sorted: [Int: Int] = [:]
    // Iteramos sobre todo el arreglo
    for sock in ar {
        // Si encontramos ese color, le agregamos 1 a su valor en el diccionario, de lo contrario, no se modifica.
        sorted[sock, default: 0] += 1
    }
    // Variable que contará el número de pares
    var pairs = 0
    // Iteramos sobre los valores de cada clave en el diccionario
    for (_, value) in sorted {
        // Agregamos a la variable el resultado total de parejas de cada color
        pairs += value/2
    }
    return pairs
}

let pairs = sockMerchant(n: n, ar: ar)
