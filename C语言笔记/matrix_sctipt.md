# 前言

&emsp;&emsp;这是我的第一篇博客，因为以前老把东西放在说说上，就有过很多不方便，今天开始尝试在博客上写文章，分享我个人的学习和感悟，同时也能记录下我的学习经历。

&emsp;&emsp;最近我们开了门线性代数的课，所以想通过C语言来实现一个简单的矩阵运算库，虽然没有matlab那么强大，但也作为我第一篇博客的内容，算是一个很好的开头，记录我的学习历程，同时将这份快乐分享给大家。

# Hello World

&emsp;&emsp;既然是从C语言开始，当然就叫hello world了。废话不多说，我们从头开始。

## 矩阵的定义

>&emsp;&emsp;数学上，一个$$m \times n$$的矩阵是一个由m行n列元素排列成的矩形阵列。

&emsp;&emsp;因此，一个矩阵看上去应该是这个样子的：
$$
A_{m\times n} = \begin{pmatrix} a_{11}&a_{12}&\cdots&a_{1n}\\ a_{21}&a_{22}&\cdots&a_{2n}\\ \vdots&\vdots&\ddots&\vdots\\ a_{m1}&a_{m2}&\cdots&a_{mn} \end{pmatrix}
$$

### 如何去描述这个矩阵呢？
&emsp;&emsp;我是这么描述一个矩阵类型的：
```C
typedef struct matrix_t{
	double **p;			//数据指针
	int row;			//矩阵行数
	int col;			//矩阵列数
} *matrix;
```

&emsp;&emsp;可能稍微有些复杂，因此我将讲述我这一步步的改进过程。
<br/>
&emsp;&emsp;首先，我们声明一个简单的结构，用于表示我们的矩阵。
&emsp;&emsp;它最初的样子是这样的：

```C
struct matrix_t;
```

&emsp;&emsp;我们需要一段空间来存储矩阵的所有元素，因此需要用到二维数组，但是声明一个简单的数组是需要预先指定元素个数的。

&emsp;&emsp;为方便起见，我们先用宏声明两个字面常量`ROW`和`COL`，分别代表行数和列数。

```C
#define ROW 4
#define COL 3
struct matrix_t{
    double element[ROW][COL];
};
```

&emsp;&emsp;这就是一个简单的矩阵了！

&emsp;&emsp;矩阵的本质，不就是一个很简单的二维表吗？

&emsp;&emsp;但是！它有一个很大的缺陷，那就是一次编译中，矩阵的行数列数都只能是**相同**的，因此它并不能满足矩阵的一般描述。

