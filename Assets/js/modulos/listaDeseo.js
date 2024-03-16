const tableLista = document.querySelector('#tableListaDeseo tbody');

document.addEventListener('DOMContentLoaded', function () {
  if (tableLista) { // Check if tableLista exists before using it
    fetchData()
    .then(data => getListaDeseo(data))
    .catch(error => console.error(error));
} else {
    console.error('Element with ID "tableListaDeseo tbody" not found.');
}
});

function fetchData() {
return new Promise((resolve, reject) => {
    const url = base_url + 'principal/listaDeseo';
    const http = new XMLHttpRequest();
    http.open('POST', url, true);
    http.send();

    http.onreadystatechange = function () {
    if (this.readyState === 4) {
        if (this.status === 200) {
          let data = this.responseText; // Get the response

          // Attempt to remove any leading characters before the actual JSON data
        try {
            data = data.slice(data.indexOf('{')); // Remove everything before "{"
        } catch (error) {
            console.error('Failed to clean response data:', error);
            reject(new Error('Invalid data format'));
        }

        try {
            resolve(JSON.parse(data));
        } catch (error) {
            reject(new Error('Failed to parse JSON data'));
        }
        } else {
        reject(new Error('Failed to fetch data'));
        }
    }
    };
});
}

function getListaDeseo(data) {
let html = '';
data.forEach(producto => {
    html += `<tr>
    <td>
        <img class="img-thumbnail rounded-circle" src="${producto.imagen}" alt="" width="100">
    </td>
    <td>${producto.nombre}</td>
    <td>${producto.precio}</td>
    <td>${producto.cantidad}</td>
    <td>
    <button class="btn btn-danger" type="button"><i class="fas fa-trash"></i></button>
    <button class="btn btn-info" type="button"><i class="fas fa-cart-plus"></button>
    </td>
    </tr>`;
});
tableLista.innerHTML = html;
}


