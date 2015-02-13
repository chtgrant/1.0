/* verifica caracteres válidos para CEP */
function isCep(campo) {
	validChars = "0123456789-";
	cont = campo;
	if(cont.indexOf("-") > -1){
		if(cont.length != 9){
			return false
		}
	} else {
		if(cont.length > 8){
			return false
		}
	}
	for (i=0; i < cont.length; i++) {
		asc =  cont.charAt(i);
		if (validChars.indexOf(asc) == -1){ 
			return false;
		}
	}
	return true;
}

// valida e-mail
function validaEmail(campo) {
	invalidChars = " /:,;";
	email = campo;
	for (i=0; i < invalidChars.length; i++) {
		badChar = invalidChars.charAt(i);
		if (email.indexOf(badChar,0) > -1) return false;
	}
	atPos = email.indexOf("@",1);
	if (atPos == -1) return false;
	if (email.indexOf("@",atPos+1) != -1) return false;
	periodPos = email.indexOf(".",atPos);
	if (periodPos == -1) return false;
	if (periodPos+3 > email.length) return false;
	return true;
}

function isEmpty(campo) {
	if (campo.val_replace(" ","") == "") {
		return true;
	}
	return false;
}

function pulaForm(obj, size, next) {
	if (obj.value.length == size) {
		next.focus();
	}
}

function contador(obj, idCounter, limit) {
	if (limit !=0) {
		if (obj.value.length > limit) {
			obj.value = obj.value.substring(0, limit);
		}
	}
	document.getElementById(idCounter).innerHTML = limit - obj.value.length;
}

// valida data

var dia="", mes="", ano="";
function isDate(campo,formato) {
	if (campo) {
		date = campo;
		date = date.split('-');

		if(formato=='yy-mm-dd')
		{
			dia = date[2]; 
			mes = date[1]; 
			ano = date[0];
		}
		else if(formato=='dd-mm-yy')
		{
			dia = date[0]; 
			mes = date[1]; 
			ano = date[2];
		}
		else
		{
			dia = date[2]; 
			mes = date[1]; 
			ano = date[0];
		}

		if (
			( isNaN(parseInt(dia)) || isNaN(parseInt(mes)) || isNaN(parseInt(ano)) ) ||
			(ano < 1900 || ano > 9999) || 
			(mes < 1 || mes > 12) || 
			(dia < 1 || dia > 31) || 
			(mes == 2 && dia > 28 && (ano % 4 != 0)) || 
			(mes == 2 && dia > 29 && (ano % 4 == 0)) || 
			(dia > 30 && (mes == 4 || mes == 6 || mes == 9 || mes== 11))
		) { return false; } else { return true; }
	}
}

function InStr(texto,c,posInicial){
	if (posInicial<0) posInicial=0;
	for(var i=posInicial; i<texto.length;i++){
		if(texto.charAt(i)==c) return true
	}
	return false
}

/* valida CPF */
function isCPF(campo) {
	var soma1 = resto = dig1 = dig2 = 0;
	nCpf = campo;
	invalidChars = " /:,;-..";
	var seq = [
		"00000000000",
		"11111111111",
		"22222222222",
		"33333333333",
		"44444444444",
		"55555555555",
		"66666666666",
		"77777777777",
		"88888888888",
		"99999999999",
		"01234567890"
	]
	for(nS=0; nS < seq.length; nS++){
		if(nCpf == seq[nS])
			return false
	}
	for (i=0; i < invalidChars.length; i++) {
		badChar = invalidChars.charAt(i);
		nCpf = nCpf.replace(badChar,"");
	}
	for (var i = 10; i > 1; i --) { soma1 += parseInt(nCpf.substr(nCpf.length-i-1, 1)) * i }
	resto = soma1 % 11;
	switch (resto) {
		case 0:
		case 1:
			dig1 = 0
			break
		default:
			dig1 = 11 - resto
			break
	}
	soma1 = 0;
	for (i = 11; i > 2; i--) { soma1 += parseInt(nCpf.substr(nCpf.length-i,1)) * i  }
	soma1 = soma1 + dig1 * 2;
	resto = soma1 % 11;
	switch (resto) {
		case 0:
		case 1:
			dig2 = 0
			break
		default:
			dig2 = 11 - resto
			break
	}
	var controle = String(dig1) + String(dig2);
	if (controle == nCpf.substr(9)) { return true } else { return false }
}

