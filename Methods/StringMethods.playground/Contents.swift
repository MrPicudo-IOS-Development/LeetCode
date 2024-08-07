/* Los principales métodos de la clase String son los siguientes:
 
 .count -> Int
 Nos dice el número de caracteres de la cadena.
 
 .isEmpty -> Bool
 Verifica si la cadena está vacía o no.
 
 .lowercased() -> String
 Convierte toda la cadena a minúsculas.
 
 .uppercased() -> String
 Convierte toda la cadena a mayúsculas.
 
 .contains(_ other: String) -> Bool
 Verifica si la cadena contiene otra cadena específica dentro de ella.
 
 .split(separator: Character) -> [Substring]
 Crea un arreglo de subcadenas dividiendo la cadena original cada vez que encuentra al caracter indicado como "separator".
 
 .replacingOccurrences(of: String, with: String) -> String
 Reemplaza una cadena en específico que se encuentre dentro de la cadena original, con otra cadena.
 
 .prefix(_ maxLength: Int) -> Substring
 Crea una subcadena que se forma con los PRIMEROS n caracteres de la cadena original.
 
 .suffix(_ maxLength: Int) -> Substring
 Crea una subcadena que se forma con los ÚLTIMOS n caracteres de la cadena original.
 
 */

/// 01 Verificar la longitud de una contraseña
/// Verifica si una contraseña dada tiene al menos 8 caracteres, si no, manda un mensaje de error.

let password = "1234567"

if password.count < 8 {
    print("La contraseña debe tener al menos 8 caracteres")
}


/// 02 Verificar si es una cadena vacía
/// Dada una cadena, verifica si está vacía o si contiene solo espacios en blanco

let cadena = "      "
var check = false

if cadena.isEmpty {
    print("La cadena está vacía")
} else {
    for char in cadena {
        if char != " " {
            check = true
        }
    }
    if check {
        print("La cadena contiene otros caracteres")
    } else {
        print("La cadena contiene solo espacios")
    }
}


/// 03 Arreglo de formato en una cadena.
/// Dada una cadena en mayúsculas, deja la primer letra en mayúscula y convierte todas las demás en minúscula.

var message = "HOLA NECESITO AYUDA CON MI COMPUTADORA"
let correctMessage = message.prefix(1) + message.lowercased().dropFirst()


/// 04 Arreglo de formato en una cadena (2).
/// Dada una cadena en minúsculas, convierte la primer letra a mayúsculas y deja el resto en minúsculas.

var correo = "gracias por su atención."
let fixxed = correo.prefix(1).uppercased() + correo.dropFirst()


/// 05 Contar letras de la última palabra
/// Dada una cadena, obtén todos los caracteres después del último espacio e imprime cuántos son.

let note = "Esta carrera es apta para todo público"

let lastSpaceIndex = note.lastIndex(of: " ") ?? note.endIndex
let lastWord = note.suffix(from: note.index(after: lastSpaceIndex))
print("La última palabra es: \(lastWord) y tiene \(lastWord.count) letras.")
