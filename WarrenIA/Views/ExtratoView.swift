import SwiftUI

struct ExtratoView : View {
    var body: some View {
        VStack (spacing : 0) {
            //cabeçalho verde//
            VStack(alignment: .leading, spacing: 0) {
                Text("Extrato")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(.white)
                Text("Importe o seu extrato em PDF")
                    .font(.system(size: 11))
                    .foregroundColor(.white.opacity(0.7))
            }
            .padding(18)
            .background(Color(red: 0.102, green: 0.478, blue: 0.235))
            // bloco para importacao de arquivos //
            VStack(spacing: 12) {
                
                Image(systemName: "arrow.down.doc")
                    .font(.system(size: 32))
                Text("Importar extrato PDF")
                Text("Seus dados ficam apenas no seu dispositivo.")
                Button("Selecionar arquivo") {
                    // ação depois
                }
                .foregroundColor(.white)
                .background(Color(red: 0.102, green: 0.478, blue: 0.235))
            }
            .cornerRadius(10)
            .padding(20)
            
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color.green, style: StrokeStyle(lineWidth: 1.5, dash: [6]))
            )
            .padding(20)
            
            //criando o bloco de transacoes//
            VStack(alignment: .leading, spacing: 10){
                Text("Transações")//text para transacoes//
                
                TransactionRow(
                    nome: "Carrefour",
                    categoria: "Assinatura",
                    valor: "- £87,40",
                    icone: "play.rectangle"
                )
                
                TransactionRow (
                    nome: "Netflix",
                    categoria: "Assinatura",
                    valor: "- 17,99",
                    icone: "play.rectangle"
                )
                
                TransactionRow (
                    nome: "Salário",
                    categoria: "Receita",
                    valor: " + £3.800,00",
                    icone: "play.rectangle")
                
                TransactionRow (
                    nome: "RATP",
                    categoria: "Assinatura",
                    valor: "- £38,20",
                    icone: "play.rectangle")
            }
            .padding(.horizontal, 16)
            
            
            
            
            
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    ExtratoView()
}
