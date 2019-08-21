<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seal.aspx.cs" Inherits="ZoomSeal.Sealservice.seal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>印章管理</title>
    <style type="text/css">
        body, div, ul, li, h2, h5, h6, form, input, p, td
        {
            margin: 0;
            padding: 0;
            font-size: 14px;
            list-style: none;
        }
        ul
        {
            list-style: none;
        }
        h2, h5, h6
        {
            font-size: 100%;
        }
        h2
        {
            color: #5b3510;
            padding-bottom: 10px;
            font-size: 14px;
        }
        p
        {
            color: #5b3510;
            line-height: 22px;
        }
        .mc
        {
            margin: 0 auto;
        }
        .fs-12
        {
            font-size: 12px;
        }
        a:focus
        {
            outline: 0;
        }
        a
        {
            blr: expression(this.onFocus=this.blur());
        }
        /* for IE7.0及以下版本*/:focus
        {
            outline-style: none;
        }
        /* for Firefox，IE8.0等 */　 table
        {
            border-collapse: collapse;
            border-spacing: 0;
        }
        body
        {
            font: 12px/1.6 "宋体" ,Arial, Helvetica, sans-serif;
            font-family: Verdana, Arial, Helvetica, sans-serif;
        }
        a
        {
            text-decoration: none;
            cursor: pointer;
            color: #666;
        }
        a:hover
        {
            text-decoration: none;
        }
        a:active, a:focus
        {
            outline: none;
        }
        .clearfix:after
        {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
            font-size: 0;
        }
        .clearfix
        {
            zoom: 1;
        }
        .clear
        {
            clear: both;
            height: 0;
            line-height: 0;
            font-size: 0;
        }
        .fl
        {
            float: left;
        }
        .fr
        {
            float: right;
        }
        .zz-contentRight
        {
            width: 1000px;
            height: auto !important;
            height: 452px;
            _height: expression(this.scrollHeight < 452 ? "652px" : "auto");
            min-height: 225px;
            margin: 0;
            padding-bottom: 50px;
        }
        /*head----------------------------------style*/
        .zz-headBox
        {
            width: 100%;
            height:80px;
        }
        .zz-head
        {
            width: 986px;
        }
        .zz-head .logo
        {
            width: 450px;
            height: 41px;
            padding-top: 30px;
        }
        .zz-head .headRight
        {
            width: 248px;
        }
        .zz-head .headRight
        {
            width: 493px;
            height: 78px;
            background-color: Gray;
        }
        .zz-head .headRight
        {
            width: 140px;
            height: 24px;
            background-color: Gray;
            margin: 0 10px 0 0;
            _margin: 0 5px 0 0;
        }
        .zz-head .headRight ul
        {
            width: 130px;
        }
        .zz-head .headRight ul li
        {
            width: 42px;
            height: 14px;
            line-height: 14px;
            margin-top: 5px;
            float: left;
            text-align: center;
            border-left: 1px solid #999;
        }
        .zz-head .headRight ul li.bor
        {
            border: none;
        }
        .zz-head .headRight ul li a
        {
            color: #656565;
            text-decoration: none;
        }
        .zz-head .headRight ul li a:hover
        {
            color: #656565;
            text-decoration: none;
        }
        /*head right*/
        .head-rightUl
        {
            width: 220px;
            margin-top: 35px;
        }
        .head-rightUl li
        {
            width: 100px;
            height: 42px;
            line-height: 14px;
            float: left;
            text-align: center;
        }
        .head-rightUl li.select {
	
	        border-bottom: 3px solid #1c84c6;
        }
        .head-rightUl li.select a{
	color:#1c84c6;
}


        /*a title*/
.topTitle {
	width: 100%;
	height: 28px;
	background: #00517e;
}

.topTitle ul {
	width: 986px;
	margin: 0 auto;
}

