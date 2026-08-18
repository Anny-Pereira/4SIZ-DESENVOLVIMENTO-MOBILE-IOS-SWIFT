//
//  main.swift
//  Classe Exemplo
//
//  Created by Usuário Convidado on 10/08/26.
//

import Foundation

//print("Hello, World!")

//criando o objeto a
var a = Atleta()

//fazendo o set
a.nome = "Ana"
a.idade = 20

//fazendo o get
print("Nome: \(a.nome)")
print("Idade: \(a.idade)")

//fazendo o get em uma só linha
print("Atleta \(a.nome) tem \(a.idade) anos")

//criando um segundo objeto
//utilizando o construtor com parâmetros
var a2 = Atleta(nome: "José", idade: 40)
print("Atleta \(a2.nome) tem \(a2.idade) anos")


//observe que o metodo de classe (estático)foi chamado sem o objeto
print(Atleta.alerta())

//chamando o método de parametro opcional
let resp = a2.inscreverNaCompeticao(modalidade: "Judô")
print(resp)
let resp2 = a2.inscreverNaCompeticao(modalidade: "Nataçao", cidade: "Santos")
print(resp2)

//chamndo a herança
var p = Paratleta()
p.nome = "Jonas"
p.idade = 21
p.deficiencia = "Braço direito amputado"
print(p.exibirAtleta())

//usando o overloads
print(Atleta.alerta())
print(Atleta.alerta(TempoEmMinutos: 20))

//chamando os métodos do protocolo (a mesma coisa que interfaces do java)
a.comerCarboidrato()
a2.beberIsotonico()
