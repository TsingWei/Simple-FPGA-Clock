# Simple-FPGA-Clock 基于FPGA的简单时钟
* A SUSTech Digital Design 2018 fall project  
* Based on: MINISYS Artix-7 FPGA platform  (XC7a100t-1-fgg484)
* Using: Vivado HLS
## 设计规范
### 变量命名
* 时钟: clk
* 复位: rst ~~低电平有效~~  `高电平`
* 使能: en ~~低电平有效~~ `高电平`
* 进位输出: cout 
* 控制使能: ctrl_en ~~低电平有效~~ `高电平`
* 诸如此类...
## 说明
代码置于`/Simple-FPGA-Clock.srcs`里, 由于Vivado本身问题（几乎每一个操作，包括运行模拟和修改代码等，Vivado都会修改一大串日志和其他关联文件），建议新提交代码放在`/exchange_src`中，pull到本地后，在Vivado内import。
## Updates

### 0.1.0 Compelete(With few bugs)
* Top levlel design:
    ![top.png](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/top.png)
* Clock module:
    ![clk.png](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/clk_mod.png)

### 0.0.7 新的时钟总成完成,带置位功能
* ![on_board_1.png](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/new_clock.png)
### 0.0.6 蜂鸣器完成,走时电路正常,置位功能尚未测试
* 暂定500hz测试,至少能响了.
* 之前理所当然写的500hz分频器有问题,虽然是输出500hz的脉冲,但是占空比非常小,看实现原理就知道了,之前就是数够200000次就输出高,下一个clk就恢复低,所以占空比非常低,有点类似电压特别低的PWM的意思,所以蜂鸣器不出声,接到led灯也不亮(等价几mV的电压能亮么). 于是修改了一下把占空比改为50%,果然出声.
* 前面的分频器也要排查一下,看看是不是需要占空比50%的时钟输出.
* 板上测试的数码管扫描器直接用的上面蜂鸣器的500hz时钟,有点慢,人眼能直接看出闪烁,需要加高.
### 0.0.5 数码管总成完成
* 经过板上验证,扫描频率并不是越高越好.当扫描时钟直接接到板载100Mhz晶振时,数码管非常暗淡,并且显示不正确. 经过多次调试,扫描频率至少要放慢5个量级(1Khz),才能显示正常.
    ![on_board_1.png](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/on_board_1.jpg)
### 0.0.4 scanner bug修复
* 尝试将上一版本的数码管总成烧入板子上运行检查数码管运行情况，发现没反应，还以为是板子问题，烧了一个简单的亮灯小程序，运行正常。遂回头检查seg_assembly.v文件。经过简单的行为模拟，运行正常无问题。于是进行post-synthesis行为模拟，蹊跷的事情出现了，输出en和seg_sw始终为ff：
* ![post-syn-sim-fail](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/post-syn-sim-fail.PNG)
* 照理说他应该实现“八个循环跑马灯”
* 现在的情况是，简单行为模拟和综合后行为模拟出来的结果截然不同。由于assmbly文件只是集成数码管译码器和数码管扫描器，本身几乎没有什么逻辑代码，而且译码器在前几次的project中是确定可用的，那么这时候就应该到scanner里面找bug。经过检查，scanner内部有两个always语句块：
    always@(xxx) begin
        ...
    end
    always@(xxx) begin
        ...
    end
* 原本写这个的时候以为这两个块是并行执行，分开写能让逻辑清晰一点。不过他们是可以合并起来的，免得造成莫名其妙的错误，遂合并。
* 合并后，综合后模拟和简单模拟结果终于一致。
    ![post-syn-sim-pass](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/post-syn-sim-pass.PNG)
### 0.0.3 60计数器和24计数器完成
* 且通过test bench
* counter60:  
    ![c60](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/counter60_tb.png)
* counter24:  
    ![c24](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/counter24_tb.png)
### 0.0.2 数码管封装完成
* 尚未实现小数点和冒号的控制.  
* 数码管封装的test bench：  
    每个时钟上升沿跳一位，每8位跳回来第一位  
    ![scanner_tb](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/seg_assembly_tb.png)

### 0.0.1
* 完成了数码管scanner，下一步集成数码管译码器并封装
* ![scanner_tb](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/scanner_tb.png)
