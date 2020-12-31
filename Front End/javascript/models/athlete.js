class Athlete {

    constructor(id, name, position, fantasy_points, injured, image, team_id) {
        this.id = id
        this.name = name
        this.position = position
        this.fantasy_points = fantasy_points
        this.injured = injured
        this.image = image
        this.team_id = team_id

    }
}

// instantiate instance of a class (result of a create action fetch, likely)
// write and use an "instance" method, i.e. a function that can be called on an instance of the class
// implement a crud action resulting from user interaction that manipulates the dom - candidates are read, delete, or update
// refactor the create functionality a little so that it doesn't display rejected data