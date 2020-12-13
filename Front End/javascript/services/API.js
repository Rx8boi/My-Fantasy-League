class API {
    // statick (Class level) function that is also fetch rquest to back end will load all the players

    static addPlayers() {
        fetch("http://localhost:3000/players")

        .then(resp => resp.json())
            .then(players => {
                players.forEach(player => {
                    const { id, name, position, fantasy_points, injured, image } = player
                    new Player(id, name, position, fantasy_points, injured, image)
                })
            })
    }

}