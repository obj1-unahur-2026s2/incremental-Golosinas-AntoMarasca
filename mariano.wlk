import golosinas.*

object mariano {
    const bolsaDeGolosinas = []

    method comprar(unaGolosina) {
        bolsaDeGolosinas.add(unaGolosina)
    }
    method desechar(unaGolosina) {
        bolsaDeGolosinas.remove(unaGolosina)
    }
    method cantidadDeGolosinas() {
        return bolsaDeGolosinas.size()
    }
    method tieneLaGolosina(unaGolosina) {
        return bolsaDeGolosinas.contains(unaGolosina)
    }
    method probarGolosinas() {
        bolsaDeGolosinas.forEach({b => b.recibeMordisco()})
    }
    method hayGolosinaSinTACC() {
        return bolsaDeGolosinas.any({b => !b.contieneGluten()})
    }
    method preciosCuidados() {
        return bolsaDeGolosinas.all({b => b.precio() <= 10})
    }
    method golosinaDeSabor(unSabor) {
        return bolsaDeGolosinas.find({b => b.sabor() == unSabor})
    }
    method golosinasDeSabor(unSabor) {
        return bolsaDeGolosinas.filter({b => b.sabor() == unSabor})
    }
    method sabores() {
        return bolsaDeGolosinas.map({b => b.sabor()}).asSet()
    }
    method golosinaMasCara() {
        return bolsaDeGolosinas.max({b => b.precio()})
    }
    method pesoGolosinas() {
        return bolsaDeGolosinas.sum({b => b.peso()})
    }
    method golosinasFaltantes(golosinasDeseadas) {
        return golosinasDeseadas.asSet().difference(bolsaDeGolosinas.asSet())
    }
    method gustosFaltantes(gustosDeseados) {
        return gustosDeseados.difference(self.sabores())
    }
    method gastoEn(sabor) {
        return self.golosinasDeSabor(sabor).sum({b => b.precio()})
    }
    method saborMasPopular() {
        return 
    }
}