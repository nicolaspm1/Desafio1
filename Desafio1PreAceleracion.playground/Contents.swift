import UIKit

//MARK: - Ejercicio 1

typealias Direccion = (
    ciudad: String,
    partido: String,
    provincia: String,
    calle: [String: Any], // Ejercicio 2,
    pais: String,
    codigoPostal: Int,
    piso: Int?,
    departamento: String?
)

//MARK: - Ejercicio 3
let direccion1: Direccion = (
    ciudad: "Parque Chacabuco",
    partido: "CABA",
    provincia: "Buenos Aires",
    calle: [
        "nombreDeCalle": "Puan",
        "numero": "515",
        "entrecalle1": "Miro",
        "entrecalle2" : "Hortiguera"
    ],
    pais: "Argentina",
    codigoPostal: 1406,
    piso: 5,
    departamento: "D"
)


let direccion2: Direccion = (
    ciudad: "Congreso",
    partido: "CABA",
    provincia: "Buenos Aires",
    calle: [
        "nombreDeCalle": "Sarmiento",
        "numero": "1755",
        "entrecalle1": "Corrientes",
        "entrecalle2" : "Tte Gral Juan Domingo Peron"
    ],
    pais: "Argentina",
    codigoPostal: 1042,
    piso: 3,
    departamento: "A"
)



let direccion3: Direccion = (
    ciudad: "Caballito",
    partido: "CABA",
    provincia: "Buenos Aires",
    calle: [
        "nombreDeCalle": "Goyena",
        "numero": "115",
        "entrecalle1": "Bonifacio",
        "entrecalle2" : "Valle"
    ],
    pais: "Argentina",
    codigoPostal: 1424,
    piso: nil,
    departamento: nil
)

//MARK: - Ejercicio 4

func obtenerDireccion(direccion: Direccion) {
    print("""
    Ciudad: \(direccion.ciudad)
    Calle: \(direccion.calle["nombreDeCalle"]!) \(direccion.calle["numero"]!)
    Codigo Postal: \(direccion.codigoPostal)
    """)
}


obtenerDireccion(direccion: direccion1)


//MARK: - Ejercicio 5

func obtenerPisoYDepto(direcciones: [Direccion]) -> String {
    var mensaje = "\nDirecciones con piso y departamento declarado\n"
    
    var contadorDirecciones = 0
    
    for direccion in direcciones {
        
        if let piso = direccion.piso, let depto = direccion.departamento {
            contadorDirecciones += 1
            mensaje += "Direccion \(contadorDirecciones) piso \(piso); depto: \(depto)\n"
        }
    }
    
    return mensaje
}


print(obtenerPisoYDepto(direcciones: [direccion1, direccion2, direccion3]))
