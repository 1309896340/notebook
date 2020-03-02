# 使用Python绘制空间球体

[PDF文档版](http://47.103.216.202/?post_type=wpdmpro&p=260&preview=true)

## 点阵的生成和球体的显示

### 数学依据

![](http://47.103.216.202/wp-content/uploads/2019/10/sphere.png)

球坐标系参数方程

$$
\left\{
\begin{align}
&x=r\sin\theta\cos\phi\\
&y=r\sin\theta\sin\phi\\
&z=r\cos\theta
\end{align}
\right.
$$

### 代码依据

依赖包：matplotlib , numpy

API清单：

```python
numpy.linspace()			#生成一维采样序列
numpy.meshgrid()			#生成网格
numpy.array()				#生成numpy数组
numpy.ones()				#生成全1数组
numpy.sin()					#数组的正弦函数
numpy.cos()					#数组的余弦函数

pyplot.figure()				#初始化窗口，返回句柄
pyplot.show()				#显示图像
pyplot.gca()				#取得坐标轴句柄

Axes3D.plot_surface()		#绘制曲面
Axes3D.set_xlim()			#设置x轴范围
Axes3D.set_ylim()			#设置y轴范围
Axes3D.set_zlim()			#设置z轴范围
```

> 可以在python交互式环境下导入模块`import numpy`后
>
> 使用`help()`命令查看函数原型
>
> 例如：
>
> ```python
> import numpy
> help(numpy.array)
> ```
> > 熟悉matlab的小伙伴们肯定会发现python的绘图接口和matlab非常相似，几乎一摸一样。
> >
> > ​																				————尼斯湖水怪

### 具体实现

```python
import numpy as np
from matplotlib import pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

theta = np.linspace(0,np.pi,50)
phi = np.linspace(0,2*np.pi,50)
r = 3

s_range = 4

fig = plt.figure()
ax = fig.gca(projection="3d")
ax.set_xlim(-s_range,s_range)
ax.set_ylim(-s_range,s_range)
ax.set_zlim(-s_range,s_range)

(theta_grid,phi_grid) = np.meshgrid(theta,phi)
x = r*np.sin(theta_grid)*np.cos(phi_grid)
y = r*np.sin(theta_grid)*np.sin(phi_grid)
z = r*np.cos(theta_grid)

ax.plot_surface(x,y,z)
plt.show()
```

### 运行效果演示

![](http://47.103.216.202/wp-content/uploads/2019/10/sphere_show.png)



## 深入理解绘图原理

一切都是基于`Axes3D.plot_surface(x,y,z)`的参数形式而建立的3D描述

下面举例说明该函数的使用

核心算法`meshgrid()`将生成两类点阵

```python
xx = np.array(range(1,5))
yy = np.array(range(1,9))
(X,Y) = np.meshgrid(xx,yy)
```

此时
$$
\begin{align}
x&=\begin{pmatrix}
1&2&3&4
\end{pmatrix}
\\[2mm]
y&=\begin{pmatrix}
1&2&3&4&5&6&7&8
\end{pmatrix}
\end{align}
$$

### x类二维点阵

$$
\bf{X}=\begin{pmatrix}
1&2&3&4\\
1&2&3&4\\
1&2&3&4\\
1&2&3&4\\
1&2&3&4\\
1&2&3&4\\
1&2&3&4\\
1&2&3&4\\
\end{pmatrix}
$$

### y类二维点阵

$$
\bf{Y}=\begin{pmatrix}
1&1&1&1\\
2&2&2&2\\
3&3&3&3\\
4&4&4&4\\
5&5&5&5\\
6&6&6&6\\
7&7&7&7\\
8&8&8&8\\
\end{pmatrix}
$$

### 点阵运算

#### 引入对点阵运算的定义（不听不听王八念经）

若 $\bf{Z}=(z_{ij})_{m\times n}$，$\bf{X}=(x_{ij})_{m\times n}$，$\bf{Y}=(y_{ij})_{m\times n}$，其中 $1\le i \le m,1\le j \le n$，则
$$
z_{ij}=f(x_{ij},y_{ij})
$$
记作
$$
\bf{Z}=F (\bf{X},\bf{Y})
$$

查阅手册可知，`numpy`库中的数学函数基本上都符合以上的$\bf F$的定义。

> 简单来说就是对**相同位置**上的元素进行运算。
>
> ​																				————尼斯湖水怪

此时$z_{ij}$就表示二维平面上$(x_{ij},y_{ij})$处的**高度**。

通过这样的运算，确定了三维空间的所有采样点的位置
$$
P_n:(x_{ij},y_{ij},z_{ij})
$$
在调用`Axes3D.plot_surface()`的时候，它的三个参数分别是上述的 $\bf{X}$、$\bf{Y}$、$\bf{Z}$。
