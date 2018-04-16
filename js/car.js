/* 
* @Author: Marte
* @Date:   2018-04-15 13:59:35
* @Last Modified by:   Marte
* @Last Modified time: 2018-04-15 15:19:50
*/

               
                var yg_mt = document.querySelector('.yg_mtt');
                var ul = document.createElement('ul');
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
                                ul.innerHTML = `<li data-myid="${obj.id}" style="height:300px;margin-top:30px;margin-left:150px;">
                                                <img src="${obj.imgurl}" style="vertical-align:top;margin-right:30px;float:left;">
                                                <span style="font-size:18px;color:#000000;margin-left:100px;margin-top:50px;">${obj.myname}</span>
                                                <span style="color:red;font-size:14px;float:right;margin-right:100px;margin-top:30px;">￥${obj.price}</span>

            
                                                
                                                </li>`;

                                // main_1t.innerText = obj.myname;      
                                yg_mt.appendChild(ul);

                            }
                        }
                        
                    }
                       
                }

                xhr.open('get','../api/goods.json',true);
                xhr.send();

                
