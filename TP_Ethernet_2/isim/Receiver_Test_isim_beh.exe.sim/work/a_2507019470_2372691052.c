/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/yop/Programmation/VHDL/Ethernet/TP_Ethernet_2/Test_core.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_2507019470_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 6880);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 5008U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5792);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 6880);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 5008U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5792);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2507019470_2372691052_p_1(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(142, ng0);

LAB3:    t1 = (5 * 1000LL);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 6944);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 6944);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 6800);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2507019470_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int64 t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int64 t19;
    int64 t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    int64 t29;
    int64 t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    int64 t37;
    int64 t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    t1 = (t0 + 6480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(147, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 6288);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 5008U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 6288);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(155, ng0);
    t3 = (200 * 1000LL);
    t2 = xsi_get_transient_memory(8U);
    memset(t2, 0, 8U);
    t4 = t2;
    memset(t4, (unsigned char)3, 8U);
    t6 = (t0 + 7008);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t6, 0U, 8U, t3);
    t11 = (t0 + 7008);
    xsi_driver_intertial_reject(t11, t3, t3);
    xsi_set_current_line(156, ng0);
    t3 = (400 * 1000LL);
    t2 = (t0 + 11360);
    t6 = (t0 + 7008);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t6, 0U, 8U, t3);
    t11 = (t0 + 7008);
    xsi_driver_intertial_reject(t11, t3, t3);
    xsi_set_current_line(157, ng0);
    t2 = (t0 + 7072);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t3 = (600 * 1000LL);
    t9 = (t0 + 7072);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t3);
    xsi_set_current_line(158, ng0);
    t2 = (t0 + 11368);
    t6 = (t0 + 7008);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(159, ng0);
    t2 = (t0 + 7072);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(160, ng0);
    t3 = (80 * 1000LL);
    t2 = (t0 + 11376);
    t6 = (t0 + 7008);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t6, 0U, 8U, t3);
    t5 = (80 * 1000LL);
    t14 = (2 * t5);
    t11 = (t0 + 11384);
    t13 = (t0 + 7008);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t11, 8U);
    xsi_driver_subsequent_trans_delta(t13, 0U, 8U, t14);
    t19 = (80 * 1000LL);
    t20 = (3 * t19);
    t21 = (t0 + 11392);
    t23 = (t0 + 7008);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t21, 8U);
    xsi_driver_subsequent_trans_delta(t23, 0U, 8U, t20);
    t28 = (t0 + 7008);
    xsi_driver_intertial_reject(t28, t3, t3);
    xsi_set_current_line(162, ng0);
    t2 = (t0 + 7136);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t3 = (200 * 1000LL);
    t9 = (t0 + 7136);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t3);
    t5 = (210 * 1000LL);
    t15 = (t0 + 7136);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t21 = *((char **)t18);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t15, 0U, 1, t5);
    xsi_set_current_line(163, ng0);
    t3 = (80 * 1000LL);
    t2 = (t0 + 11400);
    t6 = (t0 + 7200);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t6, 0U, 8U, t3);
    t5 = (80 * 1000LL);
    t14 = (2 * t5);
    t11 = (t0 + 11408);
    t13 = (t0 + 7200);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t11, 8U);
    xsi_driver_subsequent_trans_delta(t13, 0U, 8U, t14);
    t19 = (80 * 1000LL);
    t20 = (3 * t19);
    t21 = (t0 + 11416);
    t23 = (t0 + 7200);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t21, 8U);
    xsi_driver_subsequent_trans_delta(t23, 0U, 8U, t20);
    t29 = (80 * 1000LL);
    t30 = (4 * t29);
    t28 = (t0 + 11424);
    t32 = (t0 + 7200);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t28, 8U);
    xsi_driver_subsequent_trans_delta(t32, 0U, 8U, t30);
    t37 = (80 * 1000LL);
    t38 = (5 * t37);
    t39 = (t0 + 11432);
    t41 = (t0 + 7200);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t39, 8U);
    xsi_driver_subsequent_trans_delta(t41, 0U, 8U, t38);
    t46 = (t0 + 7200);
    xsi_driver_intertial_reject(t46, t3, t3);
    xsi_set_current_line(164, ng0);
    t2 = (t0 + 7264);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t3 = (80 * 1000LL);
    t5 = (5 * t3);
    t9 = (t0 + 7264);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t5);
    xsi_set_current_line(165, ng0);
    t2 = (t0 + 7328);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t3 = (80 * 1000LL);
    t5 = (7 * t3);
    t9 = (t0 + 7328);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t5);
    t14 = (80 * 1000LL);
    t19 = (7 * t14);
    t20 = (10 * 1000LL);
    t29 = (t19 + t20);
    t15 = (t0 + 7328);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t21 = *((char **)t18);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t15, 0U, 1, t29);
    xsi_set_current_line(167, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_2507019470_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2507019470_2372691052_p_0,(void *)work_a_2507019470_2372691052_p_1,(void *)work_a_2507019470_2372691052_p_2};
	xsi_register_didat("work_a_2507019470_2372691052", "isim/Receiver_Test_isim_beh.exe.sim/work/a_2507019470_2372691052.didat");
	xsi_register_executes(pe);
}
