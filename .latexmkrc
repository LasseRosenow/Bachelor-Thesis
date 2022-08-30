add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
sub makeglo2gls {
system("makeindex -s $_[0].ist -t $_[0].glg -o $_[0].gls $_[0].glo");
}
add_cus_dep('slo', 'sls', 0, 'makeglo2sls');
sub makeglo2sls {
system("makeindex -s $_[0].ist -t $_[0].slg -o $_[0].sls $_[0].slo");
}
add_cus_dep('acn', 'acr', 0, 'makeacn2acr');
sub makeacn2acr {
system("makeindex -s $_[0].ist -t $_[0].alg -o $_[0].acr $_[0].acn");
}