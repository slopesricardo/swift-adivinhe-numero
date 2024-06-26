//
//  main.swift
//  adivinhe-o-numero
//
//  Created by José Ricardo on 25/06/24.
//

import Foundation

telaDeBoasVindas()

let numeroSecreto: Int = gerarNumeroSecreto()

var chute: Int?
var opcao: Int?
var tentativaMaior: Int = 50
var tentativaMenor: Int = 1

repeat {
    chute = solicitarChute()
    let acertouChute = verificarChute(chute, numeroSecreto)
    
    if acertouChute {
        mensagemDeCerto()
        break
    } else {
        mensagemDeErro()
        let numeroSecretoMenor = verificarSeChuteMenor(chute, numeroSecreto)
        
        if numeroSecretoMenor {
            mensagemChuteMenor(chute, tentativaMaior)
            tentativaMenor = chute!
        } else {
            mensagemChuteMaior(chute, tentativaMenor)
            tentativaMaior = chute!
        }
    }
    
    opcao = perguntaSeDesejaContinuar()

} while opcao != 0 || chute == numeroSecreto
