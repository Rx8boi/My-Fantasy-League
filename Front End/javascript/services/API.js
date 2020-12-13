class API {
    // statick (Class level) function that is also fetch rquest to back end will load all the players

    static addTeams() {
        fetch("http://localhost:3000/nba_teams")

        .then(resp => resp.json())
            .then(teams => {
                teams.forEach(team => {
                    const { id, name, image, website, schedule } = team
                    new Team(id, name, image, website, schedule)
                })
            })
    }

}