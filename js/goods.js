/* 
* @Author: Marte
* @Date:   2018-04-15 12:47:18
* @Last Modified by:   Marte
* @Last Modified time: 2018-04-16 11:38:16
*/

                 var ul = document.querySelector('.main_1l');
                 var main_1t = document.querySelector('.main_1t');
                //获取url参数
                var url = decodeURI(location.search);

                var str = url.substr(1);

                var strs = str.split('=');

                var gid = strs[1]; 

                var xhr = new XMLHttpRequest();

                var status = [200,304];

                xhr.onload = function(){
                    if(xhr.readyState === 4 && status.indexOf(xhr.status)>=0){
                        // var res = xhr.responseText;
                        // res = JSON.parse(res);
                        var res = eval(`(${xhr.responseText})`);//所有的商品
                        console.log(res);
                        //商品数组遍历
                        for(var i=0;i<res.length;i++){
                            var obj = res[i];console.log(obj);
                            //对象遍历
                            if(obj.id === gid){
                                ul.innerHTML = `<li data-myid="${obj.id}" style="width:400px;height:300px;margin-top:100px;">
                                                <img src="${obj.imgurl}" style="vertical-align:top;margin-right:30px;float:left;" data-big="../img/g3.jpg" class="goods">
                                                <div style="margin-top:100px;margin-left:30px;">
                                                <p style="font-size:18px;color:#000000;">${obj.myname}</p>
                                                <p style="color:red;width:412px;height:62px;line-height:62px;text-align:center;background-color:#F6F3E5;font-size:14px;">￥${obj.price}</p>
                                                </div>
                                                <span style="width:100px;height:33;line-height:33px;text-align:center;font-size:16px;color:#fff;background-color:#FF6D02;margin-right:10px;padding:10px;margin-left:30px;">立即购买</span>
                                                <a href="../html/car.html?gid=${obj.id}" target="_blank">
                                                    <span style="width:100px;height:33;line-height:33px;text-align:center;font-size:14px;color:#fff;background-color:#FF6D02;padding:10px;">加入购物车</span>
                                                </a>
                                                
                                                
                                                </li>`;

                                main_1t.innerText = obj.myname;      


                            }
                        }
                        
                    }
                       
                }

                xhr.open('get','../api/goods.json',true);
                xhr.send();

                img.onload = function(){
                    jQuery(function($){
                        $('.goods').xZoom({
                            height:100,
                            position:'top'
                            
                        })
                    });

                }
                //不会的尽快百度