import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Cabeçalho verde
            VStack(alignment: .leading, spacing: 0) {
                // Topo: nome + avatar
                HStack {
                    Text("Warren IA")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.white)
                    Spacer()
                    ZStack {
                        Circle()
                            .fill(.white.opacity(0.25))
                            .frame(width: 32, height: 32)
                        Text("YO")
                            .font(.system(size: 11, weight: .medium))
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, 16)
                
                // Saldo
                Text("Saldo disponível — março 2026")
                    .font(.system(size: 11))
                    .foregroundColor(.white.opacity(0.75))
                    .padding(.bottom, 3)
                
                Text("€ 2.340,00")
                    .font(.system(size: 28, weight: .medium))
                    .foregroundColor(.white)
                    .padding(.bottom, 3)
                
                Text("38% economizado este mês")
                    .font(.system(size: 11))
                    .foregroundColor(.white.opacity(0.65))
            }
            .padding(18)
            .background(Color(red: 0.102, green: 0.478, blue: 0.235))
            
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    HomeView()
}
