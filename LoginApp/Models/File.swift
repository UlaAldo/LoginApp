//
//  File.swift
//  LoginApp
//
//  Created by Юлия Алдохина on 25/01/22.
//



struct User {
    let logIn = "Mentor"
    let password = "SWIFT"
    let person = Person.getPerson()
    
    static func getUser() -> User {
        User()
    }
}

struct Person {
    let nameFull: String
    let hobby: String
    let photo: String

static func getPerson() -> Person {
    Person(nameFull: "Ula Aldo",
           hobby: """
           Уже три года я с мужем живу на острове в Индонезии. За это время я много чем увлеклась:
           • Серфинг — увлекательное ожидание и преодоление себя на волнах.
           • Кемпинг — никогда раньше не ночевала в палатке, и просто влюбилась в атмосферу такой близости к природе.
           • Скалолазание — с детства были сильные руки, и кажется нашла им применение (помимо откручивания крышек на бутылках).
           • Покорение гор — место, где все страхи и сомнения замолкают, покорно подчиняясь моему естеству.
           • Фотография — люблю снимать людей, лайф-стайл.
""",
           photo: "me")
}
}
