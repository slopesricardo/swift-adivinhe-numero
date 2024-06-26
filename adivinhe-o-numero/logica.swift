//
//  logica.swift
//  adivinhe-o-numero
//
//  Created by José Ricardo on 26/06/24.
//

import Foundation

func gerarNumeroSecreto() -> Int {
    return Int.random(in: 0...20)
}

func verificarChute(_ chute: Int?, _ numeroSecreto: Int?) -> Bool {
    if chute != -1 && chute == numeroSecreto {
        return true
    }
    return false
}

func verificarSeChuteMenor(_ chute: Int?, _ numeroSecreto: Int?) -> Bool {
    guard let chute = chute, let numeroSecreto = numeroSecreto  else { return false }
    
    if chute < numeroSecreto {
        return true
    }
    return false
}
