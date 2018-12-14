# 基于FPGA的简单时钟
数字逻辑project
## 说明
代码置于`/Simple-FPGA-Clock.srcs`里, 由于Vivado本身问题（几乎每一个操作，包括运行模拟和修改代码等，Vivado都会修改一大串日志和其他关联文件），建议新提交代码放在`/exchange_src`中，pull到本地后，在Vivado内import。
## Updates
### 0.0.2 数码管封装完成
* 尚未实现小数点和冒号的控制.  
* 数码管封装的test bench：  
    每个时钟上升沿跳一位，每8位跳回来第一位  
    ![scanner_tb](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/seg_assembly_tb.png)

### 0.0.1
完成了数码管scanner，下一步集成数码管译码器并封装
![scanner_tb](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/scanner_tb.png)
