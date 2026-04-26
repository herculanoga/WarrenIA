//
//  SplashView.swift
//  WarrenIA
//
//  Created by Herculano on 22/04/2026.
//

import Foundation
import SwiftUI

struct SplashView: View {
    @State private var showHome = false
    
    var body: some View {
        if showHome {
            HomeView()
                .transition(.opacity)
        } else {
            ZStack {
                Color(red: 0.102, green: 0.478, blue: 0.235)
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    ZStack {
                        Circle()
                            .fill(.white.opacity(0.15))
                            .frame(width: 80, height: 80)
                        Text("W")
                            .font(.system(size: 36, weight: .semibold))
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 22)
                    
                    Text("Warren IA")
                        .font(.system(size: 26, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.bottom, 6)
                    
                    Text("CONSULTOR FINANCEIRO")
                        .font(.system(size: 11, weight: .regular))
                        .foregroundColor(.white.opacity(0.6))
                        .kerning(1.5)
                        .padding(.bottom, 56)
                    
                    HStack(spacing: 6) {
                        Circle().fill(.white).frame(width: 7, height: 7)
                        Circle().fill(.white.opacity(0.35)).frame(width: 7, height: 7)
                        Circle().fill(.white.opacity(0.35)).frame(width: 7, height: 7)
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                    withAnimation(.easeInOut(duration: 0.8)) {
                        showHome = true

                    }
                }
            }
        }
    }
}



#Preview {
    SplashView()
}

