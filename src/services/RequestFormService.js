export async function getRequestForm() {

    const response = await fetch('/api/form');
    return await response.json();
}

export async function setRequestForm(data) {
    const response = await fetch(`/api/form`, {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({form: data})
      })
    return await response.json();
}