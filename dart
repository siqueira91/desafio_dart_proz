String cpf_requisitado(){
  print("números do seu cpf");
  int cpf = int.parse(stdin.readLineSync()!);
  // String cpf_exibido = cpf.substring(0,3)+"."+cpf.substring(3,6)+"."+cpf.substring(6,9)+"-"+cpf.substring(9,11);
  if (cpfvalidador(cpf)) {
    String tratamentocpf = cpf.toString();
    print('CPF foi validado');
    String cpf_exibido = tratamentocpf.substring(0,3)+"."+tratamentocpf.substring(3,6)+"."+tratamentocpf.substring(6,9)+"-"+tratamentocpf.substring(9,11);
    return cpf_exibido;
  }else{
    print("CPF inválido.\nDigite novamente");
    return cpf_requisitado();
  }
}
bool cpfvalidador( int cpf){
  String cpf2 = cpf.toString();
  if(cpf2.length==11){
    return true;
  }else{
  }return false;
  }
  
// cnpj
// String cnpj_exibido = cnpj_requisitado();
String cnpj_requisitado(){
  print('numeros do cnpj da empresa');
  int cnpj = int.parse(stdin.readLineSync()!);
  if(cnpjvalidador(cnpj)){
    print('CNPJ é valido');
    String tratamentocnpj = cnpj.toString();
    String cnpj_exibido = tratamentocnpj.substring(0,2)+"."+tratamentocnpj.substring(2,5)+"."+tratamentocnpj.substring(5,8)+"/"+tratamentocnpj.substring(8,12)+"-"+tratamentocnpj.substring(12,14);
    return cnpj_exibido;
  }else{
    print('CNPJ inválido\nDigite novamente');
    return cnpj_requisitado();
  }
}
bool cnpjvalidador(int cnpj){
    String cnpj2 = cnpj.toString();
    if(cnpj2.length==14){
    return true;
  }else{
    return false;
  }
}

// fim cnpj


// contato
String contato_requisitado(){
  print("números do seu contato");
  int contato = int.parse(stdin.readLineSync()!);
  String tratamentoContato = contato.toString();

  //digitação espaçada
  tratamentoContato = tratamentoContato.replaceAll(" ","");
  if(tratamentoContato.length==11){
  String contado_exibido = "("+tratamentoContato.substring(0,2)+")"+" "+tratamentoContato.substring(2,3)+" "+tratamentoContato.substring(3,7)+"-"+tratamentoContato.substring(7);
  print("Numero valido");
  return contato_exibido;
  }else{
    print('Numero inválido, digite novamente');
    return contato_requisitado();
  }
}
//fim contato


// cep
String cep_requisitado(){
  int cep = int.parse(stdin.readLineSync()!);
  String cepString ="0"+cep.toString();
String endereco(){
  String numero_exibido = "";
  print("Digite logadouro");
  String logadouro = stdin.readLineSync(encoding: utf8)!;
  print("digite numero da sua casa");
  String numero_casa = tratamento_numeroResidencial();
  print("Digite complemento se houver, caso não somente aperte Enter");
  String complemento = stdin.readLineSync(encoding: utf8)!;
  print("Digite seu bairro");
  String bairro = stdin.readLineSync(encoding: utf8)!;
  print("Digite a cidade");
  String cidade = stdin.readLineSync(encoding: utf8)!;
  print("Digite Estado");
  String estado = stdin.readLineSync(encoding: utf8)!;
 
  // String cepFinal = chama_cep();
  //complemento pode receber ""
  if(logadouro!=""&&numero_casa!=""&&bairro!=""&&estado!=""&&cidade!=""){
  String endereco_exibido = logadouro+","+numero_casa+","+complemento+","+bairro+","+cidade+"/"+estado;
  return endereco_exibido;
  }else{
    print("Dados inválidos, digite novamente");
    return endereco();
  }
}
String tratamento_numeroResidencial(){

  //função para tratar o numero residencial
  int numero = int.parse(stdin.readLineSync()!);
  String numeracao_exibida = "";
  if(numero.isFinite&& numero>0){
    numeracao_exibida = numero.toString();
    return numeracao_exibida;
  }else{
    print('Numero inválido, digite novamente');
    return tratamento_numeroResidencial();
  }
}
