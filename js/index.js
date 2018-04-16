/* 
* @Author: Marte
* @Date:   2018-04-09 20:42:22
* @Last Modified by:   Marte
* @Last Modified time: 2018-04-11 20:47:01
*/

(function(){
    var left = document.querySelector('.left');
    var ul = document.querySelector('ul');
    var li = document.querySelector('li');
    window.onscroll = function(){
        if(window.scrollY > 800){
            left.style.display = 'block';
        }else{
            left.style.display = 'none';
        }
    } 

    ul.onmouseover = function(e){
        e = e || window.event;
        var target = e.target || e.srcElement;
        if(target.tagName.toLowerCase() === 'li'){
            target.style.backgroundColor = '#F15C18';
        }
    }
})()