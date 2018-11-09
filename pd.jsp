<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>


<body  style="background:url(./img/w1.jpg); background-size:100%";
onload="init()"> 

<!--bootstrap：搜索框 -->

<div class="container"  type='text'  align="center"  />

<select id="province" size=1 onchange="getCity()"> <!-- 下拉框1号 -->
<option value= 0 >北京</option> 
<option value= 1 >上海</option> 
<option value= 2 >天津</option> 
<option value= 3 >重庆</option> 
<option value= 4 >河北</option> 
<option value= 5 >山西</option> 
<option value= 6 >内蒙古</option> 
<option value= 7 >辽宁</option> 
<option value= 8 >吉林</option> 
<option value= 9 >黑龙江</option> 
<option value= 10 >江苏</option> 
<option value= 11 >浙江</option> 
<option value= 12 >安徽</option> 
<option value= 13 >福建</option> 
<option value= 14 >江西</option> 
<option value= 15 >山东</option> 
<option value= 16 >河南</option> 
<option value= 17 >湖北</option> 
<option value= 18 >湖南</option> 
<option value= 19 >广东</option> 
<option value= 20 >广西</option> 
<option value= 21 >海南</option> 
<option value= 22 >四川</option> 
<option value= 23 >贵州</option> 
<option value= 24 >云南</option> 
<option value= 25 >西藏</option> 
<option value= 26 >陕西</option> 
<option value= 27 >甘肃</option> 
<option value= 28 >宁夏</option> 
<option value= 29 >青海</option> 
<option value= 30 >新疆</option> 
<option value= 31 >香港</option> 
<option value= 32 >澳门</option> 
<option value= 33 >台湾</option> 
</select>
 
