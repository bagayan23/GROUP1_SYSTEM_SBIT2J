let userData = [];

let subMenu = document.getElementById("subMenu");

function toggleMenu() {
    subMenu.classList.toggle("open-menu");
}

// Load data when the page is ready
document.addEventListener('DOMContentLoaded', () => {
    fetch('fetch.php')
        .then(response => response.json())
        .then(data => {
            userData = data;
            renderTable(userData);  // Render initial table with all data
        })
        .catch(error => {
            console.error('Error fetching data:', error);
        });
});

// Render table based on the provided data
function renderTable(data) {
    const tableBody = document.getElementById('userData');
    tableBody.innerHTML = '';  // Clear any previous data in the table

    if (data.length === 0) {
        tableBody.innerHTML = '<tr><td colspan="5">No data found.</td></tr>';
        return;
    }

    data.forEach(user => {
        const row = document.createElement('tr');

        // Add table data
        row.innerHTML = `
            <td>${user.Id}</td>
            <td id="user_name_${user.Id}" onclick="makeEditable(this, 'User_name', ${user.Id})">${user.User_Name}</td>
            <td id="user_password_${user.Id}" onclick="makeEditable(this, 'User_Password', ${user.Id})">${user.email}</td>
            <td id="acc_type_${user.Id}" onclick="makeEditable(this, 'acc_type', ${user.Id})">${user.acc_type}</td>
            <td>
                <button class="delete" onclick="deleteData(${user.Id})">Delete</button>
                <button class="update" onclick="updateData(${user.Id})">Update</button>
            </td>
        `;
        tableBody.appendChild(row);
    });
}

// Function to make a cell editable
function makeEditable(cell, column, id) {
    // Store original value and make cell editable
    const originalValue = cell.textContent;
    cell.contentEditable = true;
    cell.focus();

    // When the user finishes editing (on blur), update the data
    cell.onblur = function() {
        if (cell.textContent !== originalValue) {
            updateData(cell, column, id);
        }
        cell.contentEditable = false;
    };
}

// Update data
function updateData(cell, column, id) {
    const value = cell.textContent;

    fetch('update_delete.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: `id=${id}&column=${column}&value=${encodeURIComponent(value)}`
    })
    .then(response => response.json())
    .then(data => {
        if (!data.success) alert('Failed to update data.');
        else {
            alert('Data updated successfully');
            fetchData(); // Re-fetch the data and re-render the table
        }
    })
    .catch(error => console.error('Error updating data:', error));
}

// Delete data
function deleteData(id) {
    if (confirm('Are you sure you want to delete this record?')) {
        fetch('update_delete.php', {
            method: 'DELETE',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: `id=${id}`
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                userData = userData.filter(user => user.id !== id); // Remove deleted user
                renderTable(userData);  // Re-render table without the deleted user
            } else {
                alert('Failed to delete data.');
            }
        });
    }
}

// Linear Search
function linearSearch(query) {
    const result = [];
    for (let i = 0; i < userData.length; i++) {
        if (userData[i].User_Name.toLowerCase().includes(query.toLowerCase())) {
            result.push(userData[i]);
        }
    }
    return result;
}

// Binary Search 
function binarySearch(query) {
    let sortedData = [...userData].sort((a, b) => a.User_Name.localeCompare(b.User_Name));
    let left = 0, right = sortedData.length - 1;
    const results = [];

    while (left <= right) {
        const mid = Math.floor((left + right) / 2);
        const midValue = sortedData[mid].User_Name.toLowerCase();

        if (midValue.includes(query)) {
            results.push(sortedData[mid]);
            let l = mid - 1;
            while (l >= 0 && sortedData[l].User_Name.toLowerCase().includes(query)) {
                results.push(sortedData[l]);
                l--;
            }
            let r = mid + 1;
            while (r < sortedData.length && sortedData[r].User_Name.toLowerCase().includes(query)) {
                results.push(sortedData[r]);
                r++;
            }
            break;
        }

        if (midValue < query) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    return results;
}

// Function to search and filter the table based on user input
function searchTable() {
    const query = document.getElementById('search').value.toLowerCase();
    const searchMethod = document.querySelector('input[name="searchMethod"]:checked').id;
    let filteredData = [];

    if (searchMethod === 'useLinear') {
        filteredData = linearSearch(query);
    } else if (searchMethod === 'useBinary') {
        filteredData = binarySearch(query);
    }

    renderTable(filteredData); // Re-render table with filtered data
}
