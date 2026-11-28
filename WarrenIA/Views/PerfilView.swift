
import SwiftUI

// PerfilView

struct PerfilView: View {
    @State private var analiseAutomatica = false
    var body: some View {

        // Container principal
        VStack(spacing: 0) {

            // MARK: - Cabeçalho verde

            VStack(alignment: .center, spacing: 3) {

                ZStack {
                    Circle()
                        .fill(.white.opacity(0.25))
                        .frame(width: 80, height: 80)

                    Text("YO")
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 10)

                Text("Você")
                    .font(.system(size: 25, weight: .medium))
                    .foregroundColor(.white)

                Text("Warren desde Março de 2026")
                    .font(.system(size: 15))
                    .foregroundColor(.white.opacity(0.7))

            }
            .padding(.bottom, 20)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.top, 60)
            .padding(.horizontal, 16)
            .background(
                Color(red: 0.102, green: 0.478, blue: 0.235)
            )

            // MARK: - Preferências

            VStack(alignment: .leading, spacing: 16) {

                Text("PREFERÊNCIAS")
                    .font(.system(size: 13))
                    .foregroundColor(.gray)

                // Cartão de opções
                VStack(spacing: 0) {

                    // Moeda
                    HStack(spacing: 12) {

                        Image(systemName: "eurosign.circle")
                            .foregroundColor(.green)
                            .frame(width: 36, height: 36)
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(8)

                        Text("Moeda")

                        Spacer()

                        Text("EUR €")
                            .foregroundColor(.gray)
                    }
                    .padding(16)

                    Divider()

                    // Idioma
                    HStack(spacing: 12) {

                        Image(systemName: "globe")
                            .foregroundColor(.blue)
                            .frame(width: 36, height: 36)
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(8)

                        Text("Idioma")

                        Spacer()

                        Text("Português")
                            .foregroundColor(.gray)
                    }
                    .padding(16)

                    Divider()

                    // Dark mode
                    HStack(spacing: 12) {

                        Image(systemName: "moon.fill")
                            .foregroundColor(.white)
                            .frame(width: 36, height: 36)
                            .background(Color.black.opacity(0.85))
                            .cornerRadius(8)

                        Text("Dark mode")

                        Spacer()

                        Text("Desativado")
                            .font(.system(size: 13))
                            .foregroundColor(.gray)
                    }
                    .padding(16)

                }
                .background(.white)
                .cornerRadius(14)

            }
            .padding(.horizontal, 16)
            .padding(.top, 20)
            
            

        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .top
        )
        .background(Color(.systemGroupedBackground))

    }
}

#Preview {
    PerfilView()
}

