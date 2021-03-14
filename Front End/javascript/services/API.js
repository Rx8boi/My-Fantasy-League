class API {
    // statick (Class level) function that is also fetch rquest to back end will load all the players

    static addTeams() {
        fetch("http://localhost:3000/teams")

        .then(resp => resp.json())
            .then(teams => {
                teams.forEach(team => {
                    const { id, team_name, image, website, schedule } = team
                    new Team(id, team_name, image, website, schedule)
                })
            })
    }

    static addPlayer



}