&emsp;&emsp;那么，如何去定义一个行数列数可以随意指定的矩阵类型呢？
&emsp;&emsp;&emsp;&emsp;&emsp;![摸不着头脑](http://47.103.216.202/wp-content/uploads/2019/10/image-1569884780602.png)

&emsp;&emsp;在这里，我们引入**动态内存分配**的概念。

&emsp;&emsp;既然提到**动态**，那先要明白什么是**静态**。

&emsp;&emsp;其实最开始我们用于声明的数组就叫做**静态数组**，如下就是一个典型的静态数组的声明：

```C
int arr[20];
```

&emsp;&emsp;它声明了一个包含20个int元素的数组。其中，方括号内的20必须是个**常量**，要在编译前就指定，无法修改。就是这一点，使得我们的矩阵无法自由指定大小。

&emsp;&emsp;在这里不得不提一个东西，那就是**可变长数组VLA**，它是一个C99标准引入的特性，使得我们可以在运行时指定数组大小，这无疑是一个非常方便的特性。

&emsp;&emsp;但VLA的使用非常受到限制，最关键的是
<br/>
&emsp;&emsp;&emsp;<b><font size=5>VLA不能作为结构体、联合体的成员</font></b>
<br/><br/>

&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;![file](http://47.103.216.202/wp-content/uploads/2019/10/image-1569887507474.png)
<br/><br/>

&emsp;&emsp;详细内容请跳转至[C99可变长数组](https://blog.csdn.net/liaoshengshi/article/details/40016483)。
<br/>

&emsp;&emsp;在这里，我们需要给一个二级指针动态分配内存空间，我们将使用malloc()和free()函数，它们的函数原型如下定义：

```C
void* malloc(size_t size);
void free(void* ptr);
```

&emsp;&emsp;其中`malloc()`是申请内存，`free()`是释放内存。
&emsp;&emsp;调用malloc函数之后，如果运行正常，它会返回一个内存地址，你需要通过强制转换，将它转换成你想要的类型.
&emsp;&emsp;`size_t`实际上是一个unsigned类型变量，`size`即为你想要声明的内存空间大小，单位为字节。使用这两个函数之前，我们需要包含stdlib.h这个头文件。
&emsp;&emsp;用它来声明一个n个int元素的数组，一般可以这么写：
```C
int *arr = (int *)malloc(sizeof(int)*n);
```

&emsp;&emsp;但要注意，当我们使用完这段空间后，不要忘记释放它，否则会造成**内存泄漏**，虽然表面上看并什么大问题，而如果你考虑在一段循环的结构中运行，就会造成越来越多的空间被占用，这将会很糟糕。

### 改进矩阵结构体

&emsp;&emsp;有了动态分配的概念，我们就可以利用它来描述更一般情况下的矩阵。我们将对之前的定义进行改进，结果如下：
```C
struct matrix_t{
	double **p;
};
```

&emsp;&emsp;让我们仔细想想，只是这么一个指针，似乎还缺了些什么？
<br/>
&emsp;&emsp;&emsp;&emsp;&emsp;![file](http://47.103.216.202/wp-content/uploads/2019/10/image-1569889523959.png)
<br/>
&emsp;&emsp;&emsp;&emsp;&emsp;![file](http://47.103.216.202/wp-content/uploads/2019/10/image-1569889493867.png)
<br/>
&emsp;&emsp;&emsp;&emsp;&emsp;![file](http://47.103.216.202/wp-content/uploads/2019/10/image-1569889477742.png)
<br/>
&emsp;&emsp;当我们要将矩阵作为参数传给某个函数进行一些运算的时候，那个函数必须要能知道这个矩阵**行数和列数**，而指针只能表明数组是从哪里**开始**的，还有数组中每一个**元素的字节数**，并不包含**元素的个数**这样的信息。
&emsp;&emsp;所以我们需要将**行数**和**列数**作为矩阵的**属性**，而不是在开头用define定义的常量。
&emsp;&emsp;重新定义后的结构体是这样的：

```C
typedef struct matrix_t{
	double **p;			//数据指针
	int row;			//矩阵行数
	int col;			//矩阵列数
}matrix;
```

<br/>
&emsp;&emsp;<font size=4>是不是已经和最终的形态非常接近了呢？！</font>

&emsp;&emsp;&emsp;&emsp;![一模一样](http://47.103.216.202/wp-content/uploads/2019/10/same.jpg)
<br/>
&emsp;&emsp;<font size=4>当然还是有不同的啦，仔细找找看。</font>
<br/>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;![file](http://47.103.216.202/wp-content/uploads/2019/10/image-1569892105002.png)
<br/>
&emsp;&emsp;<font size=4>答案就是，我用typedef定义的别名matrix前有个星号。</font>
<br/>
&emsp;&emsp;&emsp;&emsp;![file](http://47.103.216.202/wp-content/uploads/2019/10/image-1569892544317.png)
<br/><br/>

&emsp;&emsp;那么它代表的是什么意思呢？
```C
typedef 结构体 *matrix;
```

&emsp;&emsp;其实是把他定义为指针类型了，也就是说`matrix`和`matrix_t *`是等价的。

&emsp;&emsp;但我们先不急着这么用，暂时先不加星号的方式定义，为了区分，我把不加星号的版本取名为vmatrix。

```C
typedef struct matrix_t{
	double **p;			//数据指针
	int row;			//矩阵行数
	int col;			//矩阵列数
}vmatrix;
```

## 矩阵的方法
&emsp;&emsp;现在我们基本上构思好了矩阵的结构，接下来我们就要给它加入一些基本的操作了。想想矩阵有哪些运算？加法减法数乘转置这些都是基本的，接下来我们会一个个地去实现。
### 矩阵的初始化和销毁
&emsp;&emsp;在定义各种运算之前，我们千万不要忘记，**这个矩阵目前只是一个框架，一个模板，还不能直接用！**就像你徒手画了一张电路图，但还没把它焊出来，当然用不了。
&emsp;&emsp;回想一下，我们将要使用二级指针来存储元素值，但还没有给它分配内存。所以我们还需要一步，就是**初始化**！
&emsp;&emsp;另外，在使用`malloc()`分配的内存在最后一定要释放掉，因此还需要一个**销毁**。

&emsp;&emsp;我就把这两个方法分别叫做`m_init()`和`m_del()`吧。现在，我们需要去考虑怎么定义函数原型了。
&emsp;&emsp;我们知道，`malloc()`函数会返回一个申请到的内存地址，而初始化的工作之一就是将这个地址值传出去，有这么两种方法：

1.返回值传递
```C
vmatrix *m_init(){
	return (vmatrix *)malloc(sizeof(vmatrix));
}
```

2.指针参数传递
```C
void m_init(vmatrix **m){
	*m = (vmatrix *)malloc(sizeof(vmatrix));
}
```

&emsp;&emsp;为什么需要传递二级指针？
&emsp;&emsp;让我们明确一点，C语言的函数参数是**值传递**，仅是由**实际参数**单向赋值给**形式参数**，在函数内，形式参数只是个拥有初始值的**局部变量**。我们为了把`malloc()`得到的地址————一级指针传出函数，当然需要用一个二级指针了。
&emsp;&emsp;我倾向于用第二种方法，因为返回值的位置是有特殊用处的，比如像`printf()`和`scanf()`，其实它们也是有返回值的，虽然我们平时不常用，但在某些场合它会派上很大用处，所以我一般性保留这个返回值，用于以后处理异常情况。
&emsp;&emsp;因此我会这么定义这两个函数原型：
```C
void m_init(vmatrix **m_ptr,int row,int col);
void m_del(vmatrix **m_ptr);
```

&emsp;&emsp;前面为了解决矩阵元素数量可变的问题，我们使用二级指针double \*\*p来指向元素列表。这里我将“矩阵指针”作为“矩阵”本身，然后用指向矩阵的二级指针来用于分配内存空间。