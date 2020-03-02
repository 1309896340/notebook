# 线性代数初步

[线性代数笔记PDF文档版](http://47.103.216.202/download/线代笔记pdf文档/)

## 一、矩阵

### 矩阵概述
* 矩阵是一个**二维数表**，由若干数字构成，外边用一对圆括号括起来。

* 在线性代数中，矩阵是基本的运算对象，和普通代数学中的数字没有本质区别。

  ​	作为一门代数，矩阵也包含：
  
  ​			**零元**——零矩阵
  
  ​			**单位元**——单位矩阵
  
  ​			**加法逆元**——负矩阵
  
  ​			**乘法逆元**——逆矩阵
  
* 矩阵既可以表示一组变量，也可以描述变换本身，例如：
$$
  \begin{pmatrix}
  x'\\y'
  \end{pmatrix}=
  \begin{pmatrix}
  \cos\theta&-\sin\theta\\
  \sin\theta&\cos\theta
  \end{pmatrix}
  \begin{pmatrix}
  x\\y
  \end{pmatrix}
$$
  便是旋转坐标变换的矩阵表达式，在这里，相乘的两个矩阵就分别对应着**变换**和**坐标**两个意义。  

### 矩阵的定义
由$m\times n$个数$a_{ij} (i=1，2，\cdots，m，j=1，2，\cdots，n)$排成的m行n列的数表
$$
\mathbf{A}_{m\times n}=(a_{ij})_{m \times n} =\begin{pmatrix}
							a_{11}&a_{12}&\cdots&a_{1n}\\
							a_{21}&a_{22}&\cdots&a_{2n}\\
							\cdots&\cdots&\ddots&\cdots\\
							a_{m1}&a_{m2}&\cdots&a_{mn}
						\end{pmatrix}
$$
称为$m \times n$**矩阵**。

其中$a_{ij}$表示矩阵$\mathbf{A}$第i行第j列的元素。

### 特殊的矩阵
* 零矩阵
* 方阵
* 行向量、列向量
* 单位矩阵
* 数量矩阵
* 对角矩阵
* 对称矩阵
* 上三角与下三角矩阵
* 有理矩阵、实矩阵、复矩阵
* 增广矩阵
* 奇异矩阵(不可逆方阵)

### 矩阵的线性运算

#### 加法定义
$\mathbf A=(a_{ij})_{m\times n}$，$\mathbf B=(a_{ij})_{m\times n}$，是两个**同型矩阵**，定义矩阵$\mathbf{C}_{m\times n}=(c_{ij})_{m\times n}$的各元素满足$c_{ij}=a_{ij}+b_{ij}$，称矩阵$\mathbf{C}$为矩阵$\mathbf{A}$和$\mathbf{B}$的和。

#### 加法性质
设$\mathbf{A},\mathbf{B},\mathbf{C},\mathbf{O}$为**同型矩阵**，则:
1. $\mathbf{A}+\mathbf{B}=\mathbf{B}+\mathbf{A}$							  (交换律)
2. $(\mathbf{A}+\mathbf{B})+\mathbf{C}=\mathbf{A}+(\mathbf{B}+\mathbf{C})$		(结合律)
3. $\mathbf{A}+\mathbf{O}=\mathbf{A}$
4. $\mathbf{A}+(-\mathbf{A})=\mathbf{O}$
5. 若$\mathbf{A}+\mathbf{B}=\mathbf{A}+\mathbf{C}$，则$\mathbf{B}=\mathbf{C}$

#### 数乘定义
设矩阵$\mathbf{A}=(a_{ij})_{m\times n}$，$k$是一个数，定义矩阵$(ka_{ij})_{m\times n}$为数$k$与矩阵$\mathbf{A}$的**数量乘积**，简称**数乘**，记作$k\mathbf{A}$。

#### 数乘性质

设$\mathbf{A},\mathbf{B},\mathbf{O}$为**同型矩阵**，k，s是任意数，则:

1. $(k+s)\mathbf{A}=k\mathbf{A}+s\mathbf{A}$
2. $k(\mathbf{A}+\mathbf{B})=k\mathbf{A}+k\mathbf{B}$
3. $k(s\mathbf{A})=(ks)\mathbf{A}$
4. $1\mathbf{A}=\mathbf{A}$
5. $0\mathbf{A}=\mathbf{O}$，这里前一个0是数字零，后一个是矩阵$\mathbf{O}$

矩阵的加法和数乘运算统称为矩阵的**线性运算**，其性质与数的加法、乘法类似。



### 矩阵乘法★★★

#### 乘法定义
设矩阵$A_{m\times s}=(a_{ij})_{m\times s}$，矩阵$B_{s\times n}=(b_{ij})_{s\times n}$，定义$\mathbf{A}$与$\mathbf{B}$的乘积为$\mathbf{A}\mathbf{B}=(c_{ij})_{m\times n}$

其中 $c_{ij}=\sum\limits_{k=1}^{s} a_{ik}b_{kj} = a_{i1}b_{1j}+a_{i2}b_{2j}+\cdots+a_{is}b_{sj}$

即$c_{ij}$为矩阵$\mathbf{A}$的第i行向量与矩阵$\mathbf{B}$的第j列向量的数量积

#### 乘法性质

1. $(\mathbf{A}\mathbf{B})\mathbf{C}=\mathbf{A}(\mathbf{B}\mathbf{C})$											(结合律)

2. $\mathbf{A}(\mathbf{B}+\mathbf{C})=\mathbf{A}\mathbf{B}+\mathbf{A}\mathbf{C}	$		 	 					(分配律)

3. $k(\mathbf{A}\mathbf{B})=(k\mathbf{A})\mathbf{B}=\mathbf{A}(k\mathbf{B})$，k是数

4. $(k\mathbf{E}_m)\mathbf{A}_{m\times n}=\mathbf{A}_{m\times n}(k\mathbf{E}_n)=k\mathbf{A}_{m\times n}$			($k \mathbf{E}$即数量矩阵)

#### 乘法注意事项

矩阵乘法不符合**交换律**，这是与普通代数最大的区别

对于一般的矩阵，以下两个说法不一定成立  (除非$\mathbf{A}$是**可逆矩阵**)

1. 由$\mathbf{A}\mathbf{B}=\mathbf{O}$ 得到 $\mathbf{B}=\mathbf{O}$
2. 由$\mathbf{A}\mathbf{B}=\mathbf{A}\mathbf{C}$ 得到 $\mathbf{B}=\mathbf{C}$



### 矩阵的转置

#### 转置的定义

将矩阵$A_{m\times n}$的第1行，第2行，……，第m行依次改成第1列，第2列，……，第m列后得到的$n\times m$矩阵称为$\mathbf{A}$的**转置矩阵**，记作$\mathbf{A}^T$。

#### 转置的性质

1. $(\mathbf{A}^T)^T=\mathbf{A}$

2.  $(\mathbf{A}+\mathbf{B})^T=\mathbf{A}^T+\mathbf{B}^T$

3.  $(k\mathbf{A})^T=k\mathbf{A}^T$

4. $(\mathbf{A}\mathbf{C})^T=\mathbf{C}^T\mathbf{A}^T$ 

### 分块矩阵

（待补充。。。）

### 矩阵的初等变换★★★

初等变换基本分成三类情况：

1. 互换矩阵的第i行(列)和第j行(列)，记作$r_i\leftrightarrow r_j$($c_i\leftrightarrow c_j$)

2. 用一个非零数$k$去乘矩阵的第i行(列)，记作$kr_i$($kc_i$)

3. 将矩阵的第j行(列)的$k$倍加到第i行(列)上，记作$r_i+kr_j$($c_i+kc_j$)

重要性质：**可逆性**

#### 等价矩阵

1. 矩阵$\mathbf{A}$经过一系列初等行(列)变换得到矩阵$\mathbf{B}$，称$\mathbf{A}$与$\mathbf{B}$为**行(列)等价矩阵**。
2. 矩阵$\mathbf{A}$经过一系列初等变换得到矩阵$\mathbf{B}$，称$\mathbf{A}$与$\mathbf{B}$为**等价矩阵**。

#### 等价矩阵的性质

1. $\mathbf{A}\cong\mathbf{A}$ 												 (反身性)

2. 若$\mathbf{A}\cong\mathbf{B}$，则$\mathbf{B}\cong\mathbf{A}$						 (对称性)

3. 若$\mathbf{A}\cong\mathbf{B}$，$\mathbf{B}\cong\mathbf{C}$，则$\mathbf{A}\cong\mathbf{C}$		(传递性)

#### 初等矩阵的定义

由<u>单位矩阵</u>经过<u>一次初等变换</u>得到的矩阵，叫作**初等矩阵**。

重要性质：**可逆性**



### 可逆矩阵★★★

#### 逆矩阵的定义

若对于矩阵$\mathbf{A}$，存在矩阵$\mathbf{B}$，使得$\mathbf{A}\mathbf{B}=\mathbf{B}\mathbf{A}=\mathbf{E}$成立，则称矩阵$\mathbf{B}$为矩阵$\mathbf{A}$的**逆矩阵**，记作$\mathbf{A^{-1}}$。

#### 逆矩阵的性质

设$\mathbf{A}$是一个可逆矩阵

1. $\mathbf{A}$的逆矩阵唯一，记作$\mathbf{A}^{-1}$
2. 若$\mathbf{A}\mathbf{B}=\mathbf{A}\mathbf{C}$，则$\mathbf{B}=\mathbf{C}$。特别的，若$\mathbf{A}\mathbf{B}=\mathbf{O}$，则$\mathbf{B}=\mathbf{O}$
3. $\mathbf{A}^{-1}$可逆，且$(\mathbf{A}^{-1})^{-1}$
4. $\mathbf{A}^T$可逆，且$(\mathbf{A}^T)^{-1}=(\mathbf{A}^{-1})^T$
5. 若k是非零数，则$k\mathbf{A}$可逆，且$(k\mathbf{A})^{-1}=\frac1k\mathbf{A}^{-1}$
6. 若$\mathbf{B}$是和$\mathbf{A}$同阶的可逆矩阵，则$\mathbf{A}\mathbf{B}$也可逆，且$(\mathbf{A}\mathbf{B})^{-1}=\mathbf{B}^{-1}\mathbf{A}^{-1}$

## 二、行列式

### 行列式概述

行列式是由矩阵内所有元素经过某种运算而得到的一个数。

### 行列式的定义（不建议深究）

行列式的定义有很多，我们书上是通过**代数余子式**来定义的，在同济教材中的行列式是通过**逆序数**来定义的，在这里主要介绍三种定义。

> 四阶及四阶以上行列式不建议使用定义计算。
>
> ​																				————尼斯湖水怪

#### 定义1 （代数余子式定义）

设$\mathrm A$是一个$n$阶行列式，$\mathrm A$的**行列式**是由$\mathrm A$(或由构成$\mathrm A$的$n$个数)决定的一个**数**，记为$|\mathrm A|$或$\mathrm {det(A)}$。

1. 将n阶行列式$|\mathrm A|$中元素$a_{ij}$所在的第i行与第j列删去，剩下的元素按照原来相对位置构成的n-1阶行列式称为$\mathrm A$的$(i,j)$-元$(a_{ij})$的**余子式**，记作$\mathrm M_{ij}$，称$(-1)^{i+j}M_{ij}$为元素$a_{ij}$的**代数余子式**，记作$A_{ij}$。

2. 当 $n=1$时，定义1阶行列式 $|\mathrm A|=|a_{11}|=a_{11}$，

   当 $n>1$时，定义$n$阶行列式：
   $$
   |\mathrm A| =\begin{vmatrix}
   a_{11}&a_{12}&\cdots&a_{1n}\\
   a_{21}&a_{22}&\cdots&a_{2n}\\
   \vdots&\vdots&\ddots&\vdots\\
   a_{n1}&a_{n2}&\cdots&a_{nn}\\
   \end{vmatrix}
   =a_{11}\mathrm A_{11}+a_{21}\mathrm A_{21}+\cdots+a_{n1}\mathrm A_{n1}
   $$

#### 定义2 （逆序数定义）

1. 对于n个不同的元素，先规定各元素之间有一个**标准次序**（一般选数字从小到大排列为标准次序），于是在这n个元素的任一排列中，当某一对元素的先后次序不同时，就说它构成1个**逆序**。一个排列中所有逆序的总和叫做这个**排列的逆序数**。

> 例如以12345为一个标准次序，32514中
>
> 对于"3"是排头，前面没有数，记为0个逆序
>
> 对于"2"的前面，有比它大的数"3"，记为1个逆序
>
> 对于"5"的前面，没有比它大的数，记为0个逆序
>
> 对于"1"的前面，有比它大的数"3,2,5"，记为3个逆序
>
> 对于"4"的前面，有比它大的数"5"，记为1个逆序
>
> 加起来一共5个逆序

2. 一个n阶行列式可以表示为
   $$
   \begin{vmatrix}
   a_{11}&a_{12}&\cdots&a_{1n}\\
   a_{21}&a_{22}&\cdots&a_{2n}\\
   \vdots&\vdots&\ddots&\vdots\\
   a_{n1}&a_{n2}&\cdots&a_{nn}\\
   \end{vmatrix}
   =
   \sum (-1)^t a_{1 p_1}a_{2 p_2}a_{3 p_3}\cdots a_{n p_n}
   $$
   其中{$p_1,p_2,p_3,\cdots,p_n$}为{$1,2,3,\cdots,n$}的一种排列，$t$为该排列对于**标准次序** $12345\cdots n$的**逆序数**。



#### 定义3 （维基百科定义）

一个n阶方块矩阵$\mathrm A$的行列式可~~直观~~地定义如下：
$$
det(\mathrm A) = \sum_{\sigma\in S_n}sgn(\sigma)\prod_{i=1}^n a_{i,\sigma(i)}
$$
其中，$S_n$是集合$\{1,2,\cdots,n\}$上[置换](https://zh.wikipedia.org/wiki/%E7%BD%AE%E6%8D%A2)的全体，即集合$\{1,2,\cdots,n\}$到自身上的一一映射(双射)的全体。

$\sum\limits_{\sigma \in S_n}$表示对$S_n$全部元素的求和，即对于每个$\sigma \in S_n$，$sgn(\sigma)\prod\limits_{i=1}^na_{i,\sigma(i)}$在加法算式中出现一次。

对每一个满足$1\le i,j\le n$的数对$(i,j)$，$a_{i,j}$是矩阵$\mathrm A$的第$i$行第$j$列的元素。

$sgn(\sigma)$表示置换$\sigma \in S_n$的[符号差](https://zh.wikipedia.org/wiki/%E7%BD%AE%E6%8D%A2%E7%9A%84%E5%A5%87%E5%81%B6%E6%80%A7)，具体地说，满足$1\le i,j\le n$但$\sigma(i)>\sigma(j)$的有序数对$(i,j)$称为i的一个逆序。

![直观](http://47.103.216.202/wp-content/uploads/2019/10/image-1569892105002.png)

### 行列式意义的多角度描述（仅供理解，不予证明）

* 行列式是一个函数，它将一个方阵映射为数，是一个以**方阵**为自变量，**数**为因变量的函数。
* 行列式在3维空间有“体积、面积”的概念。

两个平面向量构成的行列式就是它们做出**平行四边形**的面积

三个空间向量构成的行列式就是它们做出**平行六面体**的体积

例如下图平面向量 $\vec{v_1}=(3,1)\quad\vec{v_2}=(1,3)$，其行列式
$$
\begin{vmatrix}
3&1\\1&3
\end{vmatrix}=8
$$
可以通过解三角形的方法得到**平行四边形**的面积也为8

对于**平行六面体**的体积也有同样的规律

其中空间向量 $\vec{v_1}=(1,1,2)\quad\vec{v_2}=(3,1,1)\quad\vec{v_3}=(1,4,1)\quad$

则该**平行六面体**的体积为
$$
\begin{vmatrix}
1&1&2\\
3&1&1\\
1&4&1
\end{vmatrix}=17
$$


![](http://47.103.216.202/wp-content/uploads/2019/10/Determinant-e1571840161657.png)

### 低阶行列式的一般计算方法（2阶、3阶）★★★

一般低阶行列式的计算公式通过对称性来记忆

对于二阶行列式有
$$
\begin{vmatrix}
a_{11}&a_{12}\\
a_{21}&a_{22}
\end{vmatrix}
=a_{11}a_{22}-a_{12}a_{21}
$$

> 记忆这个公式，首先区分每一项的正负号，**主对角线**元素乘积前的系数是正的，**副对角线**元素乘积前的系数是负的。
>
> ​																				————尼斯湖水怪

对于三阶行列式有
$$
\begin{vmatrix}
a_{11}&a_{12}&a_{13}\\
a_{21}&a_{22}&a_{23}\\
a_{31}&a_{32}&a_{33}
\end{vmatrix}
=a_{11}a_{22}a_{33}+a_{12}a_{23}a_{31}+a_{13}a_{21}a_{32}-a_{13}a_{22}a_{31}-a_{12}a_{21}a_{33}-a_{11}a_{23}a_{32}
$$

> 可以注意到该行列式一共有6项，其中3项系数是正的，另外3项系数是负的，可以按照下图来记忆
>
> ![](http://47.103.216.202/wp-content/uploads/2019/10/threeDimension-e1571886969647.png)
>
> 一共有3根红色线与3根蓝线，每一根红线扫过的元素乘积就是一个**正项**，每一根蓝线扫过的元素乘积就是一个**负项**。可以沿用二阶行列式中的记法，即**主对角线**元素乘积是正的，**副对角线**元素乘积是负的。
>
> ​																				————尼斯湖水怪

> **注意事项**
>
> 对于四阶及四阶以上行列式，元素间不再具有**对角线**相乘的规律。
>
> 实际上对于n阶行列式，展开后会是$n!$个项的和，每一项是$n$个元素的积，其中有$\frac{n!}2$个项前系数为正，另外$\frac{n!}2$个项前系数为负。
>
> ​																				————尼斯湖水怪

### 行列式的性质★★★

#### 行列式为零的情况

1. 存在一行或一列元素全为零
2. 存在两行或两列元素完全相同
3. 存在两行或两列元素成比例
4. 存在一行(列)元素可以由其他行(列)经过**线性组合**得到

#### 初等变换性质

1. 若 $\mathrm A \stackrel{r_i\leftrightarrow r_j}{\longrightarrow}\mathrm B$，则 $|\mathrm B|=-|\mathrm A|$
2. 若 $\mathrm A \stackrel{k r_i}{\longrightarrow}\mathrm B$，则 $|\mathrm B|=k|\mathrm A|$
3. 若 $\mathrm A \stackrel{r_i+kr_j}{\longrightarrow}\mathrm B$，则$|\mathrm B|=|\mathrm A|$

性质2的推论：若矩阵$\mathrm A$为n阶方阵，则 $|k\mathrm A|=k^n|\mathrm A|$

★★★ 以上性质对**列变换**同样成立

#### 其他性质

4. $|\mathrm A^T|=|\mathrm A|$

5. 若$\mathrm A$与$\mathrm B$是同阶方阵，则 $|\mathrm A \mathrm B|=|\mathrm A||\mathrm B|$

6. 设$\mathrm A$是m阶方阵，$\mathrm B$是n阶方阵，则 $\begin{vmatrix}\mathrm A&\mathrm C\\\mathrm O&\mathrm B\end{vmatrix}=|\mathrm A||\mathrm B|$

7. 若$\gamma_i$表示方阵$\mathrm A$的第i行元素构成的**行向量**，则下式成立：
   $$
   det(\mathrm A)=
   det\left(\begin{array}{c}
   \gamma_1\\
   \vdots\\
   \gamma_k\\
   \vdots\\
   \gamma_n
   \end{array}\right)
   =
   det\left(\begin{array}{c}
   \gamma_1\\
   \vdots\\
   \gamma_{k_1}+\gamma_{k_2}\\
   \vdots\\
   \gamma_n
   \end{array}\right)
   =
   det\left(\begin{array}{c}
   \gamma_1\\
   \vdots\\
   \gamma_{k_1}\\
   \vdots\\
   \gamma_n
   \end{array}\right)
   +
   det\left(\begin{array}{c}
   \gamma_1\\
   \vdots\\
   \gamma_{k_2}\\
   \vdots\\
   \gamma_n
   \end{array}\right)
   $$

8. 对于n阶方阵$\mathrm A$，有
   $$
   \sum_{k=1}^na_{ik}A_{jk}=\left\{
   \begin{align}
   &|\mathrm A|&,i=j\\
   &0&,i\neq j
   \end{align}
   \right.
   $$

   > 其中 $\sum\limits_{k=1}^na_{ik}A_{jk}$可以理解为方阵$\mathrm A$的第i行构成的**行向量**和第j行的**代数余子式**构成的**行向量**的**内积**，即
   > $$
   > \mathrm A=\begin{pmatrix}
   > a_{11}&a_{12}&\cdots&a_{1n}\\
   > a_{21}&a_{22}&\cdots&a_{2n}\\
   > \vdots&\vdots&\ddots&\vdots\\
   > a_{i1}&a_{i2}&\cdots&a_{in}\\
   > \vdots&\vdots&\ddots&\vdots\\
   > a_{j1}&a_{j2}&\cdots&a_{jn}\\
   > \vdots&\vdots&\ddots&\vdots\\
   > a_{n1}&a_{n2}&\cdots&a_{nn}\\
   > \end{pmatrix}
   > $$
   >
   > $$
   > \sum_{k=1}^na_{ik}A_{jk}=(a_{i1},a_{i2},\cdots,a_{in})\cdot(A_{j1},A_{j2},\cdots,A_{jn})
   > $$
   >
   > ​	由于在行列式中，行与列的地位相当，这个公式也可以按列的方向来写，这个时候
   > $$
   > \mathrm A=\begin{pmatrix}
   > a_{11}&a_{12}&\cdots&a_{1i}&\cdots&a_{1j}&\cdots&a_{1n}\\
   > a_{21}&a_{22}&\cdots&a_{1i}&\cdots&a_{2j}&\cdots&a_{2n}\\
   > \vdots&\vdots&\ddots&\vdots&\ddots&\vdots&\ddots&\vdots\\
   > a_{n1}&a_{n2}&\cdots&a_{1i}&\cdots&a_{nj}&\cdots&a_{nn}\\
   > \end{pmatrix}
   > $$
   >
   > $$
   > \sum_{k=1}^na_{ki}A_{kj}=(a_{1i},a_{2i},\cdots,a_{ni})\cdot(A_{1j},A_{2j},\cdots,A_{nj})
   > $$
   >
   > 
   >
   > ​																			————尼斯湖水怪




> 性质3可以由性质7推得
>
> 假设$\gamma_i$是$\mathrm A$的第i行的**行向量**，$\gamma_j$是$\mathrm A$的第j行的**行向量** ($i\neq j$) ，
> $$
> det(\mathrm A)=
> det\left(\begin{array}{c}
> \gamma_1\\
> \vdots\\
> \gamma_i\\
> \vdots\\
> \gamma_n
> \end{array}\right)
> =
> det\left(\begin{array}{c}
> \gamma_1\\
> \vdots\\
> \gamma_p+k\gamma_{j}\\
> \vdots\\
> \gamma_n
> \end{array}\right)
> =
> det\left(\begin{array}{c}
> \gamma_1\\
> \vdots\\
> \gamma_p\\
> \vdots\\
> \gamma_n
> \end{array}\right)
> +
> det\left(\begin{array}{c}
> \gamma_1\\
> \vdots\\
> k\gamma_j\\
> \vdots\\
> \gamma_n
> \end{array}\right)
> $$
> 由于$\gamma_j$和$k\gamma_j$同时存在于不同的两行中，所以
> $$
> det\left(\begin{array}{c}
> \gamma_1\\
> \vdots\\
> k\gamma_j\\
> \vdots\\
> \gamma_n
> \end{array}\right)=0
> $$
> 从而
> $$
> det(\mathrm A)=
> det\left(\begin{array}{c}
> \gamma_1\\
> \vdots\\
> \gamma_p\\
> \vdots\\
> \gamma_n
> \end{array}\right)
> =
> 
> det\left(\begin{array}{c}
> \gamma_1\\
> \vdots\\
> \gamma_i\\
> \vdots\\
> \gamma_n
> \end{array}\right)
> $$
> 这就证明了在 $\mathrm A \stackrel{r_i+kr_j}{\longrightarrow}\mathrm B$ 的初等变换下，$|\mathrm A|=|\mathrm B|$ 

### 行列式的展开★★★

> 在《高等数学》中我们计算向量外积的时候就借用了三阶行列式记法，其本质就是**行展开**。
> $$
> \begin{align}
> \vec{v_1}\times\vec{v_2}&=(x_1\vec{i}+y_1\vec{j}+z_1\vec{k})\times (x_2\vec{i}+y_2\vec{j}+z_2\vec{k})\\[3mm]
> &=\begin{vmatrix}
> \vec{i}&\vec{j}&\vec{k}\\
> x_1&y_1&z_1\\
> x_2&y_2&z_2
> \end{vmatrix}\\[3mm]
> &=
> (-1)^{1+1}\,\vec{i}
> \begin{vmatrix}
> y_1&z_1\\
> y_2&z_2
> \end{vmatrix}
> +
> (-1)^{1+2}\,\vec{j}
> \begin{vmatrix}
> x_1&z_1\\
> x_2&z_2
> \end{vmatrix}
> +
> (-1)^{1+3}\,\vec{k}
> \begin{vmatrix}
> x_1&y_1\\
> x_2&y_2
> \end{vmatrix}
> \\[3mm]
> &=
> \begin{vmatrix}
> y_1&z_1\\
> y_2&z_2
> \end{vmatrix}\vec{i}
> -
> \begin{vmatrix}
> x_1&z_1\\
> x_2&z_2
> \end{vmatrix}\vec{j}
> +
> \begin{vmatrix}
> x_1&y_1\\
> x_2&y_2
> \end{vmatrix}\vec{k}
> \end{align}
> $$
> ​																				————尼斯湖水怪

行列式展开是在**代数余子式**定义下的推广，同时也是**性质7**的特殊形式

对于n阶行列式
$$
\begin{vmatrix}
a_{11}&a_{12}&\cdots&a_{1n}\\
a_{21}&a_{22}&\cdots&a_{2n}\\
\vdots&\vdots&\ddots&\vdots\\
a_{n1}&a_{n2}&\cdots&a_{nn}\\
\end{vmatrix}
$$
可以按第i行展开
$$
|\mathrm A|=(-1)^{i+1}a_{i1}M_{i1}+(-1)^{i+2}a_{i2}M_{i2}+\cdots+(-1)^{i+n}a_{in}M_{in}
$$
可以按第i列展开
$$
|\mathrm A|=(-1)^{1+i}a_{1i}M_{1i}+(-1)^{2+i}a_{2i}M_{2i}+\cdots+(-1)^{n+i}a_{ni}M_{ni}
$$
其中$M_{ij}$为**余子式**，即在原n阶行列式的基础上，划去$(i,j)$所在行和所在列，剩下部分按原来的顺序构成的n-1阶行列式。

> 行列式展开，本质上是将**高阶行列式**化为**低阶行列式**之和。
>
> ​																				————尼斯湖水怪

#### 行列式展开的使用方法

对于一个超过三阶的行列式，例如
$$
\begin{vmatrix}
a_{11}&a_{12}&a_{13}&a_{14}\\
a_{21}&a_{22}&a_{23}&a_{24}\\
a_{31}&a_{32}&a_{33}&a_{34}\\
a_{41}&a_{42}&a_{43}&a_{44}\\
\end{vmatrix}
$$
先对其进行第三类**行变换**，化作
$$
\begin{vmatrix}
a_{11}&a_{12}&a_{13}&a_{14}\\
0&a_{22}'&a_{23}'&a_{24}'\\
0&a_{32}'&a_{33}'&a_{34}'\\
0&a_{42}'&a_{43}'&a_{44}'\\
\end{vmatrix}
$$
然后对第一列进行行列式展开，得到
$$
\begin{vmatrix}
a_{11}&a_{12}&a_{13}&a_{14}\\
a_{21}&a_{22}&a_{23}&a_{24}\\
a_{31}&a_{32}&a_{33}&a_{34}\\
a_{41}&a_{42}&a_{43}&a_{44}\\
\end{vmatrix}
=
\begin{vmatrix}
a_{11}&a_{12}&a_{13}&a_{14}\\
0&a_{22}'&a_{23}'&a_{24}'\\
0&a_{32}'&a_{33}'&a_{34}'\\
0&a_{42}'&a_{43}'&a_{44}'\\
\end{vmatrix}
=
a_{11}
\begin{vmatrix}
a_{22}'&a_{23}'&a_{24}'\\
a_{32}'&a_{33}'&a_{34}'\\
a_{42}'&a_{43}'&a_{44}'\\
\end{vmatrix}
$$
重复这两个步骤，最终能计算得到该行列式的值。

#### 行列式展开的灵活运用

要懂得灵活运用行列式展开，比如遇到这样的情况
$$
\begin{vmatrix}
a_{11}&a_{12}&a_{13}&a_{14}\\
a_{21}&a_{22}&a_{23}&a_{24}\\
0&a_{32}&0&0\\
a_{41}&a_{42}&a_{43}&a_{44}\\
\end{vmatrix}
$$
这个时候就要按照第3行展开，变为
$$
(-1)^{3+2} a_{32}
\begin{vmatrix}
a_{11}&a_{13}&a_{14}\\
a_{21}&a_{23}&a_{24}\\
a_{41}&a_{43}&a_{44}\\
\end{vmatrix}
$$


## 三、线性方程组

### 表示形式

课本上主要介绍了**标准形式**和**矩阵形式**，为了理清楚它们之前的关系，我以**向量形式**作为一个过渡。

#### 标准形式

$$
\left\{
\begin{align}
&a_{11}x_1+a_{12}x_2+a_{13}x_3+\cdots+a_{1n}x_n=b_1\\
&a_{21}x_1+a_{22}x_2+a_{23}x_3+\cdots+a_{2n}x_n=b_2\\
&a_{31}x_1+a_{32}x_2+a_{33}x_3+\cdots+a_{3n}x_n=b_3\\
&\qquad\qquad\quad\cdots\cdots\cdots\cdots\cdots\cdots\\
&a_{m1}x_1+a_{m2}x_2+a_{m3}x_3+\cdots+a_{mn}x_n=b_m\\
\end{align}
\right.
$$

#### 向量形式

$$
x_1\begin{pmatrix}
a_{11}\\
a_{21}\\
a_{31}\\
\vdots\\
a_{m1}
\end{pmatrix}
+
x_2\begin{pmatrix}
a_{12}\\
a_{22}\\
a_{32}\\
\vdots\\
a_{m2}
\end{pmatrix}
+
x_3\begin{pmatrix}
a_{13}\\
a_{23}\\
a_{33}\\
\vdots\\
a_{m3}
\end{pmatrix}
+\cdots+
x_n\begin{pmatrix}
a_{1n}\\
a_{2n}\\
a_{3n}\\
\vdots\\
a_{mn}
\end{pmatrix}
=
\begin{pmatrix}
b_1\\
b_2\\
b_3\\
\vdots\\
b_m
\end{pmatrix}
$$

简写为
$$
x_1\alpha_1+x_2\alpha_2+x_3\alpha_3+\cdots+x_n\alpha_n=\beta
$$

#### 矩阵形式

$$
\begin{pmatrix}
\alpha_1&\alpha_2&\alpha_3&\cdots&\alpha_n\end
{pmatrix}
\begin{pmatrix}
x_1\\
x_2\\
x_3\\
\vdots\\
x_m
\end{pmatrix}
=
\beta
$$

$$
\begin{pmatrix}
a_{11}&a_{12}&a_{13}&\cdots&a_{1n}\\
a_{21}&a_{22}&a_{23}&\cdots&a_{2n}\\
a_{31}&a_{32}&a_{33}&\cdots&a_{3n}\\
\vdots&\vdots&\vdots&\ddots&\vdots\\
a_{m1}&a_{m2}&a_{m3}&\cdots&a_{mn}\\
\end{pmatrix}
\begin{pmatrix}
x_1\\
x_2\\
x_3\\
\vdots\\
x_m
\end{pmatrix}
=
\begin{pmatrix}
b_1\\
b_2\\
b_3\\
\vdots\\
b_m
\end{pmatrix}
$$

简写为
$$
\mathrm A x=\beta
$$




