package com.slp;
/**
 * �Ƽ�ʹ��Runnable�����߳�
 *    1�����ⵥ�̳еľ�����
 *    2�����ڹ�����Դ
 * 
 * ʹ��Runnable�����ӿ�
 * 1����ʵ��runnable�ӿ�+��дrun()  -->��ʵ��ɫ��
 * 2���������߳� ʹ�þ�̬����
 *   1)������ʵ��ɫ
 *   2)���������ɫ+��ʵ��ɫ����
 *   3)����start�����߳�
 * @author sanglp
 *
 */
public class Programmer implements Runnable{
public void run() {
for (int i = 0; i < 1000; i++) {
	System.out.println("һ����helloworld");
}	
}
}
