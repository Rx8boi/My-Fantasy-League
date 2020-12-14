const athlete_list = document.querySelector('.athlete_list');
const addAthleteForm = document.querySelector('.add-athlete-form');
let output = '';

const renderAthletes = (athletes) => {
    athletes.forEach(athlete => {
        output += `
                <div class="card mt-4 col-md-6 bg-dark">
                    <div class="card">
                       <h5 class="card-title">${athlete.name}</h5>
                        <img src=${athlete.image} style="width:60px;height:90px;">
                        <p>${athlete.position}</p>
                        <h6 class="card-subtitle mb-2 text -muted">Fantasy Points: ${athlete.fantasy_points}</h6>
                        <a href="#" class="card-link">Update</a>
                        <a href="#" class="card-link">Delete</a>
                    </div>

                </div>

            `;
    });

    athlete_list.innerHTML = output;
}

const url = "http://localhost:3000/athletes";
// fetch request -> return promise

fetch(url)
    .then(res => res.json())
    .then(data => renderAthletes(data))

//Create - Insert new athlete(player)
//Method: POST like before

window.onload = function() {
    addAthleteForm.addEventListener('submit', (e) => {
        e.preventDefault();
        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: {}
        })
    })
}


document.addEventListener("DOMContentLoaded", function() {
    // need to load in "undrafted players"
    // needs to ALSO load (NBA) Teams
    // All fetch requests to back end API. -> API class
    API.addTeams()


})