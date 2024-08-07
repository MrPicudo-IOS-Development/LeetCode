/*
 Task description
 1. Define model to store data.
 2. Parse data and create instances from it.

 Chart positions: UK CAN FRA NOR US

 Please refrain from using Google or any other documentation,
 consider asking us your questions, we are happy to help you
 */

// "Title;ReleaseDate;Label;UK;CAN;FRA;NOR;US",

let records = [
    "A Hard Day's Night;26 June 1964;United Artists (US);1;1;5;—;1;",
    "Beatles for Sale;4 December 1964;Parlophone (UK);1;-;—;—;—;",
    "Beatles '65;15 December 1964;Capitol (US);—;1;80;—;1;",
    "Rubber Soul;3 December 1965;Parlophone (UK);1;1;5;—;1;",
    "Revolver;5 August 1966;Parlophone (UK);1;1;5;14;1;",
    "Sgt. Pepper's Lonely Hearts Club Band;26 May 1967;Parlophone (UK), Capitol (US);1;7;4;1;1;",
    "Magical Mystery Tour;27 November 1967;Parlophone (UK), Capitol (US);31;—;2;13;1;",
    "Yellow Submarine;13 January 1969;Apple (UK), Capitol (US);3;1;4;1;2;",
    "Abbey Road;26 September 1969;Apple;1;1;1;1;1;",
    "Let It Be;8 May 1970;Apple;1;1;5;1;1;"
]


/* Aquí comienza la solución */

// Definimos la estructura que usaremos para crear los objetos que recibirán los datos. Es preferible usar constantes que variables para los atributos, solamente usamos variables si es que sabemos que van a cambiar los valores, por lo tanto, una buena pregunta de entrevista para hacerle al entrevistador es si se espera que cambien los valores o no.
struct Record {
    let title: String
    let releaseDate: String
    let label: String
    let uk: Int?
    let can: Int?
    let fra: Int?
    let nor: Int?
    let us: Int?
}

// Ahora creamos un arreglo VACÍO de objetos de tipo Record.
var recs = [Record]()

// Usamos una función para convertir cada valor de las subcadenas que contienen valores de número, al respectivo valor, o a nulo, si es necesario.
func dataToInt(num: Substring) -> Int? {
    if num == "-" {
        return nil
    } else {
        return Int(num) ?? 0 // Al convertir un String a un Int haciendo el cast explícito, obtenemos un Int?
        // Por eso usamos un "nil coalescing operator" para obtener un Int o un "cero" en caso de que no sea un número, pero eso en teoría no pasa aquí, porque primero se quitan los casos en donde el número no existe (es guíon -), y después se pasa a convertir el número.
    }
}

// Iteramos sobre todos los renglones de la constante "records".
for record in records {
    // El método "split()" de las variables tipo String, regresa un tipo de dato conocido como Substring.
    let object: [Substring] = record.split(separator: ";")
    // Ahora, para cada renglón de datos de nuestra constante "records", vamos a crear un nuevo objeto de tipo Record y lo vamos a agregar al arreglo vacío que creamos. No necesitamos otro ciclo, al agregarlo al arreglo para cada record es suficiente.
    recs.append(Record(title: String(object[0]), releaseDate: String(object[1]), label: String(object[2]), uk: dataToInt(num: object[3]), can: dataToInt(num: object[4]), fra: dataToInt(num: object[5]), nor: dataToInt(num: object[6]), us: dataToInt(num: object[7])))
}

