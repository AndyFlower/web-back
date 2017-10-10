package com.slp.util;

import java.io.ByteArrayInputStream;
import java.io.File;  
import java.io.FileOutputStream;  
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketException;
import java.nio.charset.Charset;
import java.util.ArrayList;  
import java.util.List;  
  
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;  
import org.apache.commons.net.ftp.FTPReply;
import org.apache.log4j.Logger;
import org.springframework.util.Assert;  
  
/** 
 * 用来操作ftp的综合类。<br/> 
 * 主要依赖jar包commons-net-3.1.jar。 
 *  
 * @author 宋立君 
 * @date 2017年10月10日 
 */  
public class FtpUtil {  
	private static Logger logger = Logger.getLogger(FtpUtil.class); // 日志记录

    // ftp 地址  
    private String url;  
    // ftp端口  
    private int port;  
    // 用户名  
    private String userName;  
    // 密码  
    private String password;  
    private FTPClient client = null;
	/** ftp默认端口*/
	private final static int DEFAULT_PORT = 21;
	/** 默认字符集*/
	private final static String DEFAULT_CHARSET = "utf-8";
	/** linux路径分隔符*/
	public static final String LINUX_SEPARATOR = "/";
	/** linux的当前目录*/
	private static final String CURRENT_DIR = ".";
	/** linux用户的家目录*/
	private static final String HOME_DIR = "~";
	/** 若文件名重复，最大重命名次数*/
	private static final int MAX_RENAME_NUM = 10;
	/** 集合默认容量*/
	private static final int DEFAULT_CAPACITY = 100;
    /** 
     * 构造函数 
     *  
     * @param url 
     *            ftp地址 
     * @param port 
     *            ftp端口 
     * @param userName 
     *            用户名 
     * @param password 
     *            密码 
     * @author sanglp 
     * @date  2017年10月10日 
     * 
     */  
    public FtpUtil(String url, int port, String userName, String password) {  
        this.url = url;  
        this.port = port;  
        this.userName = userName;  
        this.password = password;  
    }  
  
