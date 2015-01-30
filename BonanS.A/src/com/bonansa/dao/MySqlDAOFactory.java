package com.bonansa.dao;

import com.bonansa.beans.SolicitudOrdenRecojoDTO;
import com.bonansa.interfaces.ClienteDAO;
import com.bonansa.interfaces.EmpleadoDAO;
import com.bonansa.interfaces.GuiaRemisionTransportistaDAO;
import com.bonansa.interfaces.IncidenciaDAO;
import com.bonansa.interfaces.LogDAO;
import com.bonansa.interfaces.OrdenRecojoDAO;
import com.bonansa.interfaces.UsuarioDAO;
import com.bonansa.interfaces.VehiculoDAO;

public class MySqlDAOFactory extends DAOFactory {

	@Override
	public UsuarioDAO getUsuarioDAO() {
		// TODO Auto-generated method stub
		return new MySQLUsuarioDAO();
	}

	@Override
	public VehiculoDAO getVehiculoDAO() {
		// TODO Auto-generated method stub
		return new MySQLVehiculoDAO();
	}

	@Override
	public LogDAO getLogDAO() {
		// TODO Auto-generated method stub
		return new MySQLLogDAO();
	}

	@Override
	public ClienteDAO getClienteDAO() {
		// TODO Auto-generated method stub
		return new MySQLClienteDAO();
	}

	@Override
	public EmpleadoDAO getEmpleadoDAO() {
		// TODO Auto-generated method stub
		return new MySQLEmpleadoDAO();
	}

	@Override
	public OrdenRecojoDAO getOrdenRecojoDAO() {
		// TODO Auto-generated method stub
		return new MySQLOrdenRecojoDAO();
	}

	@Override
	public GuiaRemisionTransportistaDAO getGuiaRemisionTransportistaDAO() {
		// TODO Auto-generated method stub
		return new MySQLGuiaRemisionTransportistaDAO();
	}

	@Override
	public IncidenciaDAO getIncidenciaDAO() {
		// TODO Auto-generated method stub
		return new MySQLIncidenciaDAO();
	}

}
