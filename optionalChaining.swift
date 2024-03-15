class Address {
    var street: String?
    var city: String?
    var country: String?

    init(street: String?, city: String?, country: String? ) {
        self.street = street
        self.city = city
        self.country = country
    }
}

class Person {
    var name: String
    var address: Address?

    init(name: String, address: Address?) {
        self.name = name
        self.address = address
    }
}

let person = Person(name: "Abc", 
address: Address(street: "123 Street no", city: "City", country: "Country"))

// let street = person.address!.street!
// let city = person.address!.city!
// let country = person.address!.country!
// print("Address: \(street), \(city), \(country)")

if let street = person.address?.street,
   let city = person.address?.city,
   let country = person.address?.country {
    print("Address: \(street), \(city), \(country)")
} else {
    print("Incomplete address or no address provided")
}


