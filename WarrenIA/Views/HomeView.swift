import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Cabeçalho verde
            VStack(alignment: .leading, spacing: 0) {
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
            
            VStack(spacing: 8) {
                HStack(spacing: 8) {
                    // Card Receitas
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Receitas")
                            .font(.system(size: 10))
                            .foregroundColor(.gray)
                        Text("€ 3.800")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color(red: 0.102, green: 0.478, blue: 0.235))
                    }
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    
                    // Card Despesas
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Despesas")
                            .font(.system(size: 10))
                            .foregroundColor(.gray)
                        Text("€ 1.460")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.red)
                    }
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                }
                
                HStack(spacing: 8) {
                    // Card Economias
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Economias")
                            .font(.system(size: 10))
                            .foregroundColor(.gray)
                        Text("38%")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color(red: 0.102, green: 0.478, blue: 0.235))
                    }
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    
                    // Card Transações
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Transações")
                            .font(.system(size: 10))
                            .foregroundColor(.gray)
                        Text("24")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.primary)
                    }
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                }
            }
            .padding(12)
            // Card categorias
            VStack(alignment: .leading, spacing: 10) {
                Text("Gastos por categoria")
                    .font(.system(size: 11))
                    .foregroundColor(.gray)
                
                // Linha Alimentação
                HStack {
                    Text("Alimentação")
                        .font(.system(size: 11))
                    Spacer()
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .fill(Color.gray.opacity(0.15))
                        Rectangle()
                            .fill(Color(red: 0.102, green: 0.478, blue: 0.235))
                            .frame(width: 80)
                    }
                    .frame(width: 110, height: 5)
                    .cornerRadius(3)
                    Text("€ 480")
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                }
            }
            .padding(14)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 12)
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    HomeView()
}
