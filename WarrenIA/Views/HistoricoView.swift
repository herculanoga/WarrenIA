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
            
            HStack (spacing: 8){
                VStack(spacing: 2){
                    Text ("MAR")
                        .font(.system(size: 12, weight: .semibold))

                    Text ("2026")
                        .font(.system(size: 10, weight: .regular))
                }
                .padding(8)
                .background(Color.green.opacity(0.1))
                .cornerRadius(8)
                                
                VStack(alignment: .leading, spacing: 4){
                    Text("Março 2026")
                        .font(.system(size: 15, weight: .semibold))

                    Text("24 transações · €1.460")
                        .font(.system(size: 11))
                        .foregroundColor(.black)

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack{
                    Text("+38%")

                }

            }
            .frame(maxWidth: .infinity, alignment: .leading)
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