/* verifica RG */
function isRG(campo) {
	vRg = campo;
	vRg = vRg.val_replace(" ","")
	validChars = "0123456789x";
	if(vRg == "")
		return false

	if(isNaN(vRg.substring(0,vRg.lrngth-1)))
		return false

	if(isNaN(vRg.charAt(vRg.length)) && vRg.charAt(vRg.length).toUpperCase() != "X")
		return false;

	for(nL=0; nL < vRg.length; nL++){
		if(validChars.toLowerCase().indexOf(vRg.charAt(nL).toLowerCase()) == -1)
			return false
	}
	return true
}

/* verifica se o campo e numerico */
function isNum(campo) {
	if (isNaN(campo) || (campo == "")) { return true; } else { return false; }
}

/* verifica CNPJ */
function isCNPJ(campo) {
	VCNPJ = campo;
	var NewCGC = "";
	var CGC = VCNPJ;

	invalidChars = " /:,;-..";
	for (i=0; i < invalidChars.length; i++) {
		badChar = invalidChars.charAt(i);
		VCNPJ = VCNPJ.replace(badChar,"");
		CGC = CGC.replace(badChar,"");
	}

	if (
	VCNPJ.length != 14 || VCNPJ == "00000000000000" || VCNPJ == "11111111111111" ||
	VCNPJ == "22222222222222" ||	VCNPJ == "33333333333333" || VCNPJ == "44444444444444" ||
	VCNPJ == "55555555555555" || VCNPJ == "66666666666666" || VCNPJ == "77777777777777" ||
	VCNPJ == "88888888888888" || VCNPJ == "99999999999999"
	) 
	{ return false; }
	var DVCGC = CGC.substring(0,12);

	var s1 = 0;
	for (i=1;i<=4;i++) { s1 = s1 + ((DVCGC.charAt(i-1))*(6-i)); }
	for (i=5;i<=12;i++) { s1 = s1 + ((DVCGC.charAt(i-1))*(14-i)); }
	r1 = s1 % 11;
	if (r1<2) { dv1=0; } else { dv1 = 11 - r1; }

	var s2 = dv1*2;
	for (i=1;i<=5;i++) { s2 = s2 + ((DVCGC.charAt(i-1))*(7-i)); }
	for (i=6;i<=12;i++) { s2 = s2 + ((DVCGC.charAt(i-1))*(15-i)); }
	r2 = s2 % 11;
	if (r2<2) { dv2=0; } else { dv2 = 11 - r2; }
	var DV = "";
	DV = DV + dv1 + dv2;

	var NewDV = CGC.substring(12,14)
	if (NewDV==DV) { return true; } else { return false; }
}

/* verifica se o campo e string */
function isStr(campo) {
	if (isNaN(campo)) { return true } else { return false }
}

function validaCheck(id, quantos) {
	var counter = 0;
	for (i=0; i<quantos; i++) {
		if (document.getElementById(id+i).checked == true) {
			counter++;
		}
	}
	if (counter) { return true; } else { return false; }
}

function valRadio(obj) {
	var ok = false;
	for(i=0; i<obj.length; i++) {
		if(obj[i].checked) {
			ok = true;
			break;
		}
	}
	return ok;
}

String.prototype.val_replace = function(a,b) {
	var str = "";
	for (lS=0; lS < this.length; lS++){
		if (this.charAt(lS) == a) { str += b } else { str += this.charAt(lS) }
	}
	return str;
}