import SwiftUI

//ProfileView//

struct PerfilView: View {
    var body: some View {
        VStack (spacing : 0) {
            //cabeçalho verde//
            VStack(alignment: .center, spacing: 3) {
                VStack {
                    ZStack {
                        Circle()
                            .fill(.white.opacity(0.25))
                            .frame(width: 80, height: 80)
                        
                        Text("YO")
                            .font(.system(size: 24, weight: .medium))
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 16)

                    Text("Você")
                    
                    Text("Warren desde Março de 2026")
                   
                }
            }
                
            
            .padding(.bottom, 20)
            
            
            .frame(
                maxWidth: .infinity,
                alignment: .center
            )
            .padding(.top, 60)
            .padding(.horizontal, 16)
            .background(Color(red: 0.102, green: 0.478, blue: 0.235))
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .top,
            )
    }
}

        
    




#Preview {
    PerfilView()
}
