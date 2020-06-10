// Tratamento de erro
// throws - Informando que o metodo pode ocorrer um erro

enum LoginError: Error {
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}

func login(userName: String, password: String) throws -> Bool {
    if checkInternetConnection() {
        if userName != "Bruno" {
            throw LoginError.wrongLogin
        } else {
            return false
        }
    } else {
        return false
    }
}

func checkInternetConnection() -> Bool {
    return false
}

do {
    let loginResult = try login(userName: "Bruno", password: "123")
} catch {
    print(error) // printar o erro
}

