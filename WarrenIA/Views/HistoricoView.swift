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
            
            HStack {
                VStack{
                    Text ("MAR")
                    Text ("2026")
                }
                                
                VStack(alignment: .leading, spacing: 4){
                    Text("Março 2026")
                    Text("24 Transações - €1.460 gastos")
                }
                
                Spacer()
                
                Text("+38%")

            }
            .padding(16)
            .background(.gray)
            .cornerRadius(12)
            .padding(.horizontal, 16) // Espaço fora do cartão
            .padding(.top, 16)


            
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .top,
        )

    }
        
}
    

#Preview {
    HistoricoView()
}

