<?php

$nomes = ['Francisco Souza', 'Guilherme Rosa', 'Arthur Golveia'];

$arrayDeNascimento = [
    'Francisco Souza' => '10-12-1996',
    'Arthur Golveia' => '14-01-2000',
    'Guilherme Rosa' => '26-05-1985',
    'Marcelo Planalto' => '26-05-1985'
];

$arrayDeClientes = [];

foreach ($nomes as $nome){
    $cliente = new stdClass();
    $cliente->nome = $nome;
    $cliente->dataNascimento = $arrayDeNascimento[$nome];
    $arrayDeClientes[] = $cliente;
}

echo "Segundo nome: {$arrayDeClientes[1]->nome}<br>";

echo "<br>Imprimindo os nomes com suas datas de nascimento:<br><br>";

foreach ($arrayDeClientes as $cliente) {
    echo "Nome: {$cliente->nome}, Data de Nascimento: {$cliente->dataNascimento}<br>";
}

echo "<br>Ordenando pela data de nascimento:<br><br>";

usort($arrayDeClientes, function ($a, $b) {
    return strtotime($a->dataNascimento) - strtotime($b->dataNascimento);
});

foreach ($arrayDeClientes as $cliente) {
    echo "{$cliente->nome} nascido em {$cliente->dataNascimento}<br>";
}

?>
