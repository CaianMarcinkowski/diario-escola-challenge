var clientes = [
    {
    'id': 1,
    'nome': 'Luis Santos Silveira',
    'idade': 18
    },
    {
    'id': 2,
    'nome': 'Ricardo Lopes Alves',
    'idade': 30
    },
    {
    'id': 3,
    'nome': 'Gustavo Silva Junior',
    'idade': 26
    }
];

clientes.forEach(function(cliente) {
    var partesNome = cliente.nome.split(' ');

    var primeiroNome = partesNome[0];
    var ultimoSobrenome = partesNome[partesNome.length - 1];

    console.log(ultimoSobrenome + ', ' + primeiroNome);
});

var numero = "5(1)9-876-543-21";

var numeroLimpo = numero.replace(/\D/g, '');

var numeroFormatado = `(${numeroLimpo.substring(0, 2)})_${numeroLimpo[2]}_${numeroLimpo.substring(3, 7)}-${numeroLimpo.substring(7)}`;

console.log(numeroFormatado);

/* Bônus:
3) Qual a ordem dos prints no console?
// A ordem dos prints no console são 'A função é: c' e 'A função é: d'

4) Existe algum erro nesse código? Se sim, comente sobre?
// Os erros que contem neste código são que na função c o resolve() esta sendo chamando antes do alertUser e na função b() o return esta sendo executado antes do alertUser. 
*/

