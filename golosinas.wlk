//Parte 1

object bombon {
    var peso = 15

    method precio() = 5
    method sabor() = frutilla
    method peso() = peso
    method contieneGluten() = false
    method recibeMordisco(){
        peso = ((peso * 0.8) - 1).max(0)
    }
}

object alfajor {
    var peso = 300

    method precio() = 12
    method sabor() = chocolate
    method peso() = peso
    method contieneGluten() = true
    method recibeMordisco(){
        peso = peso * 0.8
    }
}

object caramelo {
    var peso = 5

    method precio() = 1
    method sabor() = frutilla
    method peso() = peso
    method contieneGluten() = false
    method recibeMordisco(){
        peso = (peso - 1).max(0)
    }
}

object chupetin {
    var peso = 7

    method precio() = 2
    method sabor() = naranja
    method peso() = peso
    method contieneGluten() = false
    method recibeMordisco(){
        if (peso >= 2 ) {
            peso = peso * 0.9 
        }
    }
}

object oblea {
    var peso = 250

    method precio() = 5
    method sabor() = vainilla
    method peso() = peso
    method contieneGluten() = true
    method recibeMordisco(){
        if (peso > 70) {
            peso = peso * 0.5
        } else {
            peso = peso * 0.75
        }
    }
}

object chocolatin {
    var peso = 30
    const pesoInicial = 30

    method precio() = 0.5 * pesoInicial
    method sabor() = chocolate
    method peso() = peso
    method contieneGluten() = true
    method recibeMordisco(){
        peso = peso - 2
    }
}

object golosinaBañada {
    var golosinaBase = oblea
    var pesoBaniado = 4

    method cambiarGolosina(nuevaGolosina) {
        golosinaBase = nuevaGolosina
    } 
    method precio() = golosinaBase.precio() + 2
    method sabor() = golosinaBase.sabor()
    method peso() = golosinaBase.peso() + pesoBaniado
    method contieneGluten() = golosinaBase.contieneGluten()
    method recibeMordisco(){
        if (pesoBaniado >= 2) {
            golosinaBase.recibeMordisco()
            pesoBaniado -= 2
        } else {
            golosinaBase.recibeMordisco()
        }
    }
}

object pastillaTuttiFrutti {
    var gluten = true
    var sabor = frutilla

    method cambiarGluten() {
        gluten = !gluten
    }
    method precio() {
        if (gluten) {
            return 10
        } else {
            return 7
        }
    }
    method sabor() = sabor
    method peso() = 5
    method contieneGluten() = gluten
    method recibeMordisco() {
        sabor = sabor.cambioDeSabor()
    }
}

object frutilla {
    method cambioDeSabor() = chocolate
}
object chocolate {
    method cambioDeSabor() = naranja
}
object naranja {
    method cambioDeSabor() = vainilla
}
object vainilla {
    method cambioDeSabor() = frutilla
}