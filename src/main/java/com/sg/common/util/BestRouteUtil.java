package com.sg.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class BestRouteUtil {

	public static int wait[][] = { { 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 9999, 9999, 9999 },
			{ 150, 165, 180, 135, 145, 150, 150, 135, 150, 165, 150, 135, 90, 75 },
			{ 5, 40, 40, 35, 30, 40, 30, 15, 30, 35, 30, 30, 10, 5 },
			{ 10, 40, 90, 90, 80, 75, 75, 75, 60, 60, 75, 60, 50, 10 },
			{ 25, 50, 90, 60, 55, 50, 40, 40, 60, 50, 40, 60, 30, 30 },
			{ 5, 40, 40, 50, 50, 50, 40, 50, 50, 50, 50, 40, 30, 20 },
			{ 5, 15, 40, 50, 40, 35, 30, 50, 40, 60, 45, 30, 10, 9999 },
			{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9999 }, { 5, 20, 30, 30, 25, 20, 30, 10, 10, 30, 40, 20, 20, 10 },
			{ 10, 45, 65, 60, 50, 45, 50, 40, 40, 35, 50, 30, 15, 15 },
			{ 5, 40, 30, 40, 30, 20, 30, 20, 30, 40, 30, 40, 20, 5 },
			{ 90, 180, 150, 150, 150, 150, 150, 150, 180, 150, 150, 120, 60, 60 },
			{ 60, 0, 5, 5, 15, 20, 20, 20, 20, 80, 20, 9999, 9999, 9999 },
			{ 60, 5, 40, 40, 40, 40, 40, 30, 10, 10, 40, 40, 20, 9999 },
			{ 5, 10, 40, 10, 15, 10, 20, 10, 20, 20, 20, 20, 5, 5 },
			{ 15, 60, 60, 60, 50, 40, 40, 40, 60, 50, 50, 50, 30, 30 },
			{ 75, 90, 120, 120, 130, 135, 135, 105, 135, 90, 120, 90, 45, 60 },
			{ 15, 50, 70, 70, 65, 60, 50, 45, 60, 60, 50, 50, 30, 15 },
			{ 15, 40, 75, 75, 60, 50, 60, 45, 50, 60, 50, 45, 20, 10 },
			{ 5, 10, 30, 20, 20, 20, 20, 20, 20, 20, 30, 20, 5, 5 },
			{ 105, 45, 60, 60, 45, 60, 60, 120, 110, 50, 60, 9999, 9999, 9999 },
			{ 135, 60, 15, 5, 25, 15, 20, 60, 5, 9999, 9999, 9999, 9999, 9999 },
			{ 165, 105, 45, 30, 15, 15, 0, 45, 30, 15, 9999, 9999, 9999, 9999 },
			{ 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 310, 150, 90, 30, 9999 },
			{ 130, 70, 10, 20, 40, 10, 20, 30, 30, 0, 0, 9999, 9999, 9999 },
			{ 195, 135, 75, 15, 30, 30, 45, 60, 0, 20, 9999, 9999, 9999, 9999 }

	};

	public static double dis[][] = {
			{ 0, 669, 806, 628, 872, 741, 719, 647, 647, 872, 660, 645, 542, 512, 512, 635, 597, 663, 686, 821, 765,
					555, 872, 958, 400, 777, 763 },
			{ 669, 0, 626, 551, 603, 664, 647.9, 529, 529, 653, 304, 196, 424, 403, 403, 98, 520, 25, 237, 182, 126,
					143, 603, 319, 450, 461, 583 },
			{ 806, 626, 0, 911, 1200, 1000, 969, 158, 158, 1300, 335, 823, 258, 796, 796, 725, 880, 602, 864, 760, 704,
					716, 1200, 897, 541, 164, 42.845 },
			{ 628, 551, 911, 0, 490, 109, 331, 752, 752, 540, 751, 511, 647, 364, 0.364, 443, 87, 566, 465, 693, 637,
					407, 490, 614, 369, 882, 868 },
			{ 872, 603, 1200, 490, 0, 539, 215, 798, 798, 50, 903, 395, 949, 608, 608, 495, 473, 614, 349, 577, 521,
					496, 0, 498, 626, 1100, 1200 },
			{ 741, 664, 1000, 109, 539, 0, 372, 865, 865, 581, 864, 552, 760, 477, 477, 556, 200, 771, 506, 734, 678,
					520, 539, 655, 500, 995, 981 },
			{ 719, 647.9, 969, 331, 215, 372, 0, 798, 798, 265, 649, 139, 693, 455, 455, 239, 314, 358, 93, 321, 265,
					240, 215, 242, 450, 804, 1700 },
			{ 647, 529, 158, 752, 798, 865, 798, 0, 0, 1100, 300, 647, 99, 637, 637, 550, 721, 505, 688, 663, 607, 557,
					798, 800, 439, 129, 115 },
			{ 647, 529, 158, 752, 798, 865, 798, 0, 0, 1100, 647, 99, 637, 637, 550, 721, 505, 688, 663, 607, 557,
					1770.23, 798, 439, 129, 115, 403.37 },
			{ 872, 653, 1300, 540, 50, 581, 265, 1100, 1100, 0, 953, 445, 949, 608, 608, 495, 473, 614, 349, 577, 521,
					496, 34, 498, 626, 1100, 1200 },
			{ 660, 304, 335, 751, 903, 864, 649, 300, 300, 953, 0, 501, 330, 576, 576, 403, 693, 280, 542, 438, 382,
					448, 903, 575, 462, 170, 292 },
			{ 645, 196, 823, 511, 395, 552, 139, 647, 647, 445, 501, 0, 542, 349, 349, 88, 466, 211, 29, 358, 302, 89,
					395, 279, 316, 658, 780 },
			{ 542, 424, 258, 647, 949, 760, 693, 99, 99, 949, 330, 542, 0, 532, 532, 445, 616, 400, 583, 558, 502, 452,
					949, 695, 277, 229, 215 },
			{ 512, 403, 796, 364, 608, 477, 455, 637, 637, 608, 576, 349, 532, 0, 0, 295, 333, 418, 390, 586, 530, 259,
					608, 640, 243, 760, 753 },
			{ 512, 403, 796, 0.364, 608, 477, 455, 637, 637, 608, 576, 349, 532, 0, 0, 295, 333, 418, 390, 586, 530,
					259, 608, 640, 243, 760, 753 },
			{ 635, 98, 725, 443, 495, 556, 239, 550, 550, 495, 403, 88, 445, 295, 295, 0, 412, 113, 129, 281, 225, 35,
					495, 379, 246, 560, 682 },
			{ 597, 520, 880, 87, 473, 200, 314, 721, 721, 473, 693, 466, 616, 333, 333, 412, 0, 535, 448, 676, 620, 376,
					473, 597, 330, 851, 837 },
			{ 663, 25, 602, 566, 614, 771, 358, 505, 505, 614, 280, 211, 400, 418, 418, 113, 535, 0, 252, 149, 93, 158,
					614, 286, 381, 437, 559 },
			{ 686, 237, 864, 465, 349, 506, 93, 688, 688, 349, 542, 29, 583, 390, 390, 129, 448, 252, 0, 312, 256, 130,
					349, 233, 341, 699, 821 },
			{ 821, 182, 760, 693, 577, 734, 321, 663, 663, 577, 438, 358, 558, 586, 586, 281, 676, 149, 312, 0, 47, 326,
					577, 249, 504, 595, 717 },
			{ 765, 126, 704, 637, 521, 678, 265, 607, 607, 521, 382, 302, 502, 530, 530, 225, 620, 93, 256, 47, 0, 270,
					521, 193, 448, 539, 661 },
			{ 555, 143, 716, 407, 496, 520, 240, 557, 557, 496, 448, 89, 452, 259, 259, 35, 376, 158, 130, 326, 270, 0,
					496, 380, 232, 605, 673 },
			{ 872, 603, 1200, 490, 1200, 539, 215, 798, 798, 34, 903, 395, 949, 608, 608, 495, 473, 614, 349, 577, 521,
					496, 1200, 498, 626, 1100, 1200 },
			{ 958, 319, 897, 614, 498, 655, 242, 800, 800, 498, 575, 279, 695, 640, 640, 379, 597, 286, 233, 249, 193,
					380, 498, 0, 603, 732, 854 },
			{ 400, 450, 541, 369, 626, 500, 450, 439, 439, 626, 462, 316, 277, 243, 243, 246, 330, 381, 341, 504, 448,
					232, 626, 603, 0, 531, 517 },
			{ 777, 461, 164, 882, 1100, 995, 804, 129, 129, 1100, 170, 658, 229, 760, 760, 560, 851, 437, 699, 595, 539,
					605, 1100, 732, 531, 0, 121 },
			{ 763, 583, 42.845, 868, 1200, 981, 1700, 115, 115, 1200, 292, 780, 215, 753, 753, 682, 837, 559, 821, 717,
					661, 673, 1200, 854, 517, 121, 0 },

	};

	public static int playtime[] = { 15, 5, 5, 5, 5, 10, 15, 10, 5, 10, 10, 10, 5, 5, 10, 5, 5, 5, 5, 5, 10, 10, 18, 20,
			30, 30 };

	public static String name[] = { "爱丽丝梦游仙境迷宫", "翱翔-飞越地平线", "巴斯光年星际营救", "米奇俱乐部", "创极速光轮-雪佛兰呈献", "弹簧狗团团转", "古迹探索营",
			"欢笑聚友会", "胡迪牛仔嘉年华", "加勒比海盗-沉落宝藏之战", "晶彩奇航", "雷鸣山漂流", "漫威英雄总部", "幻想曲旋转木马", "漫游童话时光", "喷气背包飞行器", "七个小矮人矿山车",
			"小飞侠天空奇遇", "小熊维尼历险记", "旋转疯蜜罐", "迎宾阁", "小飞象", "太空幸会史迪奇", "船奇戏水滩", "探秘海妖复仇号", "探险家独木舟" };

	public static int[] getArray(Object[][] o) {
		int array[] = new int[26];
		for (int i = 0; i < 26; i++)
			array[i] = 0;
		for (Object object[] : o) {
			for (int i = 0; i < 26; i++) {
				if (object[0].equals(name[i])) {
					array[i] = 1;
					break;
				}
			}
		}
		return array;
	}

	public static Object[][] get(String[] hobbyNameList, String[] typeLikes, int leisureTime, Set<String> weight) {
		int starttime;// 开始时间
		int leisuretime;// 休闲时间
		Object[][] result = new Object[26][2];

		int pre[] = { 2, 2, 1, 1, 3, 2, 2, 1, 2, 3, 2, 3, 2, 2, 2, 2, 3, 2, 2, 2, 1, 2, 2, 2, 1, 2 };

		// 外部传入希望游玩的类别（互动、欢乐、刺激）
		int hudong, huanle, ciji, xihuan1 = 0, xihuan2 = 0, xihuan3 = 0;
		// 若喜欢互动则为2
		for (String type : typeLikes) {
			if (type.equals("互动"))
				xihuan1 = 1;
			else if (type.equals("欢乐"))
				xihuan2 = 2;
			else if (type.equals("刺激"))
				xihuan3 = 3;
		}

		int xiang;

		for (xiang = 0; xiang < 26; xiang++) {
			if (pre[xiang] == xihuan1 || pre[xiang] == xihuan2 || pre[xiang] == xihuan3) {
				pre[xiang] = 2;
			} else
				pre[xiang] = 1;
		}

		// 传入想玩哪个项目，最好给一个26个的0-1数组，想玩为1，不想玩为0
		int xiangmu[] = new int[26];// 数组
		for (String hobbyName : hobbyNameList) {
			for (xiang = 0; xiang < 26; xiang++) {
				if (hobbyName.equals(name[xiang])) {
					xiangmu[xiang] = 1;
					break;
				}
			}
		}

		for (xiang = 0; xiang < 26; xiang++) {
			if (xiangmu[xiang] == 1)
				pre[xiang] = pre[xiang] * 200 + 300;
			else
				pre[xiang] = pre[xiang] * 200;
		}

		if (weight != null) {
			for (int i = 0; i < name.length; i++) {
				for (String wei : weight) {
					if (wei.equals(name[i]))
						pre[i] = -10000;
				}
			}
		}

		int i = 0, j, k;

		pre[23] = 10000;
		for (k = 0; k < 26; k++) {
			System.out.println(name[k] + "           " + pre[k]);
		}
		SimpleDateFormat df = new SimpleDateFormat("HH:mm");
		String[] timeString = df.format(new Date()).split(":");

		starttime = Integer.parseInt(timeString[0]) * 60 - 540 + Integer.parseInt(timeString[1]);
		leisuretime = leisureTime;
		starttime = 90;
		int currenttime = starttime;
		int sequence[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
		int curwait, curwalk, totime, t, best = 0, bestj = 0, number = 0, bestwalk, bestwait, P;
		int q = 0;
		double F, bestF = 0;
		for (; currenttime <= 720;) {

			for (j = 1, bestF = 0; j <= 26; j++) {

				if (j == sequence[0] || j == sequence[1] || j == sequence[2] || j == sequence[3] || j == sequence[4]
						|| j == sequence[5] || j == sequence[6] || j == sequence[7] || j == sequence[8]
						|| j == sequence[9] || j == sequence[10] || j == sequence[11] || j == sequence[12]
						|| j == sequence[13] || j == sequence[14] || j == sequence[15] || j == sequence[16]
						|| j == sequence[17] || j == sequence[18] || j == sequence[19] || j == sequence[20]
						|| j == sequence[21] || j == sequence[22] || j == sequence[23] || j == sequence[24]
						|| j == sequence[25])// 下次的项目不能与之前相同
					continue;

				curwalk = (int) (dis[i][j] / 30);

				t = (curwalk + currenttime) / 60;
				curwait = wait[j - 1][t];
				totime = curwalk + curwait + playtime[j - 1] + leisuretime;// 总时间=行走时间+等待时间+游玩设备时间
				P = pre[j - 1];
				F = P / totime;// 越大越好

				if (F > bestF) {
					best = totime;
					bestwalk = curwalk;
					bestwait = curwait;
					bestF = F;

					bestj = j;
				}
			}

			currenttime += best;
			number += 1;
			sequence[number] = bestj;
			result[q][0] = name[bestj - 1];
			result[q][1] = currenttime;
			q++;
			System.out.println("             " + name[bestj - 1]);
			System.out.println("              当前时间" + currenttime);

			i = bestj;

		}
		i = 0;
		for (Object[] o : result) {
			if (o[0] != null) {
				i++;
			}
		}
		Object[][] o = new Object[i][2];
		for (j = 0; j < i; j++) {
			o[j][0] = result[j][0];
			o[j][1] = result[j][1];
		}
		return o;
	}

	public static Map<String, String> getPinMap() {
		Map<String, String> pinyin = new HashMap<String, String>();
		String[] pin = {"alsmyxjmg","ax","bsgnxjyj","mqjlb","cjsgl","thgttz","gjtsy",
				"hxjyh","hdnzjnh","jlbhd","jcqh","lmspl","mwyxzb","hxqxzmm","mythsg","pqbbfxq","qgxarksc",
				"xfxtkqy","xxwnlxj","xzfmg","ybg","xfx","tkxhsdq","cqxsw","tmhyfch","txjdmz"};
		
		for (int i=0;i<26;i++) {
			pinyin.put(name[i], pin[i]);
		}
		return pinyin;
	}

}
