class Team {
    constructor(id, team_name, image, website, schedule) {
        this.id = id
        this.name = team_name
        this.image = image
        this.website = website
        this.schedule = schedule
        this.renderTeam()
    }

    //  players.forEach(player => {
    //                  const { id, name, position, fantasy_points, injured, image} = player
    //                  new Player(id, name, position, fantasy_points, injured)
    //              })

    // render method => so i can render the instance to the page.
    renderTeam() {
        const teamHolder = document.getElementById("team_list")
        const teamContainer = document.createElement('div')
        teamContainer.dataset.id = this.id
        teamContainer.id = this.id
        teamContainer.classList.add = "team_players_list"
            // append player container
        teamContainer.innerHTML += this.TeamHTML()
        teamHolder.appendChild(teamContainer)
        teamContainer.addEventListener("Click", e => {
            if (e.target.className === "athlete-button")
                this.createAthlete(e)
        })
    }



    // need instance level method to show HTML all contextual
    TeamHTML() {

        return `
        <h2 class="Headline">${this.name}</h2>
        <button type="button" class="athlete_button" data-id=${this.id}> View Athletes</button></br>
        <img src = "${this.image}" style="width:150px;height:200px;"></br>
        <a href="${this.website}">Team Site</a></br>
        <a href="${this.schedule}">Schedule</a>

         `
    }

    createAthlete(e) {
        //Fetch request to Team page gets => scoped Players
        // return Players for team selected
        // show new page with just players & back/forth capabilities (render Teams again)
        //best place for event listener
    }

}