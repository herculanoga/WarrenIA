//
//  HistoricoCard.swift
//  WarrenIA
//
//  Created by Gabriel Herculano on 05/11/2026.
//
import SwiftUI

struct HistoricoCard : View {
    
    let mes: String
    let ano: Int
    let quantidadeTransacoes: Int
    let valorGastos: Decimal
    let porcentagem: Double
    
    
    
    var body: some View {
        HStack (spacing: 8){
            VStack(spacing: 2){
                Text (mes)
                    .font(.system(size: 12, weight: .semibold))

                Text ("\(ano)")
                    .font(.system(size: 10, weight: .regular))
            }
            .padding(8)
            .background(Color.green.opacity(0.1))
            .cornerRadius(8)
                            
            VStack(alignment: .leading, spacing: 4){
                Text("\(mes) \(ano)")
                    .font(.system(size: 15, weight: .semibold))

                Text("\(quantidadeTransacoes) transações · \(valorGastos, format: .currency(code: "EUR")) gastos")
                    .font(.system(size: 13))
                    .foregroundColor(.black)

            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
                Text("\(porcentagem / 100, format: .percent.precision(.fractionLength(0)).sign(strategy: .always()))")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.green)




        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(.white)
        .cornerRadius(12)
        .padding(.horizontal, 16) // Espaço fora do cartão
        .padding(.top, 16)
    }
}

#Preview {
    HistoricoCard(
        mes: "Março",
        ano: 2026,
        quantidadeTransacoes: 24,
        valorGastos: 1460,
        porcentagem: 38.0
    )
}
