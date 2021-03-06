

$(document).ready(function() {
	ocultaDivs();
	gestionaTiposRegistroCliente();
	agregarDireccion();
	limpiarTabla();
	fnc_limpiarCampos();
});

function gestionaTiposRegistroCliente() {

	$('#cboTipoCliente').change(function() {

		$('#contenedor').show();

		var idTipoCliente = document.getElementById("cboTipoCliente").value;

		if (idTipoCliente == '1') {
			$('#divNatural').hide();
			$('#tituloCN').hide();

			$('#divJuridico').show(); // muestro mediante id
			$('#tituloCJ').show();

		} else if (idTipoCliente == '2') {
			$('#divJuridico').hide(); // muestro mediante id
			$('#tituloCJ').hide();

			$('#divNatural').show();
			$('#tituloCN').show();
		} else if (idTipoCliente == '0') {
			$('#divJuridico').hide();
			$('#tituloCN').hide();
			$('#tituloCJ').hide();
			$('#contenedor').hide();
		}

	});

}

function ocultaDivs() {
	$('#divNatural').hide();
	$('#divJuridico').hide();
	$('#tituloCN').hide();
	$('#tituloCJ').hide();
	$('#contenedor').hide();

}

function agregarDireccion() {

	$('#btnAgregar')
			.click(
					function() {

						var ultimoValor = " ";
						// Hallar el ultimo valor de la ultima columna
						$('#tabla tr').each(function() {
							ultimoValor = $(this).find("td").eq(3).html();
						});

						if ($("#cboTipoEstablecimiento option:selected").text() == "Sin Asignar"
								| $("#cboDistrito option:selected").text() == "SELECCIONE"
								| !($("#txtDireccion").val() !== "")
								| !(ultimoValor !== $("#txtDireccion").val())) {
						} else {

							direcCliente = document
									.getElementById("txtDireccion").value;
							idTipoEstablec = $("#cboTipoEstablecimiento").val();
							descTipoEstablecimiento = $(
									"#cboTipoEstablecimiento option:selected")
									.text();
							ubigeo = $("#cboDistrito").val();

							$
									.ajax({
										url : 'gestionaCliente?operacion=agregarDireccion&tipo=Insert',
										type : 'post',
										datatype : 'json',
										data : "direcCliente=" + direcCliente
												+ "&ubigeo=" + ubigeo
												+ "&idTipoEstablec="
												+ idTipoEstablec,
										success : function(r) {
											$("#tabla").find("tr:gt(0)")
													.remove();
											var json = eval('(' + r + ')');
											for (var i = 0; i < json.length; i++) {

												cadena = "<tr>";
												cadena = cadena
														+ "<td>"
														+ descTipoEstablecimiento
														+ "</td>";
												cadena = cadena
														+ "<td>"
														+ json[i].idTipoEstablec
														+ "</td>";
												cadena = cadena
														+ "<td>"
														+ json[i].codubigeoDirecCliente
														+ "</td>";
												cadena = cadena
														+ "<td>"
														+ json[i].direcDirecCliente
														+ "</td>";
												cadena = cadena + "<td><a class='elimina' onclick='fn_eliminar()'><input type='button' class='btn btn-sm' value='Eliminar'/></a></td>";
												$("#tabla").append(cadena);

											}
											;
										}
									});
						}
						;
					});
};

function fn_eliminar() {
	$("a.elimina").click(function(){
		direccion = $(this).parents("tr").find("td").eq(3).html();
		$.ajax({
			url : 'gestionaCliente?operacion=eliminarDireccion',
			type : 'post',
			data : "direccion="+direccion,
			success : function() {
				}
		});
		$(this).parents("tr").fadeOut("normal", function(){$(this).remove();});	
	});
};

function limpiarTabla() {
	$('#btnLimpiarTabla').click(function() {
		$.ajax({
			url : 'gestionaCliente?operacion=limpiarDirecciones',
			type : 'post',
			success : function(r) {
				$("#tabla").find("tr:gt(0)").remove();
			}
		});
	});
};

function fnc_limpiarCampos() {
	$('#btnLimpiarCampos').click(function() {

		$("#txtDireccion").val("");
		var combo = document.getElementById("cboPronvincia");
		var combo2 = document.getElementById("cboDistrito");
		LimpiarCombo(combo);
		LimpiarCombo(combo2);
	});

};