<select id="city" style="width:60px" id="xialakuang" onchange="xialakuang()"> <!-- 下拉框2号 -->
</select> 
<script> 
var arr = new  Array();
arr[0 ]="东城,西城,崇文,宣武,朝阳,丰台,石景山,海淀,门头沟,房山,通州,顺义,昌平,大兴,平谷,怀柔,密云,延庆" 
arr[1 ]="黄浦,卢湾,徐汇,长宁,静安,普陀,闸北,虹口,杨浦,闵行,宝山,嘉定,浦东,金山,松江,青浦,南汇,奉贤,崇明" 
arr[2 ]="和平,东丽,河东,西青,河西,津南,南开,北辰,河北,武清,红挢,塘沽,汉沽,大港,宁河,静海,宝坻,蓟县" 
arr[3 ]="万州,涪陵,渝中,大渡口,江北,沙坪坝,九龙坡,南岸,北碚,万盛,双挢,渝北,巴南,黔江,长寿,綦江,潼南,铜梁,大足,荣昌,壁山,梁平,城口,丰都,垫江,武隆,忠县,开县,云阳,奉节,巫山,巫溪,石柱,秀山,酉阳,彭水,江津,合川,永川,南川" 
arr[4 ]="石家庄,邯郸,邢台,保定,张家口,承德,廊坊,唐山,秦皇岛,沧州,衡水" 
arr[5 ]="太原,大同,阳泉,长治,晋城,朔州,吕梁,忻州,晋中,临汾,运城" 
arr[6 ]="呼和浩特,包头,乌海,赤峰,呼伦贝尔盟,阿拉善盟,哲里木盟,兴安盟,乌兰察布盟,锡林郭勒盟,巴彦淖尔盟,伊克昭盟" 
arr[7 ]="沈阳,大连,鞍山,抚顺,本溪,丹东,锦州,营口,阜新,辽阳,盘锦,铁岭,朝阳,葫芦岛" 
arr[8 ]="长春,吉林,四平,辽源,通化,白山,松原,白城,延边" 
arr[9 ]="哈尔滨,齐齐哈尔,牡丹江,佳木斯,大庆,绥化,鹤岗,鸡西,黑河,双鸭山,伊春,七台河,大兴安岭" 
arr[10 ]="南京,镇江,苏州,南通,扬州,盐城,徐州,连云港,常州,无锡,宿迁,泰州,淮安" 
arr[11 ]="杭州,宁波,温州,嘉兴,湖州,绍兴,金华,衢州,舟山,台州,丽水" 
arr[12 ]="合肥,芜湖,蚌埠,马鞍山,淮北,铜陵,安庆,黄山,滁州,宿州,池州,淮南,巢湖,阜阳,六安,宣城,亳州" 
arr[13 ]="福州,厦门,莆田,三明,泉州,漳州,南平,龙岩,宁德" 
arr[14 ]="南昌市,景德镇,九江,鹰潭,萍乡,新馀,赣州,吉安,宜春,抚州,上饶" 
arr[15 ]="济南,青岛,淄博,枣庄,东营,烟台,潍坊,济宁,泰安,威海,日照,莱芜,临沂,德州,聊城,滨州,菏泽" 
arr[16 ]="郑州,开封,洛阳,平顶山,安阳,鹤壁,新乡,焦作,濮阳,许昌,漯河,三门峡,南阳,商丘,信阳,周口,驻马店,济源" 
arr[17 ]="武汉,宜昌,荆州,襄樊,黄石,荆门,黄冈,十堰,恩施,潜江,天门,仙桃,随州,咸宁,孝感,鄂州" 
arr[18 ]="长沙,常德,株洲,湘潭,衡阳,岳阳,邵阳,益阳,娄底,怀化,郴州,永州,湘西,张家界" 
arr[19 ]="广州,深圳,珠海,汕头,东莞,中山,佛山,韶关,江门,湛江,茂名,肇庆,惠州,梅州,汕尾,河源,阳江,清远,潮州,揭阳,云浮" 
arr[20 ]="南宁,柳州,桂林,梧州,北海,防城港,钦州,贵港,玉林,南宁地区,柳州地区,贺州,百色,河池" 
arr[21 ]="海口,三亚" 
arr[22 ]="成都,绵阳,德阳,自贡,攀枝花,广元,内江,乐山,南充,宜宾,广安,达川,雅安,眉山,甘孜,凉山,泸州" 
arr[23 ]="贵阳,六盘水,遵义,安顺,铜仁,黔西南,毕节,黔东南,黔南" 
arr[24 ]="昆明,大理,曲靖,玉溪,昭通,楚雄,红河,文山,思茅,西双版纳,保山,德宏,丽江,怒江,迪庆,临沧" 
arr[25 ]="拉萨,日喀则,山南,林芝,昌都,阿里,那曲" 
arr[26 ]="西安,宝鸡,咸阳,铜川,渭南,延安,榆林,汉中,安康,商洛" 
arr[27 ]="兰州,嘉峪关,金昌,白银,天水,酒泉,张掖,武威,定西,陇南,平凉,庆阳,临夏,甘南" 
arr[28 ]="银川,石嘴山,吴忠,固原" 
arr[29 ]="西宁,海东,海南,海北,黄南,玉树,果洛,海西" 
arr[30 ]="乌鲁木齐,石河子,克拉玛依,伊犁,巴音郭勒,昌吉,克孜勒苏柯尔克孜,博 尔塔拉,吐鲁番,哈密,喀什,和田,阿克苏" 
arr[31 ]="香港" 
arr[32 ]="澳门" 
arr[33 ]="台北,高雄,台中,台南,屏东,南投,云林,新竹,彰化,苗栗,嘉义,花莲,桃园,宜兰,基隆,台东,金门,马祖,澎湖" 

function init()
{
    var city = document.getElementById("city");
    var cityArr = arr[0].split(",");
    for(var i=0;i<cityArr.length;i++)
    {
             city[i]=new Option(cityArr[i],cityArr[i]);
    }
}

function getCity()
{    
    var pro = document.getElementById("province");
    var city = document.getElementById("city");
    var index = pro.selectedIndex;
    var cityArr = arr[index].split(",");   
    
    city.length = 0;
    //将城市数组中的值填充到城市下拉框中
    for(var i=0;i<cityArr.length;i++)
    {
             city[i]=new Option(cityArr[i],cityArr[i]);
         }
    
}
    function xialakuang(){
    	var myselect=document.getElementById("city");
    	var index=myselect.selectedIndex ;
    	alert(myselect.options[index].value);//获取2号下拉框的值
    }
    function sel(){
    	 var domInput = document.getElementById("sel");//
    	    var v = domInput.value;//获取搜索框的值
    	    alert(v);
    }
</script>




    <div class="row">
        <div class="col-md-6">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="请输入检索关键字" id="sel"><!-- 搜索框id -->
                <span class="input-group-btn">
                    <button class="btn btn-primary" onclick="sel()">检索</button>
                </span>
            </div>
        </div>
    </div>
</div>










