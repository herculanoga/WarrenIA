import SwiftUI

struct ExtratoView : View {
    var body: some View {
        VStack (spacing : 0) {
            //cabeçalho verde//
            VStack(alignment: .leading, spacing: 0) {
                Text("Extrato")
                    .font(.system(size: 30, weight: .medium))
                    .foregroundColor(.white)
                Text("Importe o seu extrato em PDF")
                    .font(.system(size: 11))
                    .foregroundColor(.white.opacity(0.7))
            }
            .frame(
                maxWidth: .infinity,
                alignment: .leading
            )
            .padding(.top, 100)
            .padding(.horizontal, 16)
            .background(Color(red: 0.102, green: 0.478, blue: 0.235))
            
            // bloco para importacao de arquivos //
            
            VStack {
                VStack(spacing: 18) {
                    
                    Image(systemName: "arrow.down.doc")
                        .font(.system(size: 28))

                    VStack(spacing: 5) {
                        Text("Importar extrato PDF")
                            .font(.system(size: 18, weight: .medium))

                        Text("Seus dados ficam apenas no seu dispositivo.")
                            .font(.system(size: 15, weight: .regular))
                            .foregroundColor(.gray)
                        
                    }
                       
                    Button("Selecionar arquivo") {
                            
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color(red: 0.102, green: 0.478, blue: 0.235))
                    .cornerRadius(10)

                }
                .padding(20)
                .background(.white)
                .cornerRadius(14)


                .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.green, style: StrokeStyle(lineWidth: 1.5, dash: [6]))
                )
                .padding(20)

                
                //criando o bloco de transacoes//
                VStack(alignment: .leading, spacing: 10){
                    Text("Transações")//text para transacoes//
                    
                    VStack{
                        TransactionRow (
                            nome: "Carrefour",
                            data: "12 mar",
                            valor: "- £87,40",
                            icone: "cart",
                            cor: .red,
                            iconBackgroundColor: .green
                        )
                        Divider()
                        TransactionRow (
                            nome: "Netflix",
                            data: "10 mar",
                            valor: "- 17,99",
                            icone: "play.rectangle",
                            cor: .red,
                            iconBackgroundColor: .yellow
                        )
                        Divider()
                        TransactionRow (
                            nome: "Salário",
                            data: "5 mar",
                            valor: " + £3.800,00",
                            icone: "chevron.down.dotted.2",
                            cor: .green,
                            iconBackgroundColor: .blue
                        )
                        Divider()
                        TransactionRow (
                            nome: "RATP",
                            data: "6 mar",
                            valor: "- £38,20",
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
       }
    }


#Preview {
    ExtratoView()
}
