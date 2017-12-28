package com.slp.weixin;

import java.util.Random;

/**
 * @author sanglp
 * @create 2017-12-27 10:16
 * @desc 微信红包算法
 **/
public class WeixinMoney {
    private int peoples;
    private double allMoney;

    public WeixinMoney(int peoples, double allMoney) {
        this.peoples = peoples;
        this.allMoney = allMoney;
    }

    public static double getMoney(WeixinMoney wmoney){
        if (wmoney.getPeoples()==1) {
            wmoney.setPeoples(0);
            return wmoney.getAllMoney();
        }
        //随机分配算法
        Random r = new Random();
        /**
         * 微信红包最小金额
         */
        double min   = 0.01;
        double max = wmoney.getAllMoney()/wmoney.getPeoples()*2;

        double money = r.nextDouble()*max;
        money = money <= min ? 0.01: money;
        money = Math.floor(money * 100) / 100;

        wmoney.setPeoples(wmoney.getPeoples()-1);
        wmoney.setAllMoney(wmoney.getAllMoney()-money);

        return money;


    }

    public int getPeoples() {
        return peoples;
    }

    public void setPeoples(int peoples) {
        this.peoples = peoples;
    }

    public double getAllMoney() {
        return allMoney;
    }

    public void setAllMoney(double allMoney) {
        this.allMoney = allMoney;
    }

    public static void main(String[] args) {
        int people = 25;
        WeixinMoney w  = new WeixinMoney(people, 2);
        double all  =0d;
        for (int i = 0; i <people; i++) {
            double d = WeixinMoney.getMoney(w);
            System.out.println(d);
            all+=d;
        }
        System.out.println("总共=="+all);
    }
}
