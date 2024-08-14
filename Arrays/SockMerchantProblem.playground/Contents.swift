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
    var aux = 0
    // Iteramos sobre los valores de cada clave en el diccionario
    for (_, value) in sorted {
        // Agregamos a la variable el resultado total de parejas de cada color
        pairs += value/2
    }
    return pairs
}

let pairs = sockMerchant(n: n, ar: ar)
