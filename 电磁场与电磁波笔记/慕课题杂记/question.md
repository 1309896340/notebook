# 问题

1、$\hat{a_x}$ 这种尖角帽标记是否有特殊意义

2、

# 题干

## 1

确定 a 的值，使 $\vec{A}=2\hat{a_x}+、a\hat{a_y}+\hat{a_z}$ , $\vec{B}=4\hat{a_x}-2\hat{a_y}-2\hat{a_z}$ 相互垂直。

# 2

证明矢量 $\vec{A}=5\hat{a_x}-5\hat{a_y}$ , $\vec{B}=3\hat{a_x}-7\hat{a_y}-\hat{a_z}$ 和 $\vec{C}=-2\hat{a_x}-2\hat{a_y}-\hat{a_z}$  是直角三角形的边。用矢量积计算它的面积。

# 3

如果 $\vec{A}=3\hat{a_x}+2\hat{a_y}-\hat{a_z}$ , $\vec{B}=\hat{a_x}-2\hat{a_y}+\hat{a_z}$ ,求

(1). $\vec{A}+\vec{B}$   (2). $\vec{A}\cdot\vec{B}$   (3). $\vec{A}\times\vec{B}$

(4). $\vec{A}$ 和 $\vec{B}$ 所构成的平面的单位法矢量

(5). $\vec{A}$ 和 $\vec{B}$ 之间较小的角

(6). $\vec{A}$ 在 $\vec{B}$ 上的标量投影和矢量投影

# 4

已知 $\vec{A}=ax\,\hat{a_x}+by\,\hat{a_y}+cz\,\hat{a_z}$ ，若 $S$ 为包围体积 $V$ 的闭合面，计算 $\oint_S\,\vec{A}\cdot d\vec{S}$ 的结果。

# 5

设某空间内的电位为 $\varphi = 2x^3y-5x^2z^2+4x^2yz \ (\mathrm V)$ ,求空间点 $P(1,1,1)$ 上的电场强度 $\vec{E}$     (已知 $\vec{E}=-\nabla\varphi$)

# 6

设标量 $\phi=xy^2+yz^3$ ,矢量 $\vec{A}=2\hat{a_x}+2\hat{a_y}-\hat{a_z}$ ,试求标量函数 $\phi$ 在点 $(2,-1,1)$ 处沿矢量 $\vec{A}$ 的方向上的方向导数。

# 例题

## 1

$$
\vec{A}+3\vec{B}=\hat{a_x}+12\hat{a_y}-7\hat{a_z}
$$


$$
\vec{e}=\frac{\vec{B}-\vec{C}}{|\vec{B}-\vec{C}|}=\frac{-3\hat{a_x}+5\hat{a_y}-5\hat{a_z}}{|-3\hat{a_x}+5\hat{a_y}-5\hat{a_z}|}=\frac{1}{\sqrt{59}}(-3\hat{a_x}+5\hat{a_y}-5\hat{a_z})
$$

$$
Proj_\vec{B}\vec{C}=\vec{C}\cdot \vec{e_B}=\vec{C}\cdot\frac{\vec{B}}{|\vec{B}|}=(4\hat{a_x}-2\hat{a_y}+\hat{a_z})\cdot\frac{1}{\sqrt{26}}(\hat{a_x}+3\hat{a_y}-4\hat{a_z})=-\frac{6}{\sqrt{26}}
$$

$$
\vec{C}_B=-\frac{6}{\sqrt{26}}(4\hat{a_x}-2\hat{a_y}+\hat{a_z})
$$


$$
\cos\theta = \frac{\vec{A}\cdot\vec{B}}{|\vec{A}||\vec{B}|}=\frac{-13}{\sqrt{38}\sqrt{26}}
$$


## 2

$$
\vec{A}\cdot\vec{B}=8-2a-2 = 0\\
6-2a=0\\
a=3
$$

## 3

$$
\vec{c}=\vec{A}-\vec{B}=2\hat{a_x}+2\hat{a_y}+\hat{a_z}
$$

$$
\vec{b}=\vec{C}-\vec{A}=-7\hat{a_x}+3\hat{a_y}-\hat{a_z}
$$

$$
\vec{a}=\vec{B}-\vec{C}=5\hat{a_x}-5\hat{a_y}+0\hat{a_z}
$$


$$
\vec{a}\cdot\vec{c}=0
$$

$$
S=\frac12 |\vec{a}\times\vec{c}|=\frac12|-5\hat{a_x}-5\hat{a_y}+20\hat{a_z}|=15\frac{\sqrt{2}}{2}
$$

## 4

设
$$
\vec{a}=\vec{A}-\vec{B}\\
\vec{b}=\vec{B}-\vec{C}
$$
则
$$
\vec{a}\times\vec{b}=(\vec{A}-\vec{B})\times(\vec{B}-\vec{C})=\vec{A}\times\vec{B}-\vec{A}\times\vec{C}+\vec{B}\times\vec{C}
$$

$$
\vec{a}\times\vec{b}+\vec{A}\times\vec{B}+\vec{B}\times\vec{C}+\vec{C}\times\vec{A}=\bf{0}
$$


## 5

$$
\vec{A}+\vec{B}=4\hat{a_x}+0\hat{a_y}+0\hat{a_z}
$$

$$
\vec{A}\cdot\vec{B}=3-4-1=-2
$$

$$
\vec{A}\times\vec{B}=0\hat{a_x}-4\hat{a_y}-8\hat{a_z}
$$

$$
\vec{e_\perp}=\frac{\vec{A}\times\vec{B}}{|\vec{A}\times\vec{B}|}=-\frac1{\sqrt5}(\hat{a_y}+2\hat{a_z})
$$

$$
\cos\theta = \frac{\vec{A}\cdot\vec{B}}{|\vec{A}||\vec{B}|}=-\frac1{\sqrt{21}}
$$


$$
\hat{e_b} = \frac{\vec{B}}{|\vec{B}|}
$$

$$
Proj_\vec{B} \vec{A}=\vec{A}\cdot\hat{e_b} =-\frac{2}{\sqrt{6}}
$$

$$
\vec{A_b}=-\frac{2}{\sqrt{6}}\hat{e_b}
$$

## 6

$$
\vec{a_1} = 4\hat{a_x}-2\hat{a_y}+4\hat{a_z}
$$

$$
\vec{a_2} = 4\hat{a_x}-2\hat{a_y}-2\hat{a_z}
$$

$$
\sin\theta = \frac{\vec{a_1}\cdot\vec{a_2}}{|\vec{a_1}||\vec{a_2}|} = \frac{1}{\sqrt{6}}
$$

$$
\theta = \arcsin(\frac1{\sqrt 6})
$$

$$
\nabla\times\vec{E}=
\begin{vmatrix}
\hat{a_r}&\hat{a_\theta}&\hat{a_\phi}\\
\frac{\partial}{\partial r}&\frac{\partial}{r\partial \theta}&\frac{\partial}{r\sin\theta\partial \phi}\\
A_r&A_\theta&0
\end{vmatrix}
=0\hat{a_r}+0\hat{a_\theta}+24\frac{\sin\theta}{r}\hat{a_\phi}
$$

$$
\nabla\cdot\vec{E}=\frac1{r^2\sin\theta}()
$$

