<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DemoIntro.ascx.cs" Inherits="nilnul.proj._web.DemoIntro" %>




<h1>摘要：</h1>
<p>
    项目管理是企业组织管理的一种模式，对于组织管理、业务流程优化等具有普遍意义。传统的项目管理方法如PERT和CPM只能处理确定的工期，当遇到不确定性时，需要用其数学期望来转化为确定性的问题；得到的数据比较单薄。本研究采用模拟的方法来得到项目管理的经验分布，包含了重要的数字特征如悲观、乐观、最可能、期望值；系统采用基于Web Service的方式，利于跨网络的协同模拟，也方便用户使用。</p>
<p>
    <a href="<%=demoUrl %>">模拟结果界面</a></p>
<p>
    论文：基于Web的项目管理模拟研究.计算机科学.(待刊)</p>
<h1>说明：&nbsp;</h1>
<p>
    传统的项目管理方法（比如PERT和CPM）是根据任务的概率分布来估计每个任务的期望工期。再根据期望工期来计算关键路径，从而估计整个项目的项目工期。</p>
<p>
    这种方法的问题有：</p>
<p>
    1）项目工期的估计应该根据整个项目的分布来计算。每个任务服从概率分布，但由于任务的前后关系形成复杂的网格，所以并不能解析推导出整个项目的概率分布。而本研究采用模拟的方法，对每个任务进行抽样，再对每个抽样计算项目的关键路径和工期；反复多次，进而可以估计整个项目的概率分布。根据项目的概率分布计算项目工期比传统方法更科学。事实上，传统方法的关键路径是不变的，而采用模拟方法会发现不同抽样中关键路径也是可变的 。</p>
<p>
    2）传统方法只估计一个期望值，显得过于单薄。而模拟方法可以给出分布，能给我们更充分和贴切的信息。比如，利用模拟我们可以得到项目的乐观工期和悲观工期。</p>
<p>
    在本研究我们把模拟方法应用于项目管理。我们还利用SVG+JS方法，使得模拟可以在网页（包括手机中的浏览）中进行。这相对于传统模拟软件来讲，能够使得模拟用户无需安装专用软件就可以在线进行模拟。这种基于B/S的富客户端模拟平台还为将来多用户共享模拟模型提供了一个技术框架。</p>
<p>
    我们在本研究中采用了如下单代号图示的项目作为示例：</p>
<p>
    <img alt="project graph" class="auto-style1" src="_page/projGraph.jpg" /></p>
<p>
    其中，各任务的最乐观完成时间t<sub>o</sub>,最可能完成时间t<sub>e</sub>，最悲观完成时间t<sub>p</sub>如下表。t<sub>e</sub>是根据PERT方法估算的期望工期。</p>
