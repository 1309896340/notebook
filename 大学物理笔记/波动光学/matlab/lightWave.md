## 波动方程

一般形式：
$$
y=A\cos(\omega(t+\frac xu)+\phi)
$$

为了matlab实现，修改为三维空间形式
$$
h(x,y,t)=A\cos(\omega(t+\frac ru)+\phi)
$$
其中
$$
\begin{align}
r(x,y)=\sqrt{(x-x_0)^2+(y-y_0)^2}\\
\end{align}
$$
其中涉及的常数有，振幅 $A$，角频率 $\omega$，传播速度 $u$，初相位 $\phi$，波源位置 $(x_0,y_0)$。

```matlab
function [X,Y,Z] = generate_wave(A,u,phi,omega,pos,ran,t)
```

