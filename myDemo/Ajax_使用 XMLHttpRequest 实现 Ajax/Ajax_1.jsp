<html>
    <head>
           <title>第一个JSP程序</title>
    </head>
	
	<script type="text/javascript">
		window.onload = function(){
			//1、获取a节点，并为其添加onclick响应函数
			document.getElementsByTagName("a")[0].onclick = function(){
				
				//3、创建一个XMLHTTPREQUEST对象
				var request = new XMLHttpRequest()
				
				//4、准备发送请求的数据
				var url = this.href;
				var method = "GET";
				
				//5、调用XMLHttpRequest对象的open方法
				request.open(method,url);
				
				//6、调用XMLHttpRequest对象的send方法
				request.send(null);
				
				//7、为XMLHttpRequest对象添加onreadystatechange响应函数
				request.onreadystatechange = function(){
					//8、判断响应是否完成：XMLHttpRequest对象的readystate属性值为4的时候
					if(request.readyState == 4){
						//9、再判断响应是否可用：XMLHttpRequest对象的status属性值为200
						if(request.status == 200 || request.status == 304){
							//10、打印响应结果：responseTest
							alert(request.responseText);
						}
					}
				}
				
				//2、取消a节点的默认行为
				return false;//不让点击反应
			}
		}
	</script>
	
    <body>
           <a href = "helloajax.txt">HelloAjax</a>
    </body>
</html>