<div align="center">
    <table border="1" cellpadding="0" cellspacing="0" class="auto-style2" style="mso-border-alt: double black 2.25pt; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .75pt solid black; mso-border-insidev: .75pt solid black" width="397">
        <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
            <td style="width:22.08%;border-top:double 2.25pt;
  border-left:double 2.25pt;border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  border-color:black;mso-border-top-alt:double 2.25pt;mso-border-left-alt:double 2.25pt;
  mso-border-bottom-alt:solid .75pt;mso-border-right-alt:solid .75pt;
  mso-border-color-alt:black;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="22%">
                <p align="center" class="MsoNormal">
                    <b><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;Task</o:p></span></b></p>
            </td>
            <td style="width:9.96%;border-top:double black 2.25pt;
  border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-top-alt:double black 2.25pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="9%">
                <p align="center" class="MsoNormal">
                    <b><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">t<sub>o</sub></span></b><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:13.8%;border-top:double black 2.25pt;
  border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-top-alt:double black 2.25pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="13%">
                <p align="center" class="MsoNormal">
                    <b><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">t<sub>m</sub></span></b><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:double black 2.25pt;
  border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-top-alt:double black 2.25pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <b><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">t<sub>p</sub></span></b><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:double black 2.25pt;
  border-left:none;border-bottom:solid black 1.0pt;border-right:double black 2.25pt;
  mso-border-left-alt:solid black .75pt;mso-border-top-alt:double 2.25pt;
  mso-border-left-alt:solid .75pt;mso-border-bottom-alt:solid .75pt;mso-border-right-alt:
  double 2.25pt;mso-border-color-alt:black;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <b><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">t<sub>e<o:p></o:p></sub></span></b></p>
            </td>
        </tr>
        <tr style="mso-yfti-irow:1">
            <td style="width:22.08%;border-top:none;border-left:
  double black 2.25pt;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-left-alt:double black 2.25pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="22%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">2<o:p></o:p></span></p>
            </td>
            <td style="width:9.96%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="9%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">3</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:13.8%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="13%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">12</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">21</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:double black 2.25pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:double black 2.25pt;
  padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">12<o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="mso-yfti-irow:2">
            <td style="width:22.08%;border-top:none;border-left:
  double black 2.25pt;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-left-alt:double black 2.25pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="22%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">5<o:p></o:p></span></p>
            </td>
            <td style="width:9.96%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="9%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">6</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:13.8%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="13%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">15</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">30</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:double black 2.25pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:double black 2.25pt;
  padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">16<o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="mso-yfti-irow:3">
            <td style="width:22.08%;border-top:none;border-left:
  double black 2.25pt;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-left-alt:double black 2.25pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="22%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">1<o:p></o:p></span></p>
            </td>
            <td style="width:9.96%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="9%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">2</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:13.8%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="13%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">5</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">14</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:double black 2.25pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:double black 2.25pt;
  padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">6<o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="mso-yfti-irow:4">
            <td style="width:22.08%;border-top:none;border-left:
  double black 2.25pt;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-left-alt:double black 2.25pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="22%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">3<o:p></o:p></span></p>
            </td>
            <td style="width:9.96%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="9%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">5</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:13.8%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="13%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">14</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">17</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:double black 2.25pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:double black 2.25pt;
  padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">13<o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="mso-yfti-irow:5">
            <td style="width:22.08%;border-top:none;border-left:
  double black 2.25pt;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-left-alt:double black 2.25pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="22%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">4<o:p></o:p></span></p>
            </td>
            <td style="width:9.96%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="9%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">2</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:13.8%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="13%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">5</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">8</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:double black 2.25pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:double black 2.25pt;
  padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">5<o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="mso-yfti-irow:6;mso-yfti-lastrow:yes">
            <td style="width:22.08%;border-top:none;border-left:
  double black 2.25pt;border-bottom:double black 2.25pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-top-alt:solid .75pt;
  mso-border-left-alt:double 2.25pt;mso-border-bottom-alt:double 2.25pt;
  mso-border-right-alt:solid .75pt;mso-border-color-alt:black;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="22%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">6<o:p></o:p></span></p>
            </td>
            <td style="width:9.96%;border-top:none;border-left:
  none;border-bottom:double black 2.25pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;mso-border-bottom-alt:double black 2.25pt;
  padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="9%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">1</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:13.8%;border-top:none;border-left:
  none;border-bottom:double black 2.25pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;mso-border-bottom-alt:double black 2.25pt;
  padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="13%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">4</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:double black 2.25pt;border-right:solid black 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  mso-border-alt:solid black .75pt;mso-border-bottom-alt:double black 2.25pt;
  padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">7</span><span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
  宋体"><o:p></o:p></span></p>
            </td>
            <td style="width:16.02%;border-top:none;border-left:
  none;border-bottom:double black 2.25pt;border-right:double black 2.25pt;
  mso-border-top-alt:solid black .75pt;mso-border-left-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="16%">
                <p align="center" class="MsoNormal">
                    <span lang="EN-US" style="font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;">4<o:p></o:p></span></p>
            </td>
        </tr>
    </table>
</div>
<p>
    我们利用最乐观完成时间t<sub>o</sub>,最可能完成时间t<sub>e</sub>，最悲观完成事件t<sub>p</sub>为每个任务拟合一个Beta分布（参见我们论文的参考文献）。</p>
<p>
    然后进行多次抽样，计算关键路径进而计算整个项目的工期。再利用抽样来估算项目工期的概率分布。我们采用AJAX技术从服务器取回抽样数据，然后利用SVG绘制抽样数据的分布。<a href="_page/Demo_ajax1d.aspx">点击这里</a>可以看到抽样数据的分布（由于每次抽样为随机，所以每次刷新会看到不同的抽样结果）。注意其运行需要支持SVG和ECMAScript的浏览器，比如IE10，Chrome最新版本,FireFox最新版本等.</p>
<p>
    利用PERT方法估计的项目工期为28。利用我们的方法不但可以估计期望工期，还可以估计整个分布进而估计项目工期的乐观和悲观值。我们的多次模拟表明期望工期为28多一点，基本与PERT方法一致。但如果项目中任务网格比较复杂的话，这两个值可能差别较大（考虑不同抽样甚至可能导致关键路径发生变化）。</p>

