# 前言

​		学习《电磁场与电磁波》的时候，会运用到大量的数学方法，积分是计算方面的主要内容，同时有其他方面知识点贯穿其中，标量场、矢量场概念的引入是关键点，对于“场”概念的理解是基本。

​		原来我们学习的微积分只是“一维”的，而电磁场是传播于三维空间，我们无法避免接触多元的积分，而多元的积分比一元的要复杂不是一点点，无论是理解上还是计算上。空间中有多种积分形式，我们会见识到很多，而且他们之间有对应的变换关系，其中三个“度”是关键（梯度、散度、旋度）。

# 关联性猜想

​		我们会注意到微分运算有了更多内涵，矢量的引入使得微分更加多元化，更加复杂化。

​		我们将**标量**和**矢量**两两组合，不难得到四种微分形式（当然不难猜测还有四种积分形式），如下所示
$$
\begin{align}
\frac{dy}{dx},\frac{d\vec{u}}{dt},\frac{d\vec{A}}{d\vec{l}},\frac{dS}{d\vec{A}}
\end{align}
$$
​		前面两种相信大家都见过了

​		第一种是最一般的微分，不做太多解释

​		第二种是矢量关于标量的微分，矢量同时具有**大小**和**方向**，而这两者都可以是关于变量 $t$ 的函数，因此矢量微分是可行的

​		而对于后两种微分，似乎并不常见，但其实我们见过第三种，在研究多元函数重积分的时候，我们用**雅可比行列式**来做积分变换，其实矢量对矢量的求导的结果就是**雅可比矩阵** 

​		这里我们需要将我们的认识上升一个台阶，将上述带箭头的符号看作矩阵而非矢量，将其元素视作标量或矢量，表示分布在空间中的每一点，这可能就是“矩阵论”和“场论”的妙处

​		以上仅仅代表我个人的猜想，作为笔记记录下来

# 第一章  矢量分析

## 标量与矢量

## 矢量的代数运算

## 矢量的标积和矢积

​		前三节内容的大部分，我们在以前高中时期就学过，因此不做太多描述，下面列出教材中与我们所学的不同的地方，以及补充，以做区分，我们主要还是以书本内容为主。



修正内容：

1. 矢量一般以粗体大小字母表示，如矢量 $\mathbf A$ ，其在空间中的坐标表示一般标注三个轴上的分量

   例如 ，$\mathbf A = (A_x,A_y.A_z)$ 

2. 单位向量以粗体e表示，其下标注明矢量对应的小写字母以做区分。

   例如，矢量 $\mathbf A$ 的单位向量为 $\mathbf e_a$ 

   其中，$\mathbf e_a=\frac{\mathbf A}{|\mathbf A|}$ 

3. 单位向量 $\mathbf e_a$ 还可以表示为

   $\mathbf e_a =\frac{A_x}{|A_x|}\mathbf e_x+\frac{A_y}{|A_y|}\mathbf e_y+\frac{A_z}{|A_z|}\mathbf e_z \\= \mathbf e_x\cos\alpha +\mathbf e_y\cos\beta+\mathbf e_z\cos\gamma$ 

   其中 $\cos\alpha,\cos\beta,\cos\gamma$ 被称为**方向余弦** 



补充内容：

1. 标量的空间分布构成标量场，矢量的空间分布构成矢量场。

2. 若矢量场的大小及方向均与坐标空间无关，这种矢量称为常矢量，简称**常矢**。

3. 标量三重积
   $$
   \vec A\cdot(\vec B\times \vec C)=\begin{pmatrix}
   A_x&A_y&A_z\\
   B_x&B_y&B_z\\
   C_x&C_y&C_z
   \end{pmatrix}
   $$
   表现为由三个矢量构成的平行六面体的体积

4. 矢量三重积
   $$
   \vec A\times(\vec B\times \vec C) = \vec B(\vec A\cdot \vec C)-\vec C(\vec A\cdot \vec B)
   $$
   表现为在矢量B和矢量C上的线性组合（其结果和矢量B矢量、C共面），注意次序！

   

注意事项：

1. 矢积不服从**交换律**和**结合律** （计算矢量三重积时特别注意）
2. 标积为零表**垂直**，矢积为零表**平行** 

## 标量场和矢量场

### 概念

“场”概念的引入：物理量（如温度、电场、磁场）在空间以某种形式分布，若每一时刻每个物理量都有一个确定的值，则称在该空间中确定了该物理量的场。

### 场的分类

按物理量的**性质**分：

1. 标量场：描述场的物理量为标量 （温度场，电势场）
2. 矢量场：描述场的物理量为矢量 （电场，磁场）

按物理量**变化特性**分：

1. 静态场：物理量不随时间发生变化的场 （静电场）
2. 时变场（动态场）：物理量随时间发生变化的场 （时变电场）

### 矢量与矢量场的不变特性

