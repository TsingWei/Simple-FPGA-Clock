# 基于FPGA的简单时钟
数字逻辑project
## Updates
### 0.0.2 数码管封装完成
* 尚未实现小数点和冒号的控制.  
* 数码管封装的test bench：  
    每个时钟上升沿跳一位，每8位跳回来第一位  
    ![scanner_tb](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/seg_assembly_tb.png)

### 0.0.1
完成了数码管scanner，下一步集成数码管译码器并封装
![scanner_tb](https://github.com/TsingWei/Simple-FPGA-Clock/blob/master/img/scanner_tb.png)