    /** 
     * 从FTP服务器下载指定文件名的文件。 
     *  
     * @param remotePath 
     *            FTP服务器上的相对路径 
     * @param fileName 
     *            要下载的文件名 
     * @param localPath 
     *            下载后保存到本地的路径 
     * @return 成功下载返回true，否则返回false。 
     * @throws IOException 
     * @author sanglp
     * @date 2017年10月10日 
     */  
    public boolean downFile(String remotePath, String fileName, String localPath)  
            throws IOException {  
        boolean success = false;  
        FTPClient ftp = new FTPClient();  
        try {  
            int reply;  
            ftp.connect(url, port);  
            // 如果采用默认端口，可以使用ftp.connect(url)的方式直接连接FTP服务器  
            ftp.login(userName, password);// 登录  
            reply = ftp.getReplyCode();  
            if (!FTPReply.isPositiveCompletion(reply)) {  
                ftp.disconnect();  
                return success;  
            }  
            ftp.changeWorkingDirectory(remotePath);// 转移到FTP服务器目录  
            FTPFile[] fs = ftp.listFiles();  
            FTPFile ff;  
            for (int i = 0; i < fs.length; i++) {  
                ff = fs[i];  
                if (null != ff && null != ff.getName()  
                        && ff.getName().equals(fileName)) {  
                    File localFile = new File(localPath + "/" + ff.getName());  
                    OutputStream is = new FileOutputStream(localFile);  
                    ftp.retrieveFile(ff.getName(), is);  
                    is.close();  
                }  
            }  
            ftp.logout();  
            success = true;  
        } catch (IOException e) {  
            e.printStackTrace();  
            throw e;  
        } finally {  
            if (ftp.isConnected()) {  
                try {  
                    ftp.disconnect();  
                } catch (IOException ioe) {  
                }  
            }  
        }  
        return success;  
    }  
    /**
	 * 上传
	 * @param directory 工作目录
	 * @param fileName 文件上传后的名字
	 * @param content 上传的文件内容
	 */
	public void upload(String fileName, String content, Charset charset) {
		Assert.hasText(content, "content is null");
		Assert.notNull(charset, "charset is null");
		
		this.upload(fileName, new ByteArrayInputStream(content.getBytes(charset)));
	}
	/**
	 * 上传content到fileName文件中，使用默认字符集utf-8
	 * @param directory
	 * @param fileName
	 * @param content
	 */
	public void upload(String fileName, String content) {
		this.upload(fileName, content, Charset.forName(DEFAULT_CHARSET));
	}
	/**
	 * 文件上传
	 * @param directory
	 * @param fileName
	 * @param input
	 */
	public void upload(String fileName, InputStream input) {
		Assert.hasText(fileName, "fileName is null");
		Assert.notNull(input, "input is null");
		
		login();
		try {
			if (isFileExist(client, fileName)) {
				logger.error("fileName:{} is exists, do nothing"+ fileName);
				throw new RuntimeException("fileName:" + fileName + " is exists, do nothing");
			}
			client.storeFile(fileName, input);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			logout();
		}
	}
    /** 
     * 从FTP服务器列出指定文件夹下文件名列表。 
     *  
     * @param remotePath 
     *            FTP服务器上的相对路径 
     * @return List<String> 文件名列表，如果出现异常返回null。 
     * @throws IOException 
     * @author sangliping
     * @date 2017年10月10日
     */  
    public List<String> getFileNameList(String remotePath) throws IOException {  
        // 目录列表记录  
        List<String> fileNames = new ArrayList<String>();  
        FTPClient ftp = new FTPClient();  
        try {  
            int reply;  
            ftp.connect(url, port);  
            // 如果采用默认端口，可以使用ftp.connect(url)的方式直接连接FTP服务器  
            ftp.login(userName, password);// 登录  
            reply = ftp.getReplyCode();  
            if (!FTPReply.isPositiveCompletion(reply)) {  
                ftp.disconnect();  
                return null;  
            }  
            ftp.changeWorkingDirectory(remotePath);// 转移到FTP服务器目录  
            FTPFile[] fs = ftp.listFiles();  
            for (FTPFile file : fs) {  
                fileNames.add(file.getName());  
            }  
            ftp.logout();  
        } catch (IOException e) {  
            e.printStackTrace();  
            throw e;  
        } finally {  
            if (ftp.isConnected()) {  
                try {  
                    ftp.disconnect();  
                } catch (IOException ioe) {  
                }  
            }  
        }  
        return fileNames;  
    }  
    /**
	 * 判断目录directory下的文件fileName是否存在,当且仅当当前用户有访问该文件的权限时返回true
	 * @param fileName 文件名
	 * @return
	 * @author sangliping
	 */
	public boolean isFileExist(FTPClient ftpClient, String fileName) {
		Assert.hasText(fileName, "fileName is null");
		
		if (ftpClient == null || !ftpClient.isConnected()) {
			logger.error("ftpClient is null or connection is dead");
			throw new RuntimeException("ftpClient is null or connection is dead");
		}
		
		try {
			FTPFile[] files = ftpClient.listFiles(fileName);
			//可以进入目录，不可以进入，filename,且filename存在
			//1.files不为空
			//2.返回结果只有一个元素
			//3.返回的结果是一个文件
			//4.dirctory + "/" + fileName 不能作为工作目录，说明fileName是文件
			if (files != null 
					&& files.length == 1 
					&& files[0].isFile() 
					&& !ftpClient.changeWorkingDirectory(fileName)){
				return true;
			}
			//若fileName是一个文件，需要切换到原目录
			return false;
		} catch (IOException e) {
			e.printStackTrace();
			logger.error("internet exception,connect " + url + ":" + port + " error");
			throw new RuntimeException("internet exception,connect " + url + ":" + port + " error");
		}
	}
	/**
	 * 判断目录是否存在,当且仅当当前用户能进入该目录，并作为工作目录返回true
	 * @param directory 目录
	 * @return
	 */
	public boolean isDirectoryExist(FTPClient ftpClient, String directory) {
		Assert.hasText(directory, "directory is null");
		
		if (ftpClient == null || !ftpClient.isConnected()) {
			logger.error("ftpClient is null or connection is dead");
			throw new RuntimeException("ftpClient is null or connection is dead");
		}
		try {
			FTPFile[] files = ftpClient.listFiles(directory);
			//1.目录不存在
			//2.目录存在但无权进入
			//3.是一个文件
			if (files == null || !ftpClient.changeWorkingDirectory(directory)) {
				return false;
			}
			//1.空目录
			//2.只有一个文件或目录，可以进入目录
			//3.很多文件
			ftpClient.changeWorkingDirectory(HOME_DIR);
			return true;
		} catch (IOException e) {
			e.printStackTrace();
			logger.error("internet exception,connect " + url + ":" + port + " error");
			throw new RuntimeException("internet exception,connect " + url + ":" + port + " error");
		} 
	}
	/**
	 * 文件或目录是否存在
	 * @param fileOrDir 文件或目录
	 * @return
	 */
	public boolean isFileOrDirExist (FTPClient ftpClient, String fileOrDir) {
		Assert.hasText(fileOrDir, "directory is null");
		
		if (ftpClient == null || !ftpClient.isConnected()) {
			logger.error("ftpClient is null or connection is dead");
			throw new RuntimeException("ftpClient is null or connection is dead");
		}
		if (isFileExist(ftpClient, fileOrDir) || isDirectoryExist(ftpClient, fileOrDir)) {
			return true;
		}
		return false;
	}
	/**
	 * 查询目录下的文件,若目录或文件不存在，返回null
	 * @param directory 目录
	 * @return
	 * @author sangliping
	 */
	public FTPFile[] listFilesInDirectory(String directory) {
		Assert.hasText(directory, "directory is null");
		logger.info("list directory");
		
		login();
		try {
			FTPFile[] files = client.listFiles(directory);
			logger.info("code:{}"+client.getReplyCode());
			//文件不存在
			if (files == null) {
				logger.error("no such file or direcotry :{}"+directory);
				return null;
			}
			//空目录
			if (files.length == 0) {
				logger.info("directory has no file");
				return null;
			}
			for (int i = 0; i < files.length; i++) {
				logger.info(files[i].toString());
			}
			return files;
		} catch (IOException e) {
			e.printStackTrace();
			logger.error("internet exception");
			throw new RuntimeException("internet exception");
		} finally {
			logout();
		}
	}
	