.topTitle ul li {
	overflow: hidden;
	padding: 0 16px;
	margin-top: 7px;
	float: left;
	line-height: 16px;
	color: #fff;
	border-left: 1px solid #2d7ca7;
}

.topTitle ul li.pd-left {
	border: none;
	padding-left: 0;
	color: #d0eaf8;
}

.topTitle ul li font {
	font-size: 12px;
	font-weight: bold;
	margin-right: 10px;
	color: #d0eaf8;
}

/*left*/
.left-ul {
	width: 162px;
	border: 1px solid #a4c8de;
}

.left-ul h2 {
	width: 162px;
	height: 34px;
	line-height: 34px;
	text-indent: 10px;
	background: #6096b2;
	padding: 0;
	color: #fff;
}

.left-ul li {
	width: 162px;
	height: 34px;
	margin: 0;
	padding: 0;
	line-height: 34px;
	background: #edf8fe;
	border-bottom: 1px solid #a4c8de;
	display: block;
	text-indent: 10px;
}

.left-ul li.bo-n {
	border-bottom: none;
}

.left-ul li a {
	text-decoration: none;
	display: block;
}

.left-ul li a:hover {
	text-decoration: none;
	background: #d0eaf7;
	display: block;
}

.zz-content {
	width: 986px;
	position: relative;
}

.zz-content.pd-28 {
	padding: 28px 0;
}

/*图片居中*/ /*图片居中*/
.frame {
	margin: 2px auto;
	height: 230px;
	width: 230px;
	overflow: hidden;
	background: white;
	position: static !important;
	position: relative;
	display: table !important;
	top: 0px;
	left: 0px;
	border: solid 1px #999;
}

/* 图片居中结束*/
.addtr {
	text-align: center;
	color: #333333;
	font-size: 12px;
}

.spanAdd {
	font-size: 14px;
}

.inputAdd {
	font-size: 14px;
	width: 260px;
	height:30px;
}

.titleAdd {
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	border-bottom: dotted 1px #ccc;
	color:#666;
	height:25px;
}

.sealAdd {
	width: 70px;
	text-align: left;
}

.box{ position: absolute; width:260px; height:260px;  }

#topDiv{}
#topDiv a{ color:white}

