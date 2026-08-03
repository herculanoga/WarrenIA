import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Início")
                }
            
            Text("Extrato")
                .tabItem {
                    Image(systemName: "plus.square")
                    Text("Extrato")
                }
            
            Text("Histórico")
                .tabItem {
                    Image(systemName: "clock")
                    Text("Histórico")
                }
            
            Text("Perfil")
                .tabItem {
                    Image(systemName: "person")
                    Text("Perfil")
                }
        }
        .accentColor(Color(red: 0.102, green: 0.478, blue: 0.235))
    }
}

#Preview {
    MainTabView()
}