<div style="border:1px solid yellow;display:inline-block;margin:50px;height:200px ;width:200px;background-image:url(./img/q1.jpg)" >
<span onclick="javascript:location.href='http://kk942.com/'">杭州</span>
</div>
<div style="border:1px solid yellow;display:inline-block;margin:50px;height:200px ;width:200px;background-image:url(./img/q2.jpg)" ></div>
<div style="border:1px solid yellow;display:inline-block;margin:50px;height:200px ;width:200px;background-image:url(./img/q3.jpg)" ></div>
<div style="border:1px solid yellow;display:inline-block;margin:50px;height:200px ;width:200px;background-image:url(./img/q4.jpg)" ></div>
<div style="border:1px solid yellow;display:inline-block;margin:50px;height:200px ;width:200px;background-image:url(./img/q5.jpg)" ></div>
<div style="border:1px solid yellow;display:inline-block;margin:50px;height:200px ;width:200px;background-image:url(./img/q6.jpg)" ></div>
<div style="border:1px solid yellow;display:inline-block;margin:50px;height:200px ;width:200px;background-image:url(./img/q7.jpg)" ></div>
<div style="border:1px solid yellow;display:inline-block;margin:50px;height:200px ;width:200px;background-image:url(./img/q8.jpg)" ></div>



<link href="css/global.css" rel="stylesheet" type="text/css">

<style type="text/css">
.bannerbox{width:100%;position:relative;overflow:hidden;}

.Homebanner{width:100%;position:relative;height:600px;overflow:hidden;}
.Homebanner ul{width:100%;position:absolute;height:600px;}
.Homebanner ul li{width:100%;height:600px;position:absolute;overflow:hidden;}
.Homebanner ul li img{width:1900px;position:absolute;left:50%;top:0px;display:block;margin-left:-950px;}

