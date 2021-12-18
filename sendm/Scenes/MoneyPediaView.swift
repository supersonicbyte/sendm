//
//  MoneyPediaView.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//
import SwiftUI

struct PediaItem: Identifiable {
    let title: String
    let id = UUID()
    let description: String
}

struct PediaItemRowView: View {
    var pediaItem: PediaItem
    var body: some View {
        Text(pediaItem.title)
            .font(.custom("Raleway", size: 18))
            .foregroundColor(.primaryGreen)
    }
}

struct SearchTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.primaryGreen, lineWidth: 2)
            )
            .font(.custom("Raleway", size: 18))
            .foregroundColor(.primaryGreen)
    }
}

struct MoneyPediaView: View {
    @State var query = ""
    static let lorem =
"""
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse a lobortis est. Donec nibh leo, efficitur ut mauris et, blandit aliquet ex. Sed purus nulla, laoreet non sem ut, euismod dapibus dui. Proin ac venenatis risus. Maecenas imperdiet dui a ornare ullamcorper. Aliquam erat volutpat. Sed rutrum ac lorem quis auctor. In sed malesuada odio.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempor sem eget magna auctor, at rutrum lectus vehicula. In laoreet gravida purus quis vestibulum. Integer ac hendrerit elit. Cras gravida urna non ligula faucibus lobortis. Donec tincidunt, lectus convallis semper pellentesque, mi neque pellentesque mi, pharetra lacinia nibh nulla et massa. Proin a condimentum lacus, nec tincidunt urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
"""
    var pediaItems = [
        PediaItem(title: "Kredit", description: """
Kredit je novčani dužničko-vjerovnički odnos u kojem vjerovnik kredita (obično banka) ustupa pravo korištenja određenog iznosa novčanih sredstava dužniku (debitoru) na ugovoreno vrijeme i uz ugovorene uvjete povrata. Sama riječ kredit dolazi od francuskog, njemačkog i talijanskog jezika, a iz latinskog dolazi samo značenje, što znači; ono što je povjereno, zajam.
                  
U širem smislu riječi obuhvaća različite namjenske i nenamjenske kreditne oblike poput novčanih zajmova, robnih i potrošačkih kredita, financijskih kredita, poslovnih aranžmana prodaje robe, usluga i izvođenja radova uz odgođenu naplatu, dužničke vrijednosne papire, standby sporazume, otvorene račune i dr.
"""),
        PediaItem(title: "Kamata", description: lorem),
        PediaItem(title: "Porez", description: lorem),
        PediaItem(title: "IBAN", description: lorem),
        PediaItem(title: "Inflacija", description: lorem),
        PediaItem(title: "Zlato", description: lorem),
        PediaItem(title: "Kapital", description: lorem),
        PediaItem(title: "Depozit", description: lorem),
        PediaItem(title: "Čekovni kredit", description: lorem),
        PediaItem(title: "Kamatna stopa", description: lorem),
        PediaItem(title: "Hipoteka", description: lorem),
        PediaItem(title: "Internet bankarstvo", description: lorem),
        PediaItem(title: "Paypal", description: lorem),
        PediaItem(title: "Investicija", description: lorem)
    ]
    
    var searchResult: [PediaItem] {
        if query.isEmpty {
            return pediaItems
        } else {
            return pediaItems.filter{ $0.title.contains(query) }
        }
    }
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.blue]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.blue]
    }
    var body: some View {
        VStack {
            Text("NovacPedia")
                .font(.custom("Raleway", size: 34)).fontWeight(.bold)
                .foregroundColor(.primaryGreen)
            TextField("Trazi pojam", text: $query)
                .frame(maxWidth: .infinity)
                .textFieldStyle(SearchTextFieldStyle())
                .padding()
            List(searchResult) { pediaItem in
                NavigationLink {
                    MoneyPediaItemDetailsView(item: pediaItem)
                    
                } label: {
                    PediaItemRowView(pediaItem: pediaItem)
                }
            }
            .listStyle(.plain)
        }
    }
}

struct MoneyPediaView_Previews: PreviewProvider {
    static var previews: some View {
        MoneyPediaView()
    }
}
