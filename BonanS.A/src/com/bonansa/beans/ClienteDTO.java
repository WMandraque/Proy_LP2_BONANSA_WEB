package com.bonansa.beans;

public class ClienteDTO {
	
    //Cliente natural
	private String idCliente; 
	private int idTipoCliente;
	private String nomCliente;
	private String apePatCliente;
	private String apeMatCliente;
	private  String fecNacCliente;
	private String sexoCliente;
	private String telefonoCliente;
	private String celularCliente;
	private String correoCliente;
	private String numDocumento;
	private String idEstado;
	
	//Atributos extras para el cliente juridico
	private String razSocCliente; 
	private String ciiuCliente; 
	private String cargoContacCliente;
	
	//Atributos extras para realizar los listados en vistas!!
	private String descEstado;
	private String descTipoCliente;
	
	//Atributos para las direcciones
	private int idDirecCliente;
	private String direcDirecCliente;
	private String codubigeoDirecCliente;
	private int idTipoEstablec;
	private String descTipoEstablec;
	


	//Constructor para registrarlas direcciones
	public ClienteDTO(String direcDirecCliente, String codubigeoDirecCliente,
			int idTipoEstablec) {
		super();
		this.direcDirecCliente = direcDirecCliente;
		this.codubigeoDirecCliente = codubigeoDirecCliente;
		this.idTipoEstablec = idTipoEstablec;
	}
	
	
	

    //Contructor para listar las direcciones del cliente
	public ClienteDTO(int idDirecCliente, String idCliente,
			String direcDirecCliente, String codubigeoDirecCliente,
			int idTipoEstablec, String descTipoEstablec) {
		super();
		this.idDirecCliente = idDirecCliente;
		this.idCliente = idCliente;
		this.direcDirecCliente = direcDirecCliente;
		this.codubigeoDirecCliente = codubigeoDirecCliente;
		this.idTipoEstablec = idTipoEstablec;
		this.descTipoEstablec = descTipoEstablec;
	}


	//Constructor para registrar cliente NATURAL
	public ClienteDTO(int idTipoCliente, String nomCliente,
			String apePatCliente, String apeMatCliente, String fecNacCliente,
			String sexoCliente, String telefonoCliente, String celularCliente,
			String correoCliente, String numDocumento) {
		super();
		this.idTipoCliente = idTipoCliente;
		this.nomCliente = nomCliente;
		this.apePatCliente = apePatCliente;
		this.apeMatCliente = apeMatCliente;
		this.fecNacCliente = fecNacCliente;
		this.sexoCliente = sexoCliente;
		this.telefonoCliente = telefonoCliente;
		this.celularCliente = celularCliente;
		this.correoCliente = correoCliente;
		this.numDocumento = numDocumento;
	}
	




	//Constructor para el cliente juridico
	public ClienteDTO(int idTipoCliente, String nomCliente,
			String apePatCliente, String apeMatCliente, String fecNacCliente,
			String sexoCliente, String telefonoCliente, String celularCliente,
			String correoCliente, String numDocumento, String razSocCliente,
			String ciiuCliente, String cargoContacCliente) {
		super();
		this.idTipoCliente = idTipoCliente;
		this.nomCliente = nomCliente;
		this.apePatCliente = apePatCliente;
		this.apeMatCliente = apeMatCliente;
		this.fecNacCliente = fecNacCliente;
		this.sexoCliente = sexoCliente;
		this.telefonoCliente = telefonoCliente;
		this.celularCliente = celularCliente;
		this.correoCliente = correoCliente;
		this.numDocumento = numDocumento;
		this.razSocCliente = razSocCliente;
		this.ciiuCliente = ciiuCliente;
		this.cargoContacCliente = cargoContacCliente;
	}
	
	
	//Contructor para realizar los listados en vistas
	public ClienteDTO(String idCliente, String descTipoCliente, String nomCliente,
			String apePatCliente, String apeMatCliente, String telefonoCliente,
			String celularCliente, String correoCliente, String descEstado) 
	{
		super();
		this.idCliente = idCliente;
		this.nomCliente = nomCliente;
		this.apePatCliente = apePatCliente;
		this.apeMatCliente = apeMatCliente;
		this.telefonoCliente = telefonoCliente;
		this.celularCliente = celularCliente;
		this.correoCliente = correoCliente;
		this.descEstado = descEstado;
		this.descTipoCliente = descTipoCliente;
	}
	
	
	
	//Contructor para devolver la busqueda de un cliente natural y para actualizar
	public ClienteDTO(String idCliente, String nomCliente,
			String apePatCliente, String apeMatCliente, String fecNacCliente,
			String sexoCliente, String telefonoCliente, String celularCliente,
			String correoCliente, String numDocumento, String idEstado) {
		super();
		this.idCliente = idCliente;
		this.nomCliente = nomCliente;
		this.apePatCliente = apePatCliente;
		this.apeMatCliente = apeMatCliente;
		this.fecNacCliente = fecNacCliente;
		this.sexoCliente = sexoCliente;
		this.telefonoCliente = telefonoCliente;
		this.celularCliente = celularCliente;
		this.correoCliente = correoCliente;
		this.numDocumento = numDocumento;
		this.idEstado = idEstado;
	}
	
	

