package com.slp;

/**
 * ģ���������
 * 1���������߳� �̳�Thread +��дrun(�߳���)
 * 2��ʹ���ֳ�������������󣬶���.start()����
 * @author sanglp
 *
 */
public class Rabbit  extends Thread{

	public void run() {
    for(int i=0;i<100;i++){
    	System.out.println("��������"+i+"��");
    }
	}

}
