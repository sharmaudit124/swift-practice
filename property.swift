import Foundation;

//properties concepts

enum Role{
    case user, admin
}
// stored properties and computed properties
// stored properties simple hoti hai and computed wali get set wali they can be read only too
class User{
    var role: Role = .user //stored one

    var email: String{
        get{
            return email;
        }
        set(newValue){
            email = newValue;
        }
    }
    var password: String{
        get{
            return password
        }
        set(newPasword){
            password = newPasword;
        }
    }

}

//property observers : These are called when new value is set to the propertyeven when value is saved.


// property wrappers

@propertyWrapper
struct UsernameValidator{
    private var val : String = "g";

    var wrappedValue : String{
        get{
            return val
        }
        set{
            guard newValue.count <= 16 else {
                //throw some error here
                print("The given value is not acceptable");
                return
            }
            val = newValue;
        }
    }
}

struct User{

    @UsernameValidator var username :String; 
}

var user = User()
user.username = "skjbxskbxsxsnxlishxlkssn"
print(user.username) 
user.username = "udit001"
print(user.username)