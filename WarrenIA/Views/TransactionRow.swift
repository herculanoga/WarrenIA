//
//  TransactionRow.swift
//  WarrenIA
//
//  Created by Gabriel Herculano on 09/09/2026.
//

import SwiftUI

struct TransactionRow: View {
    let nome: String
    let categoria: String
    let valor: String
    let icone: String

    var body: some View {
        HStack {
            ZStack{
                RoundedRectangle(cornerRadius:8)
                    .fill(.blue.opacity(0.15))
                    .frame(width: 30, height: 32)
                Image(systemName:icone)
            }
            VStack(alignment: .leading){
                Text(nome) //nome
                Text(categoria) //descricao
                
            }
                
            Spacer()
            
            Text(valor)
        }
    }
}
