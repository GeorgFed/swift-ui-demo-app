import SwiftUI

struct User: Identifiable {
  var id: Int
  var name: String
  var age: Int
}

struct ContentView: View {
  let users: [User] = [
    User(id: 1, name: "Алиса", age: 25),
    User(id: 2, name: "Андрей", age: 45),
    User(id: 3, name: "Антон", age: 17),
    User(id: 4, name: "Анна", age: 30)
  ]

  var body: some View {
    List(users) { user in
      HStack(alignment: .top) {
        VStack(
          alignment: HorizontalAlignment.leading,
          content: {
            Text(user.name)
            Text("\(user.age)")
          })
        .padding(.trailing)
        Spacer()
        Text("\(user.age)")
      }
      .padding()
      .background(user.age < 18 ? Color.red : (user.age < 30 ? Color.green : Color.blue))
      .cornerRadius(19).shadow(color: Color.gray, radius: 5.0)
      .onTapGesture {
        print("Tap")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
