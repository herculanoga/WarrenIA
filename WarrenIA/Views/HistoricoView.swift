import SwiftUI

//Cabecalho verde para o topo//

struct HistoricoView: View {
    var body: some View {
        VStack (spacing : 0) {
            //cabeçalho verde//
            VStack(alignment: .leading, spacing: 3) {
                
                Text("Histórico")
                    .font(.system(size: 30, weight: .medium))
                    .foregroundColor(.white)
                
                Text("Evolução dos seus gastos por mês")
                    .font(.system(size: 15))
                    .foregroundColor(.white.opacity(0.7))
                
                
            }
            .padding(.bottom, 20)
            
            
            .frame(
                maxWidth: .infinity,
                alignment: .leading
            )
            .padding(.top, 60)
            .padding(.horizontal, 16)
            .background(Color(red: 0.102, green: 0.478, blue: 0.235))
            
            //Blocos de Historicos Mensais//
            
            HistoricoCard(
                  mes: "Março",
                  ano: 2026,
                  quantidadeTransacoes: 24,
                  valorGastos: 1460,
                  porcentagem: 38.0,
                  cor: .green
              )
            
            HistoricoCard(
                  mes: "Feveriro",
                  ano: 2026,
                  quantidadeTransacoes: 19,
                  valorGastos: 1780,
                  porcentagem: 22.0,
                  cor: .orange
              )
            
            HistoricoCard(
                  mes: "Janeiro",
                  ano: 2026,
                  quantidadeTransacoes: 31,
                  valorGastos: 2100,
                  porcentagem: 8.0,
                  cor: .red
              )
            
            HistoricoCard(
                  mes: "Dezembro",
                  ano: 2025,
                  quantidadeTransacoes: 38,
                  valorGastos: 2640,
                  porcentagem: 0.12,
                  cor: .red
              )
            
            HistoricoCard(
                  mes: "Novembro",
                  ano: 2025,
                  quantidadeTransacoes: 22,
                  valorGastos: 1520,
                  porcentagem: 35.0,
                  cor: .green
              )
            

        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .top,
        )
        .background(Color(.systemGroupedBackground))

    }
        
}
    

#Preview {
    HistoricoView()
}

