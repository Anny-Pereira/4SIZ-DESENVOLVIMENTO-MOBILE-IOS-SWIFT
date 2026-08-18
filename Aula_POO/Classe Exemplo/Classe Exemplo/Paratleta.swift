//
//  Paratleta.swift
//  Classe Exemplo
//
//  Created by Usuário Convidado on 17/08/26.
//

import Cocoa

class Paratleta: Atleta {
    
    var deficiencia:String
    
    override init(){
        deficiencia=""
        super.init()
    }
    
    override func exibirAtleta()->String{
        return super.exibirAtleta() + "deficiencia relatada \(self.deficiencia)"
    }

}
