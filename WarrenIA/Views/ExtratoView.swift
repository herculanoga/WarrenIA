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
                Text("Importar extrato PDF")
                Text("Seus dados ficam apenas no seu dispositivo.")
                Button("Selecionar arquivo") {
                    // ação depois
                }
            }
            .padding(20)
                        
            //criando o bloco de transacoes//
            VStack(alignment: .leading, spacing: 10){
                Text("Transações")//text para transacoes//
                
                HStack {
                    VStack(alignment: .leading){
                        Text("Netflix") //nome
                        Text("Assinatura") //descricao
                        
                    }
                    
                    Spacer()
                    
                    Text("- £17,99")
                } //Hstack//
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
