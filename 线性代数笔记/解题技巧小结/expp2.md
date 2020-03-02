## 例题1

已知矩阵 $\mathrm A$ 的行列式为
$$
|\mathrm A| = 
\begin{vmatrix}
1&2&1&3\\
0&1&1&4\\
2&3&4&-1\\
-2&1&3&0
\end{vmatrix}
$$
求 $\mathrm A_{31}+\mathrm A_{32}+\mathrm A_{33}+\mathrm A_{34}$ 



解析：

​		某元素位置的代数余子式与所在行所在列元素无关。

​		换句话说，第三行各元素的代数余子式与第三行元素大小无关

​		因此将第三行的 $2,3,4,-1$ 换成任何数字，都不会改变 $\mathrm A_{31},\mathrm A_{32},\mathrm A_{33},\mathrm A_{34}$ 的大小

​		这时可以用到的一个技巧就是将行列式的第三行换成 $\mathrm A_{31}+\mathrm A_{32}+\mathrm A_{33}+\mathrm A_{34}$ 的系数 $1,1,1,1$ 

​		这时候 “求第三行代数余子式和” 的问题就转换成了 “求新行列式的值” 的问题
$$

A_{31}+A_{32}+A_{33}+A_{34}
= 
\begin{vmatrix}
1&2&1&3\\
0&1&1&4\\
1&1&1&1\\
-2&1&3&0
\end{vmatrix}=-14
$$

## 例题2

求行列式
$$
|\mathrm A| = 
\begin{vmatrix}
1+x&1&1&\cdots&1\\
1&1+x&1&\cdots&1\\
1&1&1+x&\cdots&1\\
\vdots&\vdots&\vdots&\ddots&\vdots\\
1&1&1&\cdots&1+x
\end{vmatrix}_{n\times n}
$$

### 解法一（升阶法）

当 $x=0$ 的时候，行列式必为 0 



当 $x\ne 0$ 的时候

将原行列式恒等扩充为 $n+1$ 阶
$$
\begin{vmatrix}
1&1&1&1&1&1\\
0&1+x&1&1&\cdots&1\\
0&1&1+x&1&\cdots&1\\
0&1&1&1+x&\cdots&1\\
\vdots&\vdots&\vdots&\vdots&\ddots&\vdots\\
0&1&1&1&\cdots&1+x
\end{vmatrix}_{(n+1)\times (n+1)}
$$
将第一行的-1倍加到其他所有行，得到
$$
\begin{vmatrix}
1&1&1&1&1&1\\
-1&x&0&0&\cdots&0\\
-1&0&x&0&\cdots&0\\
-1&0&0&x&\cdots&0\\
\vdots&\vdots&\vdots&\vdots&\ddots&\vdots\\
-1&0&0&0&\cdots&x
\end{vmatrix}_{(n+1)\times (n+1)}
$$
将除了第一列的所有列的 $\frac 1 x$ 倍加到第一列
$$
\begin{vmatrix}
1+\frac{n}{x}&1&1&1&1&1\\
0&x&0&0&\cdots&0\\
0&0&x&0&\cdots&0\\
0&0&0&x&\cdots&0\\
\vdots&\vdots&\vdots&\vdots&\ddots&\vdots\\
0&0&0&0&\cdots&x
\end{vmatrix}_{(n+1)\times (n+1)}
$$
此时为一个上三角矩阵，其行列式为主元素的连乘
$$
|A| = (1+\frac n x)\,x^n
$$


综上所述
$$
|\mathrm A| = x^n + nx^{n-1}
$$


### 解法二（递推法）

将 $n$ 阶的行列式 $|\mathrm A|$ 记作 $\mathrm I_n$  

从第二行开始将本行的-1倍加到上一行，得到
$$
\mathrm I_n = 
\begin{vmatrix}
x&-x&0&0&\cdots&0&0\\
0&x&-x&0&\cdots&0&0\\
0&0&x&-x&\cdots&0&0\\
0&0&0&x&\cdots&0&0\\
\vdots&\vdots&\vdots&\vdots&\ddots&\vdots&\vdots\\
0&0&0&0&\cdots&x&-x\\
1&1&1&1&\cdots&1&1+x
\end{vmatrix}_{n\times n}
$$
对其进行列展开，即
$$
\mathrm I_n
=
x\begin{vmatrix}
x&-x&0&\cdots&0&0\\
0&x&-x&\cdots&0&0\\
0&0&x&\cdots&0&0\\
\vdots&\vdots&\vdots&\ddots&\vdots&\vdots\\
0&0&0&\cdots&x&-x\\
1&1&1&\cdots&1&1+x
\end{vmatrix}_{(n-1)\times (n-1)}
+
(-1)^{n}\begin{vmatrix}
-x&0&0&\cdots&0&0\\
x&-x&0&\cdots&0&0\\
0&x&-x&\cdots&0&0\\
0&0&x&\cdots&0&0\\
\vdots&\vdots&\vdots&\ddots&\vdots&\vdots\\
0&0&0&\cdots&x&-x\\
\end{vmatrix}_{(n-1)\times (n-1)}
$$
比较第一项的行列式和原行列式，发现它们形式一致，只是降了一阶

再看第二项的行列式，是个下三角矩阵的行列式，其值为主对角线元素的乘积，因此可以得到
$$
\mathrm I_n = x\mathrm I_{n-1} + x^{n-1}
$$
随着 $\mathrm I_n$ 阶数的降低，不难得到
$$
\mathrm I_1 = 1+x
$$
我们将行列式问题转换为了一个求递推数列通项公式的问题，要求解这个递推数列通项，我们构造新的数列
$$
T_n = \frac{\mathrm I_n}{x^n} = \frac{\mathrm I_{n-1}}{x_{n-1}}+\frac 1 x
$$
此时数列 $\{T_n\}$ 是一个公差为 $\frac 1 x$ ，首项为 $T_1 = \frac{1+x}{x}$ 的等差数列
$$
T_n = (n-1)\frac 1 x + T_1
$$
因此
$$
T_n = \frac{x+n}{x} = \frac{\mathrm I_n}{x^n}
$$
可得
$$
\mathrm I_n = x^n+nx^{n-1}
$$


 