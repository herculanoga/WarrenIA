import SwiftUI

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
            
        }
        .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .top
                )
    }
}
    

#Preview {
    HistoricoView()
}

