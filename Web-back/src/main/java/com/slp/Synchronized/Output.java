package com.slp.Synchronized;

/**
 * @author sanglp
 * @create 2017-12-25 16:01
 * @desc synchronized的样例
 **/
public class Output {
    /**
     * AnLidndaLyindAaLindaLninddaLiyndaLindAandyAndyAndyAndyAndy
     * @param name
     */
    public void output1(String name){
        for(int i=0;i<name.length();i++){
            System.out.print(name.charAt(i));
            try {
                Thread.sleep(10);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 使用synchronized将需要互斥的代码包含起来
     * AndyAndyAndyAndyAndyAndyAndyLindaLindaLindaLindaLindaLinda
     * @param name
     */
    public void output2(String name) {
        synchronized (this) {
            for (int i = 0; i < name.length(); i++) {
                System.out.print(name.charAt(i));
                try {
                    Thread.sleep(10);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /**将synchronized加在需要互斥的方法上
     * AndyAndyAndyAndyAndyAndyAndyLindaLindaLindaLindaLindaLinda
     * @param name
     */
    public synchronized  void output(String name) {
            for (int i = 0; i < name.length(); i++) {
                System.out.print(name.charAt(i));
                try {
                    Thread.sleep(10);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
    }
}
