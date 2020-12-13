class API {
    // statick (Class level) function that is also fetch rquest to back end will load all the players

    static addPlayers() {
        fetch("http://localhost:3000/players")
            .then(console.log)
    }
}