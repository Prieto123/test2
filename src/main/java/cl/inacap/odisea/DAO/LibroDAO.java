package cl.inacap.odisea.DAO;

public class LibroDAO {
	private String nombreLibro;
	private String autorLibro;
	private int cantPaginas;
	private Boolean destacado;
	private String portadaLibro;
	private int Estrellas;
	private int idCategoria;
	private int idLibro;
	
	public LibroDAO(String nombreLibro, String autorLibro, int cantPaginas, Boolean destacado, String portadaLibro,
			int estrellas, int idCategoria, int idLibro) {
		super();
		this.nombreLibro = nombreLibro;
		this.autorLibro = autorLibro;
		this.cantPaginas = cantPaginas;
		this.destacado = destacado;
		this.portadaLibro = portadaLibro;
		Estrellas = estrellas;
		this.idCategoria = idCategoria;
		this.idLibro = idLibro;
	}
	
	public LibroDAO() {
		super();
	}
	

	public int getIdLibro() {
		return idLibro;
	}
	public void setIdLibro(int idLibro) {
		this.idLibro = idLibro;
	}
	public String getNombreLibro() {
		return nombreLibro;
	}
	public void setNombreLibro(String nombreLibro) {
		this.nombreLibro = nombreLibro;
	}
	public String getAutorLibro() {
		return autorLibro;
	}
	public void setAutorLibro(String autorLibro) {
		this.autorLibro = autorLibro;
	}
	public int getCantPaginas() {
		return cantPaginas;
	}
	public void setCantPaginas(int cantPaginas) {
		this.cantPaginas = cantPaginas;
	}
	public Boolean getDestacado() {
		return destacado;
	}
	public void setDestacado(Boolean destacado) {
		this.destacado = destacado;
	}
	public String getPortadaLibro() {
		return portadaLibro;
	}
	public void setPortadaLibro(String portadaLibro) {
		this.portadaLibro = portadaLibro;
	}
	public int getEstrellas() {
		return Estrellas;
	}
	public void setEstrellas(int estrellas) {
		Estrellas = estrellas;
	}
	public int getIdCategoria() {
		return idCategoria;
	}
	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}
	
}