.Homeleft,.Homeright{background:#000;font-family:"宋体";width:50px;height:50px;line-height:50px;text-align:center;font-size:40px;color:#fff;position:absolute;top:45%;cursor:pointer;transition:all .2s ease;opacity:0;z-index:899999}
.Homeleft{left:-60px;}
.Homeright{right:-60px;}

.bannerbox:hover .Homeleft{left:0px;opacity:1}
.bannerbox:hover .Homeright{right:0px;opacity:1}

.Homedot{position:absolute;width:100%;text-align:center;z-index:999;bottom:60px;}
.Homedot a{display:inline-block;margin:0px 5px;height:12px;width:12px;line-height:1000px;overflow:hidden;background:url(img/index_229.png) no-repeat;}
.Homedot a.cur{background:url(img/index_228.png) no-repeat}

.Homebannertext{position:absolute;left:0px;top:0px;width:100%;height:100%;}
.Homebannertext img.bigimg{transform:translateY(100px);-moz-transform:translateY(100px);-ms-transform:translateY(100px);-o-transform:translateY(100px);-webkit-transform:translateY(100px);}
.Homebannertext dl.bannerone{position:absolute;width:1180px;left:50%;margin-left:-590px;top:251px;text-align:center;z-index:9999;}
.Homebannertext dl.bannerone dt{float:right;font-size:45px;width:750px;height:80px;margin-left:100px;line-height:75px;color:#fff;background:#eb3900;transform:translateY(100px);-moz-transform:translateY(100px);-ms-transform:translateY(100px);-o-transform:translateY(100px);-webkit-transform:translateY(100px);}
.Homebannertext dl.bannerone dd{float:right;font-size:29px;color:#fff;background:#000;width:360px;height:60px;line-height:60px;margin-right:45px;transform:translateY(100px);-moz-transform:translateY(100px);-ms-transform:translateY(100px);-o-transform:translateY(100px);-webkit-transform:translateY(100px);}
.Homebannertext dl.bannertwo{position:absolute;width:1180px;left:50%;top:0px;color:#fff;margin-left:-590px;z-index:9999;}
.Homebannertext dl.bannertwo dt{padding-top:110px;position:relative;transform:translateY(100px);-moz-transform:translateY(100px);-ms-transform:translateY(100px);-o-transform:translateY(100px);-webkit-transform:translateY(100px);}
.Homebannertext dl.bannertwo dt h3{font-size:50px;line-height:60px;font-weight:700;position:relative;}
.Homebannertext dl.bannertwo dt p{font-size:20px;position:relative;padding-top:20px;}
.Homebannertext dl.bannerthree{position:absolute;width:1220px;left:50%;margin-left:-610px;top:0px;}
.Homebannertext dl.bannerthree dt{float:left;position:relative;transform:translateX(100px);-moz-transform:translateX(100px);-ms-transform:translateX(100px);-o-transform:translateX(100px);-webkit-transform:translateX(100px);}
.Homebannertext dl.bannerthree img{display:block;position:relative;width:auto;height:auto;left:0px;margin:0px;top:0px;}
.Homebannertext dl.bannerthree dd{width:500px;float:left;color:#fff;padding-top:170px;position:relative;padding-left:25px;transform:translateX(100px);-moz-transform:translateX(100px);-ms-transform:translateX(100px);-o-transform:translateX(100px);-webkit-transform:translateX(100px);}
.Homebannertext dl.bannerthree dd h3{font-size:55px;font-weight:700;line-height:70px;}
.Homebannertext dl.bannerthree dd p{font-size:20px;line-height:30px;}

.bannereffect{opacity:0;filter:alpha(opacity=0);}

.bannertime{transition:all .8s ease-in-out;-moz-transition:all .8s ease-in-out;-ms-transition:all .8s ease-in-out;-o-transition:all .8s ease-in-out;-webkit-transition:all .8s ease-in-out;}
.bannertime1{transition:all .8s ease-in-out .2s;-moz-transition:all .8s ease-in-out .2s;-ms-transition:all .8s ease-in-out .2s;-o-transition:all .8s ease-in-out .2s;-webkit-transition:all .8s ease-in-out .2s;}
.bannertime2{transition:all 1s ease-in-out .2s;-moz-transition:all 1s ease-in-out .2s;-ms-transition:all 1s ease-in-out .2s;-o-transition:all 1s ease-in-out 2s;-webkit-transition:all 1s ease-in-out .2s;}

.Homebanner li.cur .Homebannertext img.bigimg{transform:translateY(0px);-moz-transform:translateY(0px);-ms-transform:translateY(0px);-o-transform:translateY(0px);-webkit-transform:translateY(0px);}
.Homebanner li.cur .Homebannertext dl.bannerone dt{transform:translateY(0px);-moz-transform:translateY(0px);-ms-transform:translateY(0px);-o-transform:translateY(0px);-webkit-transform:translateY(0px);}
.Homebanner li.cur .Homebannertext dl.bannerone dd{transform:translateY(0px);-moz-transform:translateY(0px);-ms-transform:translateY(0px);-o-transform:translateY(0px);-webkit-transform:translateY(0px);}
.Homebanner li.cur .Homebannertext dl.bannertwo dt{transform:translateY(0px);-moz-transform:translateY(0px);-ms-transform:translateY(0px);-o-transform:translateY(0px);-webkit-transform:translateY(0px);}
.Homebanner li.cur .Homebannertext dl.bannerthree dt{transform:translateX(0px);-moz-transform:translateX(0px);-ms-transform:translateX(0px);-o-transform:translateX(0px);-webkit-transform:translateX(0px);}
.Homebanner li.cur .Homebannertext dl.bannerthree dd{transform:translateX(0px);-moz-transform:translateX(0px);-ms-transform:translateX(0px);-o-transform:translateX(0px);-webkit-transform:translateX(0px);}
.Homebanner li.cur .bannereffect{opacity:1;filter:alpha(opacity=100);}

.Homebanner li.cur1 .bannertime{transition:all .4s linear .2s;-moz-transition:all .4s linear .2s;-ms-transition:all .4s linear .2s;-o-transition:all .4s linear .2s;-webkit-transition:all .4s linear .2s;}
.Homebanner li.cur1 .bannertime1{transition:all .4s linear .1s;-moz-transition:all .4s linear .1s;-ms-transition:all .4s linear .1s;-o-transition:all .4s linear .1s;-webkit-transition:all .4s linear .1s;}
.Homebanner li.cur1 .bannertime2{transition:all .4s linear;-moz-transition:all .4s linear;-ms-transition:all .4s linear;-o-transition:all .4s linear;-webkit-transition:all .4s linear;}
.Homebanner li.cur1 .Homebannertext img.bigimg{transform:translateY(100px);-moz-transform:translateY(100px);-ms-transform:translateY(100px);-o-transform:translateY(100px);-webkit-transform:translateY(100px);}
.Homebanner li.cur1 .Homebannertext dl.bannerone dt{transform:translateY(100px);-moz-transform:translateY(100px);-ms-transform:translateY(100px);-o-transform:translateY(100px);-webkit-transform:translateY(100px);}
.Homebanner li.cur1 .Homebannertext dl.bannerone dd{transform:translateY(100px);-moz-transform:translateY(100px);-ms-transform:translateY(100px);-o-transform:translateY(100px);-webkit-transform:translateY(100px);}
.Homebanner li.cur1 .Homebannertext dl.bannertwo dt{transform:translateY(100px);-moz-transform:translateY(100px);-ms-transform:translateY(100px);-o-transform:translateY(100px);-webkit-transform:translateY(100px);}
.Homebanner li.cur1 .Homebannertext dl.bannerthree dt{transform:translateX(100px);-moz-transform:translateX(100px);-ms-transform:translateX(100px);-o-transform:translateX(100px);-webkit-transform:translateX(100px);}
.Homebanner li.cur1 .Homebannertext dl.bannerthree dd{transform:translateX(100px);-moz-transform:translateX(100px);-ms-transform:translateX(100px);-o-transform:translateX(100px);-webkit-transform:translateX(100px);}
.Homebanner li.cur1 .bannereffect{opacity:0;filter:alpha(opacity=0);}


.index_btn{width:100%;position:absolute;height:40px;top:560px;z-index:9999;background:#191919;}
.index_btn ul{margin:0px auto;padding:0px;width:1180px;}
.index_btn ul li{float:left;width:295px;height:40px;position:relative;}
.index_btn ul li span{position:relative;z-index:999;width:294px;display:block;height:40px;}
.index_btn ul li span a{display:block;width:294px;color:#FFF;background:#191919;cursor:pointer;font-size:14px;text-align:center;line-height:40px;border-right:1px solid #a7a7a7;float:left;height:40px;}
.index_btn ul li span a:hover{color:#FFF;background:#e60012;}
.index_btn ul li span a.cur{border:none;width:295px;}
.index_btn ul li em{display:inline-block;height:40px;padding-left:30px;}
.index_btn ul li em.btn{background:url(img/btn1.png) no-repeat left center;}
.index_btn ul li em.btn1{background:url(img/btn3.png) no-repeat left center;}
.index_btn ul li em.btn2{background:url(img/btn4.png) no-repeat left center;}
.index_btn ul li em.btn3{background:url(img/btn2.png) no-repeat left center;}

.index_btnbox{width:295px;height:260px;background:#FFF;position:absolute;top:0px;left:0px;padding:20px 0px 0px 0px;}
.index_btnbox img{display:block;margin:auto;}
.index_btnbox p{margin:0px;padding:20px 0px 0px 19px;}
.index_btnbox p a{display:block;float:left;width:130px;padding-bottom:5px;line-height:24px;}
</style>

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/banner.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$(".index_btn li").hover(function(){
		$(this).find("div").stop(true).animate({top:-280},300);	 
	},function(){
		$(this).find("div").stop(true).animate({top:-0},300);
	});
	
});
</script>

<div class="bannerbox">

	<div class="Homebanner">
		<ul>
			<li class="Load cur" style="z-index:99">
				<img src="img/banner2016.jpg" alt="">
				<div class="Homebannertext">
					<img src="img/banner2016.png" class="bannereffect bannertime bigimg">
					<dl class="bannerone clearfix">
						<dt class="bannereffect bannertime1">
							 网站建设<b>第一品牌</b>·互联网整合专家
						</dt>
						<dd class="bannereffect bannertime2">
							 为梦想者创造梦想品牌
						</dd>
					</dl>
				</div>
			</li>
			<li class="Load">
				<img src="img/banner02.jpg" alt="">
				<div class="Homebannertext">
					<img src="img/02.png" class="bannereffect bannertime bigimg">
					<dl class="bannertwo clearfix">
						<dt class="bannereffect bannertime1">
							 <h3>专业的O2O商城系统</h3>
							 <p>微信商城、手机商城、网上商城一体化的商城系统！</p>
						</dt>
					</dl>
				</div>
			</li>
			<li class="Load"><img src="img/03.jpg" alt="">
				<div class="Homebannertext">
					<dl class="bannerthree clearfix">
						<dt class="bannereffect bannertime"><img src="img/03-1.png" alt=""></dt>
						<dd class="bannereffect bannertime1">
							 <img src="img/03-2.png" alt="">
							 <h3>持续追求更高品质</h3>
							 <p>我们服务了超过1500家企业，其中300家为上市公司，集团企业及政府机构，让我们的专业帮助您的品牌更有效率的传播！</p>
						</dd>
					</dl>
				</div>
			</li>
		</ul>
		<div class="Homeleft"><</div>
		<div class="Homeright">></div>
		<div class="Homedot"><a href="javascript:;" class="cur">1</a><a href="javascript:;">2</a><a href="javascript:;">3</a></div>
	</div>
    
	
<div style="text-align:center ;font-size:30px;">
<p><a href="http://kk942.com/" target="_blank">普道</a></p>
</div>
</body>
</html>
