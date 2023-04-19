import SwiftUI
import CoreLocationUI

//Настраиваем приветсвующее нас окошко
struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager

    var body: some View {
        VStack {
            //текст в окошке
            VStack(spacing: 20) {
                Text("Добро пожаловать, вас заждались")
                    .bold()
                    .font(.title)
                
                Text("Соглашайтесь со всем, мы не мошенники, честно)")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()

            
            //Кнопочка
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
