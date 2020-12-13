class Player {
    constructor(id, name, position, fantasy_points, injured, image) {
        this.id = id
        this.name = name
        this.position = position
        this.fantasy_points = fantasy_points
        this.injured = injured
        this.image = image
        this.renderPlayer()
    }

    //  players.forEach(player => {
    //                  const { id, name, position, fantasy_points, injured, image} = player
    //                  new Player(id, name, position, fantasy_points, injured)
    //              })

    // render method => so i can render the instance to the page.
    renderPlayer() {
        const playerHolder = document.getElementById("players_list")
        const playerContainer = document.createElement('div')
        playerContainer.dataset.id = this.id
        playerContainer.id = this.id
        playerContainer.classList.add = "undrafted_players"
            // append player container
        playerContainer.innerHTML += this.PlayerHTML()
        playerHolder.appendChild(playerContainer)
    }



    // need instance level method to show HTML all contextual
    PlayerHTML() {
        return `
        <h2 class="Headline">${this.name}</h2>
        <img src = "https://i1.wp.com/basketballsocietyonline.com/wp-content/uploads/2015/03/nba-logo-vector-logo-650193733.jpg?fit=1000%2C1528&ssl=1" style="width:150px;height:200px;">
        </br>
        <h3 class="player_position">${this.position}</h3>
        <p>Fantasy Points: ${this.fantasy_points}</p>
        <p>Injured? ${this.injured}</p>
        </br>
         `
    }

}