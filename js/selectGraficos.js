function selector(x) {
    document.getElementById('s1').classList.remove('seleccionado');
    document.getElementById('s2').classList.remove('seleccionado');
    document.getElementById('s3').classList.remove('seleccionado');
    document.getElementById('s'+x).classList.add('seleccionado');   
}