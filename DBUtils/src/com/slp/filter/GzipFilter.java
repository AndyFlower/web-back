package com.slp.filter;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.zip.GZIPOutputStream;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.WriteListener;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

public class GzipFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		 MyResponse resp = new MyResponse((HttpServletResponse) response);
	        // ����ǿ���resp���е�servlet��ȥ��(�ú�̨������ д�� baout�� )

	        chain.doFilter(request, resp);// ����--�ú�̨ȥд

	        // ����ǿ���resp��baout��(��ŵ���Դ�ֽ�����)��������ȡ��������ѹ����
	        // Ȼ����ѹ�����������ԭ����response������ͻ���
	        ByteArrayOutputStream baout = resp.getBaout();
	        byte bs[] = baout.toByteArray();// Դ�ֽ�����
	        System.out.println("ѹ��ǰ��С:" + bs.length);

	        ByteArrayOutputStream baout2 = new ByteArrayOutputStream();
	        GZIPOutputStream gout = new GZIPOutputStream(baout2);
	        gout.write(bs);// ������ѹ����baout��
	        gout.close();

	        bs = baout2.toByteArray();
	        System.out.println("ѹ�����С:" + bs.length);
	        // ���֮ǰ���߿ͻ���:���ǵ�������gzip��ʽ��Ȼ�����
	        HttpServletResponse httpResp = (HttpServletResponse) response;
	        httpResp.setHeader("Content-Encoding", "gzip");
	        httpResp.setContentLength(bs.length);
	        OutputStream out = httpResp.getOutputStream();
	        out.write(bs);
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
class MyResponse extends HttpServletResponseWrapper {
    private ByteArrayOutputStream baout = new ByteArrayOutputStream();

    public MyResponse(HttpServletResponse response) {
        super(response);
    }

    @Override
    public ServletOutputStream getOutputStream() throws IOException {
        return new MyOutputStream(baout);
    }

    public ByteArrayOutputStream getBaout() {
        if(pw!=null){
            pw.flush();
            //�������Ҫ�������flush��close�������ַ���ˢ��ȥ��baout���ǲ��������ݵ�.
        }
        return baout;
    }

    private PrintWriter pw;
    @Override
    public PrintWriter getWriter() throws IOException {
        pw = new PrintWriter(new OutputStreamWriter(baout, "utf-8"),true);
        return pw;
    }

}

class MyOutputStream extends ServletOutputStream {
    private ByteArrayOutputStream baout = null;

    public MyOutputStream(ByteArrayOutputStream baout) {
        this.baout = baout;
    }

    @Override
    public void write(int b) throws IOException {
        baout.write(b);
    }

	@Override
	public boolean isReady() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void setWriteListener(WriteListener writeListener) {
		// TODO Auto-generated method stub
		
	}
}
