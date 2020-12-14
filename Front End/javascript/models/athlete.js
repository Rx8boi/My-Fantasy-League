class Athlete {

    constructor(id, name, position, fantasy_points, injured, image, team_id) {
        this.id = id
        this.name = name
        this.position = position
        this.fantasy_points = fantasy_points
        this.injured = injured
        this.image = image
        this.team_id = team_id
        this.createAthletes()
    }
}