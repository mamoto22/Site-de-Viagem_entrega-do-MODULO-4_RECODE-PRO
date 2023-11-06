package model;

import java.sql.Date;
import java.time.LocalDate;

public class Destino {
private int id;
private String nomeDestino;
private String dataViagen;





public String getNomeDestino() {
	return nomeDestino;
}
public void setNomeDestino(String nomeDestino) {
	this.nomeDestino = nomeDestino;
}
public String getDataViagen() {
	return dataViagen;
}
public void setDataViagen(String localDate) {
	this.dataViagen = localDate;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public void setDataViagen(LocalDate localDate) {
	// TODO Auto-generated method stub
	
}


}
