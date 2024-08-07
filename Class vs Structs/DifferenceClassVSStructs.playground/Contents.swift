/* Diferencias entre clases y estructuras. Todo se resume a que las variables generan un espacio de memoria reservado para almacenar su valor, y este espacio de memoria puede ser compartido por varias variables cuando estamos hablando de "reference types" o puede ser copiado múltiples veces, para que cada quién tenga su copia independiente, cuando es "value type". Las clases son referenciadas y las estructuras de por valor.
 Existen 2 estructuras de datos que se utilizan para hacer las reservas de espacios de memoria en el software, cuando se crea una variable o un objeto, estas son: Stack y Heap.
 */

/// Las clases crean objetos por REFERENCIA. Se crean en el HEAP (un proceso más costoso y pesado). Debemos inicializar los parámetros o crear un INIT explícito. Son recomendables para realizar acciones adicionales al almacenamiento de datos, como en los ViewModels, Controllers, etc. Las necesitamos cuando queremos usar herencia.
class Dog {
    let race: String
    var name: String
    var age: Int
    
    // Inicializador o constructor de la clase, este no se debe definir en una estructura porque se hace automáticamente.
    init(race: String, name: String, age: Int) {
        self.race = race
        self.name = name
        self.age = age
    }
}

var toby = Dog(race: "Husky", name: "Toby", age: 5)
var manchitas = toby // "manchitas" no tiene una copia independiente de "toby", solo está accediendo a ella (reference type)

manchitas.name = "Manchitas"

print(toby.name)
print(manchitas.name)


/// Las estructuras crean objetos por VALOR. Se crean en el STACK (ejecución inmediata) y por eso suelen ser preferidas. Crean de manera automática un INIT con tantos parámetros como propiedades tenga, pero si definimos uno nosotros, este iniciador automático no se crea (a menos que agreguemos nuestro inicializador personalizado en una extensión de la estructura). Son recomendables para guardar datos.
struct Cat {
    let race: String
     var name: String
    var age: Int
}

var xuen = Cat(race: "Gray", name: "Xuen", age: 10)
var arthas = xuen // "arthas" tiene una copia independiente de "xuen", todos los valores se copiaron y se pueden modificar independiente de los valores del objeto original.

arthas.name = "Arthas"

print(xuen.name)
print(arthas.name)