table td{font-size:14px;}
table th{border:solid 1px #E7E7E7;}

.btn {background-color:#428bca; cursor:pointer;display:inline-block;text-align:center; line-height:32px;  color: white; border: solid 3px  #428bca; height:32px; width:100px;}
.btn :link    {background-color:#428bca;}
.btn :visited {background-color:#428bca;}
.btn :hover   {background-color:#1b6aaa;}

.btn2 {background-color:#23c6c8; cursor:pointer;display:inline-block;text-align:center; line-height:32px;  color: white; border: solid 3px  #23c6c8; height:32px; width:100px;}
.btn2 :link    {background-color:#23c6c8;}
.btn2 :visited {background-color:#23c6c8;}
.btn2 :hover   {background-color:#1b6aaa;}
    </style>

    <script type="text/javascript">
        //显示列表
        function ShowList() {
            if ('<%=flg %>'.toLowerCase()=="true") {
                document.getElementById("deleteAll").style.display = "none";
                document.getElementById("listDiv").style.display = "";
                document.getElementById("addDiv").style.display = "none";
                document.getElementById("addLi").classList.remove('select');
                document.getElementById("listLi").classList.add('select');
            }
            else{
                ShowDelAll();
            }
        }

        //显示添加印章信息
        function ShowAdd() {
            document.getElementById("deleteAll").style.display = "none";
            document.getElementById("addDiv").style.display = "";
            document.getElementById("listDiv").style.display = "none";
            document.getElementById("addLi").classList.add('select');
            document.getElementById("listLi").classList.remove('select');
        }

        //无印章时显示印章信息
        function ShowDelAll() {
            document.getElementById("deleteAll").style.display = "";
            document.getElementById("listDiv").style.display = "none";
            document.getElementById("addDiv").style.display = "none";
            document.getElementById("addLi").classList.remove('select');
            document.getElementById("listLi").classList.add('select');
        }

        function showSealImg(obj,v){

            //alert(v);
            var x,y;  
				oRect = obj.getBoundingClientRect();  
				x=oRect.left;  
				y=oRect.top;
				//alert("("+x+","+y+")");
            //document.getElementById("img_seal").src = document.getElementById("ipt_sealImgCode_" + v).value;

            				document.getElementById("img_seal").src= "data:image/jpg;base64,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";


				document.getElementById("sealImgDiv").style.top = y - 7 + "px";
				document.getElementById("sealImgDiv").style.left = x + 120 + "px";
				document.getElementById("sealImgDiv").style.display = "block";
				document.getElementById("idDiv").innerHTML = "编号："+v;


		}


    </script>

</head>
<body>
    <form id="form1" runat="server">

        <div id="topDiv" style="background-color:#1c84c6;height:45px;">
			<div style="max-width:1020px;margin:0 auto;color:white;">
				<div style="width:200px; float:left;margin-top:9px;font-size:16px;">&nbsp;&nbsp;&nbsp;电子印章简易管理平台</div>
				<div style="width:200px; float:right;margin-top:12px;">&nbsp;&nbsp;&nbsp;
					管理员：[<asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>]

                    <a href="#">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">退出</asp:LinkButton></a>


				</div>
			</div>
		</div>


    		<!--header-->
		<div class="zz-headBox clearfix">
			<div class="zz-head mc">
				<!--logo-->
				<div class="logo fl">
					
				</div>
				<!--logo end-->
				<ul class="head-rightUl fr">
					<li id="addLi"><a href="#" onclick="ShowAdd();">新建印章</a></li>
					<li id="listLi" class="select"><a href="#" onclick="ShowList()">印章列表</a></li>
				</ul>
			</div>
		</div>
		<!--header end-->




    
    <!--header-->

    <!--header end-->
    <!--a title-->
<%--    <div class=" topTitle">
        <ul>
            <li class="pd-left">印章管理系统</li>
            <li><font>当前用户：</font><asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label></li>
            <li><font>当前系统日期：</font><asp:Label ID="lblNowTime" runat="server" Text="Label"></asp:Label></li>
        </ul>
    </div>--%>
    <!--content-->
        
    <div style="border-top:solid 1px #ccc;">
        <!--right-->
        <div  id="listDiv" style="max-width:1000px;margin:0 auto;margin-top:20px;width: 980px;text-align:left">
            <!--表格内容-->
            
                <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting"
                    OnRowDataBound="GridView1_RowDataBound" BackColor="White" BorderColor="White" 
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3"  Width="100%">
                    <RowStyle ForeColor="#666666" BorderColor="#E7E7E7" BorderStyle="Solid" BorderWidth="1px"  />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="编号">
                            <HeaderStyle Font-Bold="True" Font-Names="宋体" Font-Size="12px" Height="32" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="120px" />
                            <ItemStyle HorizontalAlign="left" Height="32" BorderColor="#E7E7E7" BorderStyle="Solid"
                                BorderWidth="1px" />
                        </asp:BoundField>


                        
                        <asp:ButtonField DataTextField="SealName"    HeaderText="印章名称"      >
                            <ControlStyle Font-Size="10pt" Width="200px"  />
                            <FooterStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <HeaderStyle Font-Bold="True" Font-Names="宋体" Font-Size="12px" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="160px" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" BorderColor="#E7E7E7" BorderStyle="Solid"
                                BorderWidth="1px"  ForeColor="#3366CC"    />

                        </asp:ButtonField>


                        
                        

                        <%--<asp:BoundField DataField="SealImageType" HeaderText="印章名称">
                            <ControlStyle Font-Size="10pt" Width="200px" />
                            <FooterStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <HeaderStyle Font-Bold="True" Font-Names="宋体" Font-Size="12px" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="160px" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" BorderColor="#E7E7E7" BorderStyle="Solid"
                                BorderWidth="1px"  />
                       
                            
                        </asp:BoundField>--%>

                        

                        
                        <asp:BoundField DataField="SealType" HeaderText="印章类型">
                            <ControlStyle Font-Size="10pt" Width="60px" />
                            <HeaderStyle Font-Bold="True" Font-Names="宋体" Font-Size="12px" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="100px" />
                            <ItemStyle BorderColor="#E7E7E7" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DeptName" HeaderText="部门名称">
                            <ControlStyle Font-Size="10pt" />
                            <HeaderStyle Font-Bold="True" Font-Names="宋体" Font-Size="12px" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="140px" />
                            <ItemStyle BorderColor="#E7E7E7" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Status" HeaderText="印章状态">
                            <ControlStyle Font-Size="10pt" />
                            <HeaderStyle Font-Bold="True" Font-Names="宋体" Font-Size="12px" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="100px" />
                            <ItemStyle BorderColor="#E7E7E7" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SignerName" HeaderText="签章人">
                            <ControlStyle Font-Size="10pt" />
                            <HeaderStyle Font-Bold="True" Font-Names="宋体" Font-Size="12px" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="120px" />
                            <ItemStyle BorderColor="#E7E7E7" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="left" />
                        </asp:BoundField>
                        <asp:CommandField CancelText="" EditText="" InsertText="" NewText="" SelectText=""
                            ShowCancelButton="False" ShowDeleteButton="True" UpdateText="" HeaderText="操作">
                            <HeaderStyle Font-Names="宋体" Font-Size="12px" HorizontalAlign="left" VerticalAlign="Middle"
                                Width="60px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#3366CC" BorderColor="#E7E7E7"
                                BorderStyle="Solid" BorderWidth="1px" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#F5F5F5" Font-Bold="True" ForeColor="#666666" />
                    <EditRowStyle BorderColor="#E7E7E7" />
                </asp:GridView>
            <div id="totalTxt" style="text-align:left;color:#666;line-height:40px;">共多少条</div>
            
        </div>


        <div id="addDiv"
					style="display: none; max-width:1000px;margin:0 auto;margin-top:20px; border: solid 1px #E7E7E7;border-radius:3px;  text-align: center; width: 980px; vertical-align: middle;">

            <!--表格内容-->
            
                <table style="margin: 50px 80px 50px 80px; height:320px;" >
                    <!-添加印章-->
                    <tr class="addtr">
                        <td colspan="2" style="vertical-align: top;width: 420px;">
                            <div class="titleAdd">印章信息</div>
                        </td>
                        <td rowspan="5" style="text-align: center; width: 420px; padding-left: 50px;">
                            <div class="frame">
                                <table style="height: 200px; width:200px; margin:10px auto;  ">
                                    <tr>
                                        <td style="text-align: center; vertical-align: middle;">
                                            <asp:Image ID="Image1" runat="server" Style="vertical-align: middle;max-width:190px;" />
                                        </td>
                                    </tr>
                                </table>
                            </div>

                            <div style="text-align:center; ">

										<asp:FileUpload ID="FileUpload1" runat="server" Width="170px" Height="24px" />
                                        &nbsp;<asp:Button ID="Button1" runat="server" Text="上传" Width="60px" Height="24px" OnClick="btnAddPic_Click"  />

									
								</div>



                        </td>
                    </tr>
                    <tr class="addtr">
                        <td class="sealAdd">
                            <span class="spanAdd">印章名称</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSealName" runat="server" CssClass="inputAdd"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="addtr">
                        <td class="sealAdd">
                            <span class="spanAdd">签&nbsp;章&nbsp;人</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSignerName" runat="server" CssClass="inputAdd"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="addtr">
							<td class="sealAdd">
							<span class="spanAdd">部门名称</span>
							</td>
							<td>
								<asp:TextBox ID="txtSignerName333" runat="server" CssClass="inputAdd"></asp:TextBox>
							</td>
						</tr>



                    <tr class="addtr">
                        <td class="sealAdd">
                            <span class="spanAdd">印章类型</span>
                        </td>
                        <td>
                            <asp:DropDownList ID="dropSealType" runat="server"  Width="260px" Height="28px">
                                <asp:ListItem>印章</asp:ListItem>
                                <asp:ListItem>手写</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr class="addtr">
                        <td colspan="2" style="text-align: center; vertical-align: bottom; height:60px; ">
                            <input id="Reset1" class="btn2" type="reset" style="" value="重置" />
                            <asp:Button ID="btnAddSeal" class="btn" runat="server"  Text="添加印章" 
                                OnClick="btnAddSeal_Click" TabIndex="5" />&nbsp;&nbsp;&nbsp;&nbsp;
                            
                        </td>
                        <%--<td colspan="2"
								style="text-align: center; vertical-align: bottom; height:60px; ">
                            <asp:FileUpload ID="FileUpload1" runat="server"  />
                            &nbsp;<asp:Button ID="btnAddPic" runat="server" Text="上传"  OnClick="btnAddPic_Click" />
                        </td>--%>
                    </tr>
                </table>
         
        </div>


        <div  id="deleteAll" style="display: none;max-width:1000px;margin:0 auto;margin-top:20px;width: 980px;">
            <!--表格内容-->
            
                <table cellspacing="0" cellpadding="3" rules="all" border="1"
					style="background-color: White; text-align:left; border-color: #E7E7E7; border-width: 1px; border-style: solid; font-size: 14px;  width: 100%; border-collapse: collapse;">
                    <tr style="color: #666; background-color: #F5F5F5; font-weight: bold; height: 40px;">
                        <th scope="col" style="width: 100px;">
                            编号
                        </th>
                        <th scope="col" style="width: 160px;">
                            印章名称
                        </th>
                        <th scope="col" style="width: 100px;">
                            印章类型
                        </th>
                        <th scope="col" style="width: 140px;">
                            部门名称
                        </th>
                        <th scope="col" style="width: 100px;">
                            印章状态
                        </th>
                        <th scope="col" style="width: 120px;">
                            签章人
                        </th>
                        <th scope="col" style="width: 80px;">
                            操作
                        </th>
                    </tr>
                    <tr style="color: #000066; height: 32px;">
                        <td colspan="7" style="text-align: center; color: #666666">
                            无印章。
                        </td>
                    </tr>
                </table>
           
        </div>
    </div>
    <!--content end-->
    </form>



    <!-- 印章图片 -->
		<div id="sealImgDiv" class="box" style="display:none; ">
			<div style="text-align:left; float:left; width:212px; height:212px; border: 1px solid #a4c8de;background-color:white;box-shadow: 5px 5px 5px #ccc; border-radius:5px; ">
				<div style=" height:20px;color:#666;  " >
					<div id="idDiv" style="width:80px; float:left; font-size:12px; margin:3px 0 0 5px; " >
						
					</div>
					<div style="width:16px; float:right;  " >
						<a href="javascript:void(0);" onclick='document.getElementById("sealImgDiv").style.display = "none";'>x</a>
					</div>
				</div>
				<div style="position: relative;  width: 210px;height: 190px;">
					<img id="img_seal" style=" position: absolute; top:50%; left:50%; transform: translate(-50%,-50%); max-width:190px; " src="http://10.61.0.220/Samples/images/li.gif" />
				</div>
			</div>
		</div>
		<!--content end-->




    <script type="text/javascript">
			var recordCount = document.getElementById("GridView1").rows.length - 1;
			document.getElementById("totalTxt").innerHTML = "共计 "+recordCount+" 条记录";
		</script>

</body>
</html>
