function fetchData() {
    fetch('http://127.0.0.1:5000/data/get').then(response => {
        if(!response.ok) {
            throw new Error("Network response was not ok.");
        }
        return response.json();
    }).then(data => {
        console.log(data);
        document.getElementById('result').textContent = `Message: ${data.message}`;
    }).catch(error => {
        console.error('There was a problem with the fetch operation: ', error);
        document.getElementById('result').textContent = 'Failed to fetch data.';
    });
}

document.getElementById('fetchData').addEventListener('click', fetchData);