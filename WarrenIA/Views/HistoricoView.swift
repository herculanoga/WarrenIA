import SwiftUI

struct HistoricoView : View {
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
            
            
            //criando o bloco de historico dos meses//
            
            
            VStack{
                TransactionRow (
                    nome: "Carrefour",
                    data: "12 mar",
                    valor: "- €87,40",
                    icone: "cart",
                    cor: .red,
                    iconBackgroundColor: .green
                )
                Divider()
                TransactionRow (
                    nome: "Netflix",
                    data: "10 mar",
                    valor: "- €17,99",
                    icone: "play.rectangle",
                    cor: .red,
                    iconBackgroundColor: .yellow
                )
                Divider()
                TransactionRow (
                    nome: "Salário",
                    data: "5 mar",
                    valor: " + €3.800,00",
                    icone: "chevron.down.dotted.2",
                    cor: .green,
                    iconBackgroundColor: .blue
                )
                Divider()
                TransactionRow (
                    nome: "RATP",
                    data: "6 mar",
                    valor: "- €38,20",
                    icone: "bus",
                    cor: .red,
                    iconBackgroundColor: .red
                )
            }
            .padding()
            .background(.white)
            .cornerRadius(10)
            
        }
        .padding(.horizontal, 16)
        
        Spacer()
    }
    
        .background(.gray.opacity(0.1))
        .frame(maxWidth: .infinity)

         }
       
    


#Preview {
    HistoricoView()
}

