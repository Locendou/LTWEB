package bean;

import java.io.Serializable;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import org.jdbi.v3.core.Jdbi;

public class Log extends AbBean implements Serializable {
	private int id;
	private int level;
	private String ip;
	private int CustomerId;
	private String src;
	private String content;
	private Date creatAt;
	private int status;
	static Map<Integer, String> levelMapping = new HashMap<>();
	static {
		levelMapping.put(0, "INFO");
		levelMapping.put(1, "ALERT");
		levelMapping.put(2, "WARNING");
		levelMapping.put(3, "DANGER");
	}
	public static int INFO = 0;
	public static int ALERT = 1;
	public static int WARNING = 2;
	public static int DANGER = 3;

	public Log() {
	}

	public Log(int level, String ip, int CustomerId, String src, String content, Date creatAt, int status) {
		super();
		this.level = level;
		this.ip = ip;
		this.CustomerId = CustomerId;
		this.src = src;
		this.content = content;
		this.creatAt = creatAt;
		this.status = status;
	}

	public Log(int level, String ip, int CustomerId, String src, String content, int status) {
		super();
		this.level = level;
		this.ip = ip;
		this.CustomerId = CustomerId;
		this.src = src;
		this.content = content;
		this.status = status;
	}

	public String getLevelWithName() {
		return levelMapping.get(levelMapping.containsKey(this.level) ? this.level : 0);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public int getCustomerId() {
		return CustomerId;
	}

	public void setUserId(int CustomerId) {
		this.CustomerId = CustomerId;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreatAt() {
		return creatAt;
	}

	public void setCreatAt(Date creatAt) {
		this.creatAt = creatAt;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public static Map<Integer, String> getLevelMapping() {
		return levelMapping;
	}

	public static void setLevelMapping(Map<Integer, String> levelMapping) {
		Log.levelMapping = levelMapping;
	}

	public static int getINFO() {
		return INFO;
	}

	public static void setINFO(int iNFO) {
		INFO = iNFO;
	}

	public static int getALERT() {
		return ALERT;
	}

	public static void setALERT(int aLERT) {
		ALERT = aLERT;
	}

	public static int getWARNING() {
		return WARNING;
	}

	public static void setWARNING(int wARNING) {
		WARNING = wARNING;
	}

	public static int getDANGER() {
		return DANGER;
	}

	public static void setDANGER(int dANGER) {
		DANGER = dANGER;
	}

	@Override
	public boolean insert(Jdbi db) {
		Integer i = db.withHandle(handle -> handle.execute(
				"INSERT INTO logs(`level`, `ip`, `idCustomer`, src, content, createAt, `status`) VALUES(?,?,?,?,?,NOW(),?)",
				this.level,this.getIp(), getCustomerId() == -1 ? null : getCustomerId(), this.src, this.content, this.status));
		return i == 1;
	}

}
