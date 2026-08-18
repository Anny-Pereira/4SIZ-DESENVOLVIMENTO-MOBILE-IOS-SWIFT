//
//  Atleta.swift
//  Classe Exemplo
//
//  Created by Usuário Convidado on 10/08/26.
//

import Foundation

class Atleta : AlimentoSolido, AlimentoLiquido{
    var nome:String
    var idade:Int
    
    init(){
        self.nome = ""
        self.idade = 0
    }
    
    init(nome:String, idade:Int){
        self.nome = nome
        self.idade = idade
    }
    
    //exemplo de metedo com return
    func calcularIMC2(peso: Float, altura:Float)-> Float{
        return peso/pow(altura, 2)
    }
    
    //metodo de instancia, precisa de um objeto para ser chamado
    func exibirAtleta()-> String{
        return " Atleta é " + self.nome
    }
    
    //-> significa retorno
    //método de classe, ou sej, não precisa de um obj para ser chamado
    //pra isso colocar class antes da palavra func, como se fosse em java o metodo
    class func alerta()->String {
        return "A competicao irá iniciar em breve"
    }
    
    //overload - sobreposição (quando tem método com o mesmo nome e parâmetros diferentes
    class func alerta(TempoEmMinutos: Int)->String {
        return "A competicao irá iniciar em \(TempoEmMinutos) minutos"
    }
    
    //método com parametro opcional
    func inscreverNaCompeticao(modalidade: String, cidade: String?=nil )-> String{
        if cidade == nil {
            return "inscrito na competição para \(modalidade)"
        } else {
            return "inscrito na competição para \(modalidade) em \(cidade!)"
        }
    }
    
    //chamando os métodos do protocolo
    //cada implementaçao do método faz uma coisa diferente
    func comerCarboidrato() {
        print("Servindo batata-doce para atleta \(self.nome)")
    }
    
    func beberIsotonico() {
        print("Servindo Gatorade para atleta \(self.nome)")
    }
    
}
