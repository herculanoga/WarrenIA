import SwiftUI

//ProfileView//

struct PerfilView: View {
    var body: some View {
        VStack (spacing : 0) {
            //cabeçalho verde//
            VStack(alignment: .leading, spacing: 3) {
                HStack{
                    ZStack {
                        Circle()
                            .fill(.white.opacity(0.25))
                            .frame(width: 32, height: 32)
                        Text("YO")
                            .font(.system(size: 11, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack{
                        
                    }
                }
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
            alignment: .top,
            )
    }
}

        
    




#Preview {
    PerfilView()
}
