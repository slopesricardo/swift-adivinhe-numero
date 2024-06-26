//
//  InterfaceComUsuario.swift
//  adivinhe-o-numero
//
//  Created by José Ricardo on 25/06/24.
//

import Foundation

func telaDeBoasVindas() {
    print("**************************")
    print("*                        *")
    print("* Seja Bem Vindo ao Jogo *")
    print("*                        *")
    print("**************************")
}

func solicitarChute() -> Int {
    print("Escolha um número:")
    let chuteDoUsuario = readLine()
    
    guard let chuteDoUsuario = chuteDoUsuario else { return -1 }
    let chute: Int? = Int(chuteDoUsuario)
    
    guard let chute = chute else { return -1 }
    return chute
}

func mensagemDeCerto() {
    print("Você acertou.")
}

func mensagemDeErro() {
    print("Infelizmente você errou.")
}

func mensagemChuteMenor(_ chute: Int?, _ tentativaMaior: Int?) {
    guard let chute = chute, let tentativaMaior = tentativaMaior else { return }
    print("Numero secreto está entre \(chute) e \(tentativaMaior)")
}

func mensagemChuteMaior(_ chute: Int?, _ tentativaMenor: Int?) {
    guard let chute = chute, let tentativaMenor = tentativaMenor else { return }
    print("Numero secreto está entre \(tentativaMenor) e \(chute)")
}

func perguntaSeDesejaContinuar() -> Int {
    print("Deseja tentar novamente? 1- Sim 0- Não")
    let opcaoEscolhida = readLine()
    
    guard let opcaoEscolhida = opcaoEscolhida else { return -1 }
    let opcao: Int? = Int(opcaoEscolhida)
    
    guard let opcao = opcao else { return -1 }
    return opcao
}
