package com.slp.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;

import org.apache.commons.compress.archivers.zip.Zip64Mode;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;
import org.apache.commons.compress.archivers.zip.ZipFile;
import org.apache.commons.compress.utils.IOUtils;

/**
 * 
 * @ClassName: ZipUtil
 * @Description:Zip工具栏类，依赖于commons-compress-1.5.jar。
 * @author: liping.sang
 * @date: 2017年10月10日 下午5:36:53
 * 
 * @Copyright: 2017 liping.sang Inc. All rights reserved.
 */
public class ZipUtil {

	public static void main(String[] args) {
		try {
			new ZipUtil().decompressZip(new File("d://img.zip"), "img/pic20140626.jpg", "d://");
			new ZipUtil().decompressZip(new File("d://img.zip"), "flight.log", "d://");
			new File("d://flight.log").delete();
			ZipUtil.compress(new File("D://测试压缩文件"), new File("d://img.zip"));
			ZipUtil.compress(
					new File[] { new File("F:/testZIP/testzip.txt"), new File("d://ftp"), new File("e://ftp") },
					new File("d://压缩文件.zip"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	/**
	 * 
	 * @Title: compress   
	 * @Description:把N多文件或文件夹压缩成zip。
	 * @param: @param files 需要压缩的文件或文件夹。
	 * @param: @param zipFile  压缩后的zip文件
	 * @param: @throws IOException      
	 * @return: void   IOException
	 *             压缩时IO异常。   
	 * @throws
	 */
	public static void compress(File[] files, File zipFile) throws IOException {
		if (CollectionUtil.isEmpty(files)) {
			return;
		}
		ZipArchiveOutputStream out = new ZipArchiveOutputStream(zipFile);
		out.setUseZip64(Zip64Mode.AsNeeded);
		// 将每个文件用ZipArchiveEntry封装
		for (File file : files) {
			if (file == null) {
				continue;
			}
			compressOneFile(file, out, "");
		}
		if (out != null) {
			out.close();
		}
	}

	/**
	 * 
	 * @Title: compress   
	 * @Description: 压缩文件或文件夹。   
	 * @param: @param srcFile  源文件。
	 * @param: @param destFile  压缩后的文件
	 * @param: @throws IOException       压缩时出现了异常。 
	 * @return: void      
	 * @throws
	 */
	public static void compress(File srcFile, File destFile) throws IOException {
		ZipArchiveOutputStream out = null;
		try {
			out = new ZipArchiveOutputStream(new BufferedOutputStream(new FileOutputStream(destFile), 1024));
			compressOneFile(srcFile, out, "");
		} finally {
			out.close();
		}
	}

	
	/**
	 * 
	 * @Title: compressOneFile   
	 * @Description: 压缩单个文件,非文件夹。私有，不对外开放。  
	 * @param: @param srcFile 源文件，不能是文件夹
	 * @param: @param out 压缩文件的输出流。
	 * @param: @param dir 在压缩包中的位置,根目录传入/。
	 * @param: @throws IOException     压缩时出现了异常。  
	 * @return: void      
	 * @throws
	 */
	private static void compressOneFile(File srcFile, ZipArchiveOutputStream out, String dir) throws IOException {
		if (srcFile.isDirectory()) {// 对文件夹进行处理。
			ZipArchiveEntry entry = new ZipArchiveEntry(dir + srcFile.getName() + "/");
			out.putArchiveEntry(entry);
			out.closeArchiveEntry();
			// 循环文件夹中的所有文件进行压缩处理。
			String[] subFiles = srcFile.list();
			for (String subFile : subFiles) {
				compressOneFile(new File(srcFile.getPath() + "/" + subFile), out, (dir + srcFile.getName() + "/"));
			}
		} else { // 普通文件。
			InputStream is = null;
			try {
				is = new BufferedInputStream(new FileInputStream(srcFile));
				// 创建一个压缩包。
				ZipArchiveEntry entry = new ZipArchiveEntry(srcFile, dir + srcFile.getName());
				out.putArchiveEntry(entry);
				IOUtils.copy(is, out);
				out.closeArchiveEntry();
			} finally {
				if (is != null)
					is.close();
			}
		}
	}


	/**
	 * 
	 * @Title: decompressZip   
	 * @Description: 解压缩zip压缩包下的所有文件。
	 * @param: @param zipFile zip压缩文件
	 * @param: @param dir 解压缩到这个路径下
	 * @param: @throws IOException      
	 * @return: void      
	 * @throws
	 */
	public void decompressZip(File zipFile, String dir) throws IOException {
		ZipFile zf = new ZipFile(zipFile);
		try {
			for (Enumeration<ZipArchiveEntry> entries = zf.getEntries(); entries.hasMoreElements();) {
				ZipArchiveEntry ze = entries.nextElement();
				// 不存在则创建目标文件夹。
				File targetFile = new File(dir, ze.getName());
				// 遇到根目录时跳过。
				if (ze.getName().lastIndexOf("/") == (ze.getName().length() - 1)) {
					continue;
				}
				// 如果文件夹不存在，创建文件夹。
				if (!targetFile.getParentFile().exists()) {
					targetFile.getParentFile().mkdirs();
				}

				InputStream i = zf.getInputStream(ze);
				OutputStream o = null;
				try {
					o = new FileOutputStream(targetFile);
					IOUtils.copy(i, o);
				} finally {
					if (i != null) {
						i.close();
					}
					if (o != null) {
						o.close();
					}
				}
			}
		} finally {
			zf.close();
		}
	}

	
	/**
	 * 
	 * @Title: decompressZip   
	 * @Description: TODO(这里用一句话描述这个方法的作用)   
	 * @param: @param zipFile zip压缩文件
	 * @param: @param fileName 某个文件名,例如abc.zip下面的a.jpg，需要传入/abc/a.jpg。
	 * @param: @param dir   解压缩到这个路径下
	 * @param: @throws IOException      文件流异常 
	 * @return: void      
	 * @throws
	 */
	public void decompressZip(File zipFile, String fileName, String dir) throws IOException {
		// 不存在则创建目标文件夹。
		File targetFile = new File(dir, fileName);
		if (!targetFile.getParentFile().exists()) {
			targetFile.getParentFile().mkdirs();
		}

		ZipFile zf = new ZipFile(zipFile);
		Enumeration<ZipArchiveEntry> zips = zf.getEntries();
		ZipArchiveEntry zip = null;
		while (zips.hasMoreElements()) {
			zip = zips.nextElement();
			if (fileName.equals(zip.getName())) {
				OutputStream o = null;
				InputStream i = zf.getInputStream(zip);
				try {
					o = new FileOutputStream(targetFile);
					IOUtils.copy(i, o);
				} finally {
					if (i != null) {
						i.close();
					}
					if (o != null) {
						o.close();
					}
				}
			}
		}
	}

	/**
	 * 
	 * @Title: readZip   
	 * @Description: 得到zip压缩包下的某个文件信息,只能在根目录下查找。  
	 * @param: @param zipFile zip压缩文件
	 * @param: @param fileName 某个文件名,例如abc.zip下面的a.jpg，需要传入/abc/a.jpg。
	 * @param: @return
	 * @param: @throws IOException      
	 * @return: ZipArchiveEntry 压缩文件中的这个文件,没有找到返回null。      
	 * @throws
	 */
	public ZipArchiveEntry readZip(File zipFile, String fileName) throws IOException {
		ZipFile zf = new ZipFile(zipFile);
		Enumeration<ZipArchiveEntry> zips = zf.getEntries();
		ZipArchiveEntry zip = null;
		while (zips.hasMoreElements()) {
			zip = zips.nextElement();
			if (fileName.equals(zip.getName())) {
				return zip;
			}
		}
		return null;
	}

	/**
	 * 
	 * @Title: readZip   
	 * @Description: 得到zip压缩包下的所有文件信息。
	 * @param: @param zipFile zip压缩文件
	 * @param: @return
	 * @param: @throws IOException      
	 * @return: Enumeration<ZipArchiveEntry>       压缩文件中的文件枚举。
	 * @throws
	 */
	public Enumeration<ZipArchiveEntry> readZip(File zipFile) throws IOException {
		ZipFile zf = new ZipFile(zipFile);
		Enumeration<ZipArchiveEntry> zips = zf.getEntries();
		return zips;
	}
}
