//
//  Produtor.swift
//  Anny_RM553793_mod1
//
//  Created by Usuário Convidado on 09/11/26.
//

import UIKit

class Produtor {
    
    var nomeProdutor:String
    var documento: String
    var cidade: String
    var nichoProd: String
    var nomeProduto: String
    var valorUnitario: Double
    var quantidadeLote: Int
    var producaoOrganica: Bool
    
    init(){
        self.nomeProdutor = ""
        self.documento = ""
        self.cidade = ""
        self.nichoProd = ""
        self.nomeProduto = ""
        self.valorUnitario = 0.0
        self.quantidadeLote = 0
        self.producaoOrganica = false
    }
    
    init(nomeProdutor: String, documento: String, cidade: String, nichoProd: String, nomeProduto: String, valorUnitario: Double, quantidadeLote: Int, producaoOrganica: Bool) {
        self.nomeProdutor = nomeProdutor
        self.documento = documento
        self.cidade = cidade
        self.nichoProd = nichoProd
        self.nomeProduto = nomeProduto
        self.valorUnitario = valorUnitario
        self.quantidadeLote = quantidadeLote
        self.producaoOrganica = producaoOrganica
    }
    
   
    
    func cadastrarLoteProdutor(prod: Produtor)-> String{
        var produtor = Produtor(nomeProdutor: prod.nomeProdutor, documento: prod.documento, cidade: prod.cidade, nichoProd: prod.nichoProd, nomeProduto: prod.nomeProduto, valorUnitario: prod.valorUnitario, quantidadeLote: prod.quantidadeLote, producaoOrganica: prod.producaoOrganica)
        
        return "Cadastro realizado com sucesso :)"
    }
    
    func calcularValorLote()->Double{
        return self.valorUnitario * Double(self.quantidadeLote)
    }
    
}
