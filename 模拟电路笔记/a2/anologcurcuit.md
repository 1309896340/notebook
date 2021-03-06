# 场效应三极管及其放大电路

## 引言

​        FET (Field Effect Transistor) 即场效晶体管，它分为**结型**(JFET)和**绝缘栅型**(MOSFET)两大类。

​        场效晶体管中只有一种载流子——电子或空穴导电，因此又被称为**单极性器件**。

​        场效晶体管是以栅源电压为控制量，控制漏极电流的大小，因此又被称为**电压控制型**元器件。

​        场效晶体管的优点，**体积小**、**重量轻**、**耗电省**、**寿命长**、**输入阻抗高**、**噪声低**、**抗辐射能力强**、**制造工艺简单**。

​        JFET中的结是一个普通的PN结，JFET放大电路相对应用较少。

​        MOS FET可用在高速或高频电路中，它的体积很小，在集成电路放大器中，常用MOS FET做成电流源作为**偏置电路**或**有源负载**。



> MOSFET 即 Metal-Oxide-Semiconductor Field Effect Transistor 金属氧化物半导体场效应晶体管
> JFET 即 Junction Field Effect Transistor 结型场效应晶体管
> BJT 即 Bipolar Junction Transistor 双极结型晶体管

## 场效晶体管分类

![](http://47.103.216.202/wp-content/uploads/2019/11/structure.png)

### 各层分类

​		根据**结构**分类：**结型**、**绝缘栅型**

​		根据**静态特性**分类：**耗尽型**、**增强型**

​		根据**导电沟道**分类：**N沟道**、**P沟道**

### 分类详情

​		绝缘栅型：即栅极实际上不导电，它与源极和漏极都隔了一层绝缘物，典型的由“电压控制电流”。

​		结型：和绝缘栅型不一样在于，它**只有耗尽型**，及在栅源偏置为0V的时候就存在导电沟道（实际上也有增强型，但只用于特殊用途，教科书中一般不提及）。

​		耗尽型：栅源零偏的时候就**存在**导电沟道，存在**夹断电压$V_P$**，即使得漏极电流为零的栅源电压。

​		增强型：栅源零偏的时候**不存在**导电沟道，存在**开启电压$V_T$**，即使得漏极电流开始变大时的栅源电压。

​		N沟道：载流子为**自由电子**。

​		P沟道：载流子为**空穴**。

### 符号表示

![](http://47.103.216.202/wp-content/uploads/2019/11/all.png)


## N沟道增强型MOS FET

​		由于在书本中讲这个类型的场效管的比较多，所以就以它为模板。

​		和三极管类似的，但在这里我们主要分析三个量，$V_{GS}$、$i_D$、$V_{DS}$，由它们构成了两个特性曲线。



> 我们目前接触到的放大电路，都属于**二端口**，即二端输入、二端输出，是一个**四端网络**。
>
> 原本它们之间，电压的组合就有6种，而电流有4条，两者组合一下，可以得到24张不同含义的特性曲线图。
>
> 但是最后为什么能简化为仅仅两张特性曲线呢？其中必然涉及到变量之间的相关性和工程近似的研究方法。

### 转移特性曲线

![](http://47.103.216.202/wp-content/uploads/2019/11/MOSFET_N_En_tran-1.jpg)

​		由于场效晶体管输入电流恒为零，关于输入电流的图像没有意义，所以在这里将输出电流作为纵坐标，改叫**转移特性曲线**而非输入特性曲线。

​		与二极管的伏安特性曲线相似，有一个开启电压，若想让场效晶体管正常工作，需要满足 $V_{GS}>V_T$ 。

### 输出特性曲线

![](http://47.103.216.202/wp-content/uploads/2019/11/MOSFET_N_En_out.jpg)

​		可以看到，两个图像纵坐标都是$i_D$但横坐标不同。

​		场效晶体管正常工作的区域是中间那段与横轴几乎平行的曲线，叫做**放大区**（**恒流区**、**饱和区**），其左侧是**可变电阻区**。（注意与三极管的输出特性曲线相区分）