	//Contructor para devolver la busqueda de un cliente juridico y para actualizar
	public ClienteDTO(String idCliente, String nomCliente,
			String apePatCliente, String apeMatCliente, String fecNacCliente,
			String sexoCliente, String telefonoCliente, String celularCliente,
			String correoCliente, String numDocumento, String idEstado,
			String razSocCliente, String ciiuCliente, String cargoContacCliente) {
		super();
		this.idCliente = idCliente;
		this.nomCliente = nomCliente;
		this.apePatCliente = apePatCliente;
		this.apeMatCliente = apeMatCliente;
		this.fecNacCliente = fecNacCliente;
		this.sexoCliente = sexoCliente;
		this.telefonoCliente = telefonoCliente;
		this.celularCliente = celularCliente;
		this.correoCliente = correoCliente;
		this.numDocumento = numDocumento;
		this.idEstado = idEstado;
		this.razSocCliente = razSocCliente;
		this.ciiuCliente = ciiuCliente;
		this.cargoContacCliente = cargoContacCliente;
	}




	public ClienteDTO() {

	}





	public int getIdDirecCliente() {
		return idDirecCliente;
	}


	public String getDirecDirecCliente() {
		return direcDirecCliente;
	}


	public String getCodubigeoDirecCliente() {
		return codubigeoDirecCliente;
	}


	public int getIdTipoEstablec() {
		return idTipoEstablec;
	}


	public void setIdDirecCliente(int idDirecCliente) {
		this.idDirecCliente = idDirecCliente;
	}


	public void setDirecDirecCliente(String direcDirecCliente) {
		this.direcDirecCliente = direcDirecCliente;
	}


	public void setCodubigeoDirecCliente(String codubigeoDirecCliente) {
		this.codubigeoDirecCliente = codubigeoDirecCliente;
	}


	public void setIdTipoEstablec(int idTipoEstablec) {
		this.idTipoEstablec = idTipoEstablec;
	}


	public String getRazSocCliente() {
		return razSocCliente;
	}


	public String getCiiuCliente() {
		return ciiuCliente;
	}


	public String getCargoContacCliente() {
		return cargoContacCliente;
	}


	public void setNumDocumento(String numDocumento) {
		this.numDocumento = numDocumento;
	}


	public void setRazSocCliente(String razSocCliente) {
		this.razSocCliente = razSocCliente;
	}


	public void setCiiuCliente(String ciiuCliente) {
		this.ciiuCliente = ciiuCliente;
	}


	public void setCargoContacCliente(String cargoContacCliente) {
		this.cargoContacCliente = cargoContacCliente;
	}




	public String getIdCliente() {
		return idCliente;
	}


	public int getIdTipoCliente() {
		return idTipoCliente;
	}


	public String getNomCliente() {
		return nomCliente;
	}


	public String getApePatCliente() {
		return apePatCliente;
	}


	public String getApeMatCliente() {
		return apeMatCliente;
	}


	public String getFecNacCliente() {
		return fecNacCliente;
	}


	public String getSexoCliente() {
		return sexoCliente;
	}


	public String getTelefonoCliente() {
		return telefonoCliente;
	}


	public String getCelularCliente() {
		return celularCliente;
	}


	public String getCorreoCliente() {
		return correoCliente;
	}


	public String getIdEstado() {
		return idEstado;
	}


	public void setIdCliente(String idCliente) {
		this.idCliente = idCliente;
	}


	public void setIdTipoCliente(int idTipoCliente) {
		this.idTipoCliente = idTipoCliente;
	}


	public void setNomCliente(String nomCliente) {
		this.nomCliente = nomCliente;
	}


	public void setApePatCliente(String apePatCliente) {
		this.apePatCliente = apePatCliente;
	}


	public void setApeMatCliente(String apeMatCliente) {
		this.apeMatCliente = apeMatCliente;
	}


	public void setFecNacCliente(String fecNacCliente) {
		this.fecNacCliente = fecNacCliente;
	}


	public void setSexoCliente(String sexoCliente) {
		this.sexoCliente = sexoCliente;
	}


	public void setTelefonoCliente(String telefonoCliente) {
		this.telefonoCliente = telefonoCliente;
	}


	public void setCelularCliente(String celularCliente) {
		this.celularCliente = celularCliente;
	}


	public void setCorreoCliente(String correoCliente) {
		this.correoCliente = correoCliente;
	}


	public void setIdEstado(String idEstado) {
		this.idEstado = idEstado;
	}



	public String getNumDocumento() {
		return numDocumento;
	}


	public String getDescEstado() {
		return descEstado;
	}


	public String getDescTipoCliente() {
		return descTipoCliente;
	}


	public void setDescEstado(String descEstado) {
		this.descEstado = descEstado;
	}


	public void setDescTipoCliente(String descTipoCliente) {
		this.descTipoCliente = descTipoCliente;
	}





	public String getDescTipoEstablec() {
		return descTipoEstablec;
	}




	public void setDescTipoEstablec(String descTipoEstablec) {
		this.descTipoEstablec = descTipoEstablec;
	}



	
	
	
	
}