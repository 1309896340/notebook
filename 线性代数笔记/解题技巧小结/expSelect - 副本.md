## 二阶逆矩阵的快速求法

对于计算二阶矩阵的**伴随矩阵**，牢记口诀“主对调，副变号”，例如

若
$$
\mathrm A=
\begin{pmatrix}
a&b\\c&d\\
\end{pmatrix}
$$
则
$$
\mathrm A^*=
\begin{pmatrix}
d&-b\\-c&a\\
\end{pmatrix}
$$
所以最后得到该逆矩阵为
$$
\mathrm A^{-1}=
\frac{
\begin{pmatrix}
d&-b\\-c&a\\
\end{pmatrix}
}{
ad-bc
}
$$



## 对某一行列各元素的代数余子式之和

例如下面这题

设行列式$|\mathrm A|=\begin{vmatrix}3&0&4&0\\2&2&2&2\\0&-7&0&0\\5&3&-2&2\end{vmatrix}$，求第四行各元素的代数余子式之和

解题的关键是对行列式性质的把握，该题用到了n阶行列式的这个性质

$$
\sum_{k=1}^na_{ik}A_{jk}=\left\{
\begin{align}
&|\mathrm A|&,i=j\\
&0&,i\neq j
\end{align}
\right.
$$

注意到该行列式第2行是相同元素，于是

$$
\sum_{k=1}^na_{2k}A_{4k}=a_{21}A_{41}+a_{22}A_{42}+a_{23}A_{43}+a_{24}A_{44}=0
$$
从而
$$
2A_{41}+2A_{42}+2A_{43}+2A_{44}=0
$$
所以
$$
A_{41}+A_{42}+A_{43}+A_{44}=0
$$



## 范德蒙德行列式

n阶范德蒙德行列式最终写做
$$
\begin{vmatrix}
1&1&\cdots&1\\
x_1&x_2&\cdots&x_n\\
\vdots&\vdots&\ddots&\vdots\\
x_1^{n-1}&x_2^{n-1}&\cdots&x_n^{n-1}
\end{vmatrix}
=
\prod_{1\leq i\leq j\leq n}(x_i-x_j)
$$
这个行列式本身也是很复杂的，结论的表述也很难看懂，但规律还是很好找的

下面我将其从2阶到4阶列举一遍，方便读者找到它的规律

对于2阶
$$
\begin{vmatrix}
1&1\\
a&b\\
\end{vmatrix}
=b-a
$$
对于3阶
$$
\begin{vmatrix}
1&1&1\\
a&b&c\\
a^2&b^2&c^2\\
\end{vmatrix}
=(b-a)(c-a)(c-b)
$$
对于4阶
$$
\begin{vmatrix}
1&1&1&1\\
a&b&c&d\\
a^2&b^2&c^2&d^2\\
a^3&b^3&c^3&d^3\\
\end{vmatrix}
=(b-a)(c-a)(d-a)(c-b)(d-b)(d-c)
$$
是不是很好理解那个表达式了呢？



## 齐次线性方程组有非零解的含义

有的题目会给你一个很难理解的条件，即“齐次线性方程组有非零解”

可能会感到莫名其妙，例如下面这题

当a为多少时，方程组$\left\{\begin{align}&(a+2)x_1+4x_2+x_3=0\\&-4x_1+(a-3)x_2+4x_3=0\\&-x_1+4x_2+(a+4)x_3=0\end{align}\right.$ ，有非零解？

我们将它整理成矩阵形式，即
$$
\begin{pmatrix}
a+2&4&1\\
-4&a-3&4\\
-1&4&a+4
\end{pmatrix}
\begin{pmatrix}
x_1\\x_2\\x_3
\end{pmatrix}
=
\begin{pmatrix}
0\\0\\0
\end{pmatrix}
$$
记作
$$
\mathrm A x=\mathrm O
$$
这个问题其实涉及到齐次线性方程组的**平凡解**与**非平凡解**的概念

> 平凡解，即x中的元素全为0；非平凡解，即x中至少含有一个非零元素。

> 齐次方程 $\mathrm A x=\mathrm O$ 拥有平凡解，当且仅当$\mathrm A$是**满秩矩阵**

换句话说这个问题等价于
$$
\begin{vmatrix}
a+2&4&1\\
-4&a-3&4\\
-1&4&a+4
\end{vmatrix}
=0
$$
从而可以解得 $a=\pm3$ 

## 用列向量描述矩阵变换

看这样一道例题

设$\mathrm A=(\alpha_1,\alpha_2,\alpha_3)$，其中$\alpha_1,\alpha_2,\alpha_3$为3维列向量，且$|A|=-4$，问行列式 $|\alpha_3+3\alpha_1,\alpha_2,4\alpha_1|$为多少？

其实它是对矩阵$\mathrm A$进行了一系列的初等列变换，因此我们可以套用行列式的性质，可以得到
$$
\begin{align}
&|\alpha_3+3\alpha_1,\alpha_2,4\alpha_1|\\
&\quad=4|\alpha_3+3\alpha_1,\alpha_2,\alpha_1|&&(\frac 14 c_3)\\
&\quad=4|\alpha_3,\alpha_2,\alpha_1|&&(c_1-3c_3)\\[2mm]
&\quad=-4|\alpha_1,\alpha_2,\alpha_3|&&(c_1\leftrightarrow c_3)\\[2mm]
&\quad=-4|\mathrm A|\\[2mm]
&\quad=16
\end{align}
$$


## 伴随矩阵的行列式

告诉你n阶矩阵$\mathrm A$的行列式 $|\mathrm A|=a \neq 0$，如何得到$|A^*|$ ？

在讲伴随矩阵的时候我们知道它有这么一个性质
$$
\mathrm A  \mathrm {A^*} = |\mathrm A|\mathrm E
$$
对两边取行列式，可得
$$
|\mathrm A  \mathrm{A^*}|=||\mathrm A|\mathrm E|
$$
再有行列式性质推论 $|k\mathrm A|=k^n|\mathrm A|$ ，可得
$$
|\mathrm A||\mathrm{A^*}|= |\mathrm A|^n
$$
即得到
$$
|\mathrm{A^*}|=|\mathrm A|^{n-1}
$$
以后会发现这个结论是普遍用到的

> 进一步地，我们可以通过它来证明为什么逆矩阵的行列式是原矩阵行列式的倒数了
>
> 由于
> $$
> \mathrm A^{-1} = \frac{\mathrm A^*}{|\mathrm A|}
> $$
> 故
> $$
> |\mathrm A^{-1}| = \left|\frac{\mathrm A^*}{|\mathrm A|}\right|=\frac{|\mathrm A^*|}{|\mathrm A|^n}
> $$
> 带入前面那个普适结论，可以得到
> $$
> |\mathrm A^{-1}|=\frac 1{|\mathrm A|}
> $$



## 伴随矩阵的秩

虽然还没教到这里，但题库中既然出现了，也不妨提前记一下

伴随矩阵的秩和原矩阵的秩是有关系的，表示为一个分段函数
$$
R(\mathrm A^*)=
\left\{
\begin{align}
&\,\,n&&,\,\,R(\mathrm A)=n\\
&\,\,1&&,\,\,R(\mathrm A)=n-1\\
&\,\,0&&,\,\,R(\mathrm A)<n-1\\
\end{align}
\right.
$$
它的证明涉及到秩的不等式，读者如感兴趣，不妨继续

该不等式为
$$
R(\mathrm A)+R(\mathrm B)-n\leq R(\mathrm{AB})
$$
当 $\mathrm{AB=O}$ 的一种特殊情况
$$
R(\mathrm A)+R(\mathrm B)\leq n
$$
另外我们知道伴随矩阵的定义
$$
\mathrm A \mathrm A^*=\mathrm A^* \mathrm A=|\mathrm A|\mathrm E
$$


若 $R(\mathrm A)=n$，这时候 $\mathrm A$可逆，所以其逆矩阵必然存在，由于是互逆关系，故
$$
R(\mathrm A^*)=R(\mathrm A)
$$
若 $R(\mathrm A)=n-1$ 则 $|A|=0$  ，此时有
$$
\mathrm A \mathrm A^*= \mathrm O
$$
所以
$$
R(\mathrm A)+R(\mathrm A^*)\leq n
$$
由于 $R(\mathrm A)=n-1$ ，所以必然有
$$
R(\mathrm A^*)\leq 1
$$
而 