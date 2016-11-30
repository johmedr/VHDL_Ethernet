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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/medrano/Bureau/4AE/VHDL/TP_Ethernet_2/Test_core.vhd";
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
    int64 t28;
    int64 t29;
    char *t30;
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
    int64 t46;
    int64 t47;
    char *t48;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    int64 t55;
    int64 t56;
    char *t57;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    int64 t64;
    int64 t65;
    char *t66;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    int64 t73;
    int64 t74;
    char *t75;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;

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

LAB8:    xsi_set_current_line(154, ng0);
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
    xsi_set_current_line(155, ng0);
    t3 = (400 * 1000LL);
    t2 = (t0 + 10896);
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
    xsi_set_current_line(157, ng0);
    t2 = (t0 + 10904);
    t6 = (t0 + 7008);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(158, ng0);
    t2 = (t0 + 7072);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(159, ng0);
    t3 = (80 * 1000LL);
    t2 = (t0 + 10912);
    t6 = (t0 + 7008);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t6, 0U, 8U, t3);
    t5 = (80 * 1000LL);
    t14 = (2 * t5);
    t11 = (t0 + 10920);
    t13 = (t0 + 7008);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t11, 8U);
    xsi_driver_subsequent_trans_delta(t13, 0U, 8U, t14);
    t19 = (80 * 1000LL);
    t20 = (3 * t19);
    t21 = (t0 + 10928);
    t23 = (t0 + 7008);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t21, 8U);
    xsi_driver_subsequent_trans_delta(t23, 0U, 8U, t20);
    t28 = (80 * 1000LL);
    t29 = (4 * t28);
    t30 = (t0 + 10936);
    t32 = (t0 + 7008);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t30, 8U);
    xsi_driver_subsequent_trans_delta(t32, 0U, 8U, t29);
    t37 = (80 * 1000LL);
    t38 = (5 * t37);
    t39 = (t0 + 10944);
    t41 = (t0 + 7008);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t39, 8U);
    xsi_driver_subsequent_trans_delta(t41, 0U, 8U, t38);
    t46 = (80 * 1000LL);
    t47 = (6 * t46);
    t48 = (t0 + 10952);
    t50 = (t0 + 7008);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t48, 8U);
    xsi_driver_subsequent_trans_delta(t50, 0U, 8U, t47);
    t55 = (80 * 1000LL);
    t56 = (10 * t55);
    t57 = (t0 + 10960);
    t59 = (t0 + 7008);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    memcpy(t63, t57, 8U);
    xsi_driver_subsequent_trans_delta(t59, 0U, 8U, t56);
    t64 = (80 * 1000LL);
    t65 = (11 * t64);
    t66 = (t0 + 10968);
    t68 = (t0 + 7008);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    memcpy(t72, t66, 8U);
    xsi_driver_subsequent_trans_delta(t68, 0U, 8U, t65);
    t73 = (80 * 1000LL);
    t74 = (12 * t73);
    t75 = (t0 + 10976);
    t77 = (t0 + 7008);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    t80 = (t79 + 56U);
    t81 = *((char **)t80);
    memcpy(t81, t75, 8U);
    xsi_driver_subsequent_trans_delta(t77, 0U, 8U, t74);
    t82 = (t0 + 7008);
    xsi_driver_intertial_reject(t82, t3, t3);
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
	xsi_register_didat("work_a_2507019470_2372691052", "isim/Receiver_Test_isim_par.exe.sim/work/a_2507019470_2372691052.didat");
	xsi_register_executes(pe);
}
