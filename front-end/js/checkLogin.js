// 判断用户是否登录--判断cookie中会否存在username的值
$(function(){
  var username = getCookie('username');
  var login = document.querySelector('.login');
  if(username){
    // <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
    var str = `<li><a>
    <span class="m-icons m-icons-user-active h-icons h-user-icon" data-src="" href="" style="background: url(&quot;https://cdn.cnbj1.fds.api.mi-img.com/user-avatar/928b2b5a-5165-42e7-8196-789bce457c44.jpg&quot;) center center / 100% no-repeat; border-radius: 50%;"></span>
    <span>${username}</span></span></a></li>
    <li><a href="javascript:;" class="logout">退出</a></li>`;
    login.innerHTML = str;
    // 退出功能
    var logout = document.querySelector('.logout');
    logout.onclick = function(){
      layer.confirm('你确定要退出吗？',
      {
        btn:['确定','取消']
      },
      function(){
        // 删除cookie
        delCookie('username');
        login.innerHTML = `<li><a href="login.html">登陆</a></li>
        <li><a href="register.html">注册</a></li>`;
        layer.msg('退出成功',{icon:1,time:500})
      },
      function(){
        layer.msg('已取消',{icon:1,time:500})
        return false;
      }
      )
    }
  }
})