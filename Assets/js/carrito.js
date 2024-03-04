const btnDeseo = document.querySelectorAll('.btnDeseo');
const btnDeseos = document.querySelector('#btnCantidadDeseo');
let listaDeseo;
document.addEventListener('DOMContentLoaded', function(){if (localStorage.getItem('listaDeseo') != null) {
    listaDeseo = JSON.parse(localStorage.getItem('listaDeseo'));
}
    cantidadDeseo();
    for (let i = 0; i < btnDeseo.length; i++) {
        btnDeseo[i].addEventListener('click', function(){
            let idProducto = btnDeseo[i].getAttribute('prod');
            agregarDeseo(idProducto);
        })
    }
})
function agregarDeseo(idProducto){
    if (localStorage.getItem('listaDeseo') == null) {
        listaDeseo = [];
    } else {
        let listaExiste = JSON.parse(localStorage.getItem('listaDeseo'));
        for (let i = 0; i < listaExiste.length; i++) {
            if (listaExiste[i]['idProducto'] == idProducto) {
                Swal.fire({
                    title: "Aviso?",
                    text: "EL PRODUCTO YA ESTA EN LA LISTA DE DESEOS?",
                    icon: "warning"
                });
                return;
            }
            
        }
        listaDeseo.concat(localStorage.getItem('listaDeseo'));
    }
    listaDeseo.push({
        "idProducto" : idProducto,
        "cantidad" : 1
    })
    localStorage.setItem('listaDeseos', JSON.stringify(listaDeseo));
    Swal.fire({
        title: "Aviso?",
        text: "PRODUCTO AGREGADO?",
        icon: "success"
    });
    cantidadDeseo();

}
function cantidadDeseo() {
    let listas = JSON.parse(localStorage.getItem('listaDeseo'));
    if(listas != null){
        btnDeseos.textContent = listas.length;
    } else {
        btnDeseos.textContent = 0;
    }
    
    
}