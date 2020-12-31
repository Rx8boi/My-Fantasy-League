const athlete_list = document.querySelector('.athlete_list');
const addAthleteForm = document.querySelector('.add-athlete-form');
const nameValue = document.getElementById('name');
const positionValue = document.getElementById('position');
const fantasyValue = document.getElementById('fantasy_points');
const imageValue = document.getElementById('image');
const injuredValue = document.getElementById('injured');
const teamValue = document.getElementById('team_id');
const btnSubmit = document.querySelector('.btn');

let output = '';

const renderAthletes = (athletes) => {
    athletes.forEach(athlete => {
        output += `
                <div class="card mt-4 col-md-6 bg-dark">
                    <div class="card" data-id=${athlete.id}>
                       <h5 class="card-title">${athlete.name}</h5>
                        <img src=${athlete.image} style="width:60px;height:90px;" class="pic">
                        <p class="pos">${athlete.position}</p>
                        <h6 class="card-subtitle mb-2 text -muted">Fantasy Points: ${athlete.fantasy_points}</h6>
                        <a href="#" class="card-link" id="update-athlete">Update</a>
                        <a href="#" class="card-link" id="delete-athlete" onClick="window.location.reload()">Delete</a>
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

//add event listerner on athlete list for mouse click
//identify in console -> use DELETE method like you're used to

athlete_list.addEventListener('click', (e) => {
    e.preventDefault();
    let delButtonIsPressed = e.target.id == 'delete-athlete';
    let updateButtonIsPressed = e.target.id == 'update-athlete';
    let id = e.target.parentElement.dataset.id;
    //how do i grab specific Athlete ID???
    //console.log(e.target.parentElement.dataset.id);

    if (delButtonIsPressed) {
        //console.log('remove athlete')
        fetch(`${url}/${id}`, {
            method: 'DELETE',
        })

        .then(res => res.json())
    }

    if (updateButtonIsPressed) {
        console.log('update athlete')
        const parent = e.target.parentElement;
        let nameContent = parent.querySelector('.card-title').textContent;
        console.log(nameContent) //console log new variable see if we get a name back
        let positionContent = parent.querySelector('.pos').textContent;
        console.log(positionContent)
        let picContent = parent.querySelector('.pic').textContent;
        console.log(picContent)

        nameValue.value = nameContent;
        positionValue.value = positionContent;

    }

    //UPDATE -> PATCH Method
    btnSubmit.addEventListener('click', (e) => {
        e.preventDefault(); //was creating multiple records AND updating previous
        fetch(`${url}/${id}`, {
                method: "PATCH",
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    name: nameValue.value,
                    position: positionValue.value,
                })
            })
            .then(res => res.json())
            .then(() => location.reload())
    })
});



//Create - Insert new athlete(player)
//Method: POST like before

addAthleteForm.addEventListener('submit', (e) => {
    e.preventDefault();
    fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                name: nameValue.value,
                position: positionValue.value,
                fantasy_points: fantasyValue.value,
                image: imageValue.value,
                injured: injuredValue.value,
                team_id: teamValue.value
            })
        })
        .then(res => res.json())
        .then(data => {
            const dataArr = [];
            dataArr.push(data);
            renderAthletes(dataArr);
        })
})




document.addEventListener("DOMContentLoaded", function() {
    // need to load in "undrafted players"
    // needs to ALSO load (NBA) Teams
    // All fetch requests to back end API. -> API class
    API.addTeams()


})

function openView(evt, pageName) {
    // Declare all variables
    let i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(pageName).style.display = "block";
    evt.currentTarget.className += " active";

}