在任一时刻，描述场的物理状态分布的函数是**唯一**的，其大小、方向也是**唯一**的。
$$
常用坐标系\left\{
\begin{align}
&直角坐标系\\
&柱坐标系\\
&球坐标系
\end{align}
\right.
$$
如下所示
$$
\begin{align}
&\vec{F}(\vec{r})=\vec{F}(x,y,z)\\
&=F_x(x,y,z)\hat{a_x}+F_y(x,y,z)\hat{a_y}+F_z(x,y,z)\hat{a_z}\\
&=F_r(r,\phi,z)\hat{a_r}+F_\phi(r,\phi,z)\hat{a_\phi}+F_z(r,\phi,z)\hat{a_z}\\
&=F_R(R,\theta,\phi)\hat{a_R}+F_\theta(R,\theta,\phi)\hat{a_\theta}+F_\phi(R,\theta,\phi)\hat{a_\phi}
\end{align}
$$

## 坐标变换

我们主要学习直角坐标系和另外两种坐标系之间的转换

1. 直角坐标系  $(x,y,z)$
2. 圆柱坐标系  $(r,\phi,z)$
3. 球坐标系  $(r,\theta,\phi)$

其中要区分**标量坐标变换**和**矢量坐标变换**，前者坐标变换仅需替换坐标变量即可，而后者在前者的基础上加入了**方向**的要素，因此要对矢量的**各分量**进行变换

### 直角坐标系-圆柱坐标系

设矢量场 
$$
\vec{A}=A_x(x,y,z)\hat{a_x}+A_y(x,y,z)\hat{a_y}+A_z(x,y,z)\hat{a_z}
$$
坐标变量关系如下
$$
\left\{
\begin{align}
&r = \sqrt{x^2+y^2}\\
&\phi = \arctan(\frac y x)\\
&z = z
\end{align}
\right.
$$
矢量关系如下
$$
\begin{pmatrix}
A_r\\A_\phi\\A_z
\end{pmatrix}
=
\begin{pmatrix}
\cos\phi&\sin\phi&0\\
-\sin\phi&\cos\phi&0\\
0&0&1\\
\end{pmatrix}

\begin{pmatrix}
A_x\\A_y\\A_z
\end{pmatrix}
$$
得到变换后的表达式
$$
\vec{A}=A_r(r,\phi,z)\hat{a_r}+A_\phi(r,\phi,z)\hat{a_\phi}+A_z(r,\phi,z)\hat{a_z}
$$

### 直角坐标系-球坐标系

设矢量场 
$$
\vec{A}=A_x(x,y,z)\hat{a_x}+A_y(x,y,z)\hat{a_y}+A_z(x,y,z)\hat{a_z}
$$
坐标变量关系如下
$$
\left\{
\begin{align}
&R = \sqrt{x^2+y^2+z^2}\\
&\theta = \arccos(\frac{z}{\sqrt{x^2+y^2+z^2}})\\
&\phi = \arctan(\frac y x)
\end{align}
\right.
$$
矢量关系如下
$$
\begin{pmatrix}
A_R\\A_\theta\\A_\phi
\end{pmatrix}
=
\begin{pmatrix}
\sin\theta\cos\phi&\sin\theta\sin\phi&\cos\phi\\
\cos\theta\cos\phi&\cos\theta\sin\phi&-\sin\theta\\
-\sin\theta&\cos\phi&0\\
\end{pmatrix}

\begin{pmatrix}
A_x\\A_y\\A_z
\end{pmatrix}
$$
得到变换后的表达式
$$
\vec{A}=A_R(R,\theta,\phi)\hat{a_R}+A_\theta(R,\theta,\phi)\hat{a_\theta}+A_\phi(R,\theta,\phi)\hat{a_\phi}
$$

## 标量场的方向导数与梯度

​		套用维基百科定义，**梯度**是一种关于多元导数的概括

​		用我自己的理解概括，一元函数的梯度是标量，表示函数关于自变量的变化率

​		多元函数的梯度是矢量，其方向是函数值增长趋势最快的方向，其大小是多元函数函数值关于其所有分量的变化率（其中每一个分变量表示一个独立的矢量，总的变化率大小为该矢量的模）。

​		对于一个标量场函数 $\Phi(x,y,z)$ ，其梯度场记作 $\nabla\Phi$ 或 $grad(\Phi)$ ，其计算如下
$$
\nabla\Phi=\frac{\partial \Phi(x,y,z)}{\partial x}\hat{a_x}+\frac{\partial \Phi(x,y,z)}{\partial y}\hat{a_y}+\frac{\partial \Phi(x,y,z)}{\partial z}\hat{a_z}
$$




​		标量场在某点的方向导数，表示标量场($\Phi$)自该点($P$)沿某一方向上的变化率。

​		定义如下
$$
\left.\frac{\partial\Phi}{\partial l}\right|_P=\lim_{\Delta t\rightarrow 0}\frac{\Phi(P')-\Phi(P)}{\Delta t}
$$
​		标量场是连续分布在空间中的，其元素是数，表示空间中某个点某个物理量的一个度量

​		另外，方向导数也是一个数，是梯度在给定方向上的**投影**



​		给定单位方向矢量 $\vec{e_l}$ ，则标量场在 $P$ 点处沿 $\vec{e_l}$ 的方向导数为
$$
\left.\frac{\partial\Phi}{\partial l}\right|_P = \nabla\Phi(P)\cdot\vec{e}
$$


### 梯度、散度、旋度的复合运算

#### 梯度的旋度为零

#### 旋度的散度为零

#### 梯度的散度（拉普拉斯算子）

#### 散度的梯度



细节点评：

“有散场”强调的是该场存在散度，并没有否认其存在旋度，“有旋场”同理