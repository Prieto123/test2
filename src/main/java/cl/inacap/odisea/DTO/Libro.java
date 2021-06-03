package cl.inacap.odisea.DTO;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import cl.inacap.odisea.DAO.LibroDAO;

public class Libro {
	private static List<LibroDAO> libros = new ArrayList<LibroDAO>();
	
	public void addL(LibroDAO l) {
		libros.add(l);
		
		
	}
	
	public void remove(LibroDAO l) {
		libros.remove(l);
	}
	
	public List<LibroDAO> getAll() {
		deTxtToObject();
		return libros;
	}
	
	public void deTxtToObject()  {
		try {
            File file= new File ("C:/Users/pablo/eclipse-workspace/test2/src/main/webapp/libro.txt");
            FileReader fr=new FileReader(file);
            BufferedReader br=new BufferedReader(fr);
            String linea=br.readLine();
            while((linea=br.readLine())!=null) {
                String [] arrLinea=linea.split(":::");
                LibroDAO l = new LibroDAO();
                l.setIdLibro(Integer.parseInt(arrLinea[0]));
                
                l.setNombreLibro(arrLinea[1]);
                l.setAutorLibro(arrLinea[2]);
                l.setCantPaginas(Integer.parseInt(arrLinea[3]));
                l.setDestacado(Boolean.parseBoolean(arrLinea[4]));
                l.setPortadaLibro(arrLinea[5]);
                l.setEstrellas(Integer.parseInt(arrLinea[6]));
                
                addL(l);
            }
            br.close();
        }catch(Exception e) {
        }
	}
	
	public void update(LibroDAO l) {
		
	}
}
