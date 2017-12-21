<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller 
{
    public function index()
    {
        $menu_id = isset($_GET['menu_id']) ? (int)$_GET['menu_id'] : '';
        $item = isset($_GET['item']) ? (string)$_GET['item'] : '';
        if(!empty($menu_id) && in_array($item, array('main','menu_list')))
            $url = U("Home/Main/{$item}","menu_id={$menu_id}");
        else
            $url = U('Home/Index/home');
        $this->assign('url', $url);
        $this->display();
    }

    public function top()
    {
        $this->assign('access', check_access());
        $this->display();
    }

    public function left()
    {
        $menu_list = D('Menu')->get_menu_arr();
        $this->assign('menu_list', $menu_list);
        $this->display();
    }

    public function home()
    {
        $this->assign('access', check_access());
        $this->display();
    }

    public function login()
    {
        $this->display();
    }

    public function login_act()
    {
        $user_id = isset($_POST['user_id']) ? (int)$_POST['user_id'] : 0;
        $password = isset($_POST['password']) ? (string)$_POST['password'] : '';

        if($user_id < 1 || empty($password))
        {
            page_location("", "参数错误");
        }

        $arr = C('ADMIN_USER');
        foreach($arr as $v)
        {
            if($v['user_id'] == $user_id && $v['password'] == $password)
            {
                $_SESSION['user_id'] = $user_id;
                page_location(U('Home/Index/index'), "登录成功");
            }
        }

        page_location("", "帐号或者密码不正确");
    }

    public function logout()
    {
        if(empty($_SESSION['user_id']))
        {
            page_location("", "Not login!");
        }
        session_unset();
        session_destroy();

        page_location(U('Home/Index/login'), "Success!", true);
    }
}