	/**
	 * <pre>1.文件重命名：oldName和newName在同一目录下，文件名不同
	 *2.文件移动:oldName和newName目录不同,名称相同
	 *3.文件移动同时重命名：oldName和newName目录不同，名称不同
	 * @author sangliping
	 * @param oldName 旧文件名
	 * @param newName 新文件名
	 * @param isRenameExistFile 若newName的文件名已经存在，是否对newName进行重命名，若为true,对newName重命名，newName1~newName10,
	 *若newName1~newName10都已经存在，直接覆盖newName文件
	 * <pre>
	 * 
	 */
	public boolean rename(String oldName, String newName, boolean isRenameExistFile) {
		Assert.hasText(oldName, "oldName");
		Assert.hasText(newName, "newName is null");
		
		login();
		try {
			if (!isFileOrDirExist(client, oldName)) {
				logger.error("{} is not exist"+oldName);
				throw new RuntimeException(oldName + " is not exist");
			}
			if (isFileOrDirExist(client, newName)) {
				if (!isRenameExistFile) {
					logger.error("{} in is exist"+newName);
					throw new RuntimeException(newName + " in " + " is exist");	
				} else {
					//已经存在的文件重命名
					int i = 0;
					while (i < MAX_RENAME_NUM) {
						i++;
						String renameNewName = newName + i;
						if (!isFileOrDirExist(client, renameNewName)) {
							newName = renameNewName;
							break;
						}
					}
				}
			}
			if (client.rename(oldName, newName)) {
				logger.info("{} 重命名为 {}成功"+oldName+newName);
				return true;
			}
			return false;
		} catch (IOException e) {
			e.printStackTrace();
			logger.info("{} 重命名为 {}失败"+oldName+newName);
			return false;
		} finally {
			logout();
		}
	}
	/**
	 * 
	 * @Title: login   
	 * @Description: 登陆  
	 * @param:       
	 * @return: void      
	 * @throws
	 * @author sangliping
	 */
	public void login(){
		try {
			client = new FTPClient();
			FTPClientConfig config=new FTPClientConfig(FTPClientConfig.SYST_UNIX);
			client.configure(config);
			client.connect(this.url, this.port);
			client.setControlEncoding(DEFAULT_CHARSET);
			client.login(this.userName, this.password);
			client.enterLocalPassiveMode();
			//设置为二进制文件类型
			client.setFileType(FTPClient.BINARY_FILE_TYPE);
			if (!FTPReply.isPositiveCompletion(client.getReplyCode())) {
				logger.error("用户名或密码错误,userName:{}"+this.userName);
				client.disconnect();
				throw new RuntimeException("用户名或密码错误,userName:" + this.userName);
			} else {
				logger.info("连接ftp host:{} port:{} 成功"+ this.url+this.port);
			}
		} catch (SocketException e) {
			e.printStackTrace();
			logger.error("无法建立到指定ip地址的连接，请检查服务器状态");
			throw new RuntimeException("无法建立到指定ip地址的连接，请检查服务器状态");
		} catch (IOException e) {
			e.printStackTrace();
			logger.error("ftp的ip地址错误，请正确配置");
			throw new RuntimeException("ftp的ip地址错误，请正确配置");
		}
	}
	
	/**
	 * 
	 * @Title: logout   
	 * @Description: 退出 
	 * @param:       
	 * @return: void      
	 * @throws
	 * @author sangliping
	 */
	private void logout(){
		if (client != null && client.isConnected()) {
			try {
				client.disconnect();
				logger.info("sft connection close success");
			} catch (IOException e) {
				logger.info("sft connection close error");
				e.printStackTrace();
			}
		}
	}
}  

