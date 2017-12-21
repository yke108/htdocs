<?php
namespace Home\Controller;
use Think\Controller;
class MainController extends Controller 
{
    public function main()
    {
        $menu_id = isset($_GET['menu_id']) ? (int)$_GET['menu_id'] : 0;

        if($menu_id < 1)
        {
            // 默认文档
            $ret = D('Menu')->get_menu_list(array('where_str'=>'parent_id > 0', 'limit'=>'1'));
            $menu_id = $ret[0]['menu_id'];
        }

        // 获取菜单信息
        $menu_info = D('Menu')->get_menu_info($menu_id);
        if(empty($menu_info)) exit;
        $this->assign('menu_info', $menu_info);

        // 获取这菜单的文档列表
        $art_list = D('Info')->get_art_list_by_menu_id($menu_id);
        if(empty($art_list))
        {
            page_location(U('Home/Main/article_add', 'menu_id='.$menu_id), "请先添加接口");
        }

        foreach($art_list as $k => $v)
        {
            if(!empty($v['content']))
            {
                $content = explode('&lt;br /&gt;', $v['content']);
                $content = array_filter($content); // 过虑空值
                foreach($content as $_k => $_v)
                {
                    $content[$_k] = explode('#', $_v);
                }
                $str = '<table class="gridtable"><tr><th>字段</th><th>类型</th><th>说明</th></tr>';
                foreach($content as $_v)
                {
                    $str .= "<tr><td>{$_v[0]}</td><td>{$_v[1]}</td><td>{$_v[2]}</td></tr>";
                }
                $str .= '</table>';
                $art_list[$k]['content'] = $str;
            }
            if(!empty($v['extra_column_1']))
            {
                $extra_column_1 = explode('&lt;br /&gt;', $v['extra_column_1']);
                $extra_column_1 = array_filter($extra_column_1); // 过虑空值
                foreach($extra_column_1 as $_k => $_v)
                {
                    $extra_column_1[$_k] = explode('#', $_v);
                }
                $str = '<table class="gridtable"><tr><th>返回值</th><th>说明</th></tr>';
                foreach($extra_column_1 as $_v)
                {
                    $str .= "<tr><td>{$_v[0]}</td><td>{$_v[1]}</td></tr>";
                }
                $str .= '</table>';
                $art_list[$k]['extra_column_1'] = $str;
            }
            if(!empty($v['extra_column_2']))
            {
                $extra_column_2 = explode('&lt;br /&gt;', $v['extra_column_2']);
                //$extra_column_2 = array_filter($extra_column_2); // 过虑空值
                foreach($extra_column_2 as $_k => $_v)
                {
                    if(!empty($_v)) $extra_column_2[$_k] = explode('#', $_v);
                }
                $str = '<table class="gridtable">';
                for($i = 0; $i < count($extra_column_2); $i++)
                {
                    if(empty($extra_column_2[$i])) continue;
                    if($i == 0)
                    {
                        $str .= "<tr>";
                        for($j = 0; $j < count($extra_column_2[$i]); $j++)
                        {
                            $str .= "<th>{$extra_column_2[$i][$j]}</th>";
                        }
                        $str .= "</tr>";
                    }
                    else
                    {
                        $str .= "<tr>";
                        for($j = 0; $j < count($extra_column_2[$i]); $j++)
                        {
                            $str .= "<td>{$extra_column_2[$i][$j]}</td>";
                        }
                        $str .= "</tr>";
                    }
                }
                $str .= '</table>';
                $art_list[$k]['extra_column_2'] = $str;
            }
        }

        $this->assign('art_list', $art_list);
        $this->display();
    }

    // 添加文档
    public function article_add()
    {   
        if(!check_access())
        {
            exit("您尚无权限访问此页面，请联系相关人员！");
        }

        $menu_id = isset($_GET['menu_id']) ? (int)$_GET['menu_id'] : 0;
        if($menu_id < 1) exit;

        // 获取菜单信息
        $menu_info = D('Menu')->get_menu_info($menu_id);
        if(empty($menu_info)) exit;

        $this->assign('menu_info', $menu_info);
        $this->display();
    }

    // 编辑文档
    public function article_edit()
    {   
        if(!check_access())
        {
            exit("您尚无权限访问此页面，请联系相关人员！");
        }

        $art_id = isset($_GET['art_id']) ? (int)$_GET['art_id'] : 0;
        if($art_id < 1) exit;

        // 获取菜单信息
        $art_info = D('Info')->get_art_info($art_id);
        if(empty($art_info)) exit;

        // 自定义换行字符串
        $_r_n = '
        ';

        // 参数说明
        $content = explode('&lt;br /&gt;', $art_info['content']);
        $new_content = '';
        for($i = 0; $i < count($content); $i++)
        {
            if($i < (count($content) - 1)){
                $new_content .= $content[$i].$_r_n;     
            }else{
                $new_content .= $content[$i];
            }
        }
        $art_info['content'] = $new_content;

        // 返回值说明
        $content = explode('&lt;br /&gt;', $art_info['extra_column_1']);
        $new_content = '';
        for($i = 0; $i < count($content); $i++)
        {
            if($i < (count($content) - 1)){
                $new_content .= $content[$i].$_r_n;     
            }else{
                $new_content .= $content[$i];
            }
        }
        $art_info['extra_column_1'] = $new_content;

        // 附加说明
        $content = explode('&lt;br /&gt;', $art_info['extra_column_2']);
        $new_content = '';
        for($i = 0; $i < count($content); $i++)
        {
            if($i < (count($content) - 1)){
                $new_content .= $content[$i].$_r_n;     
            }else{
                $new_content .= $content[$i];
            }
        }
        $art_info['extra_column_2'] = $new_content;

        if($art_info['is_show'])
        {
            $art_info['is_show'] = '<option value="1" selected="selected">显示</option><option value="0">隐藏</option>';
        }
        else
        {
            $art_info['is_show'] = '<option value="1">显示</option><option value="0" selected="selected">隐藏</option>';
        }

        $this->assign('art_info', $art_info);

        // 获取菜单信息
        $menu_info = D('Menu')->get_menu_info($art_info['menu_id']);
        if(empty($menu_info)) exit;

        $this->assign('menu_info', $menu_info);
        $this->display();
    }

    public function menu_list()
    {
        if(!check_access())
        {
            exit("您尚无权限访问此页面，请联系相关人员！");
        }

        // 获取主菜单列表
        $menu_list = D('Menu')->get_menu_list(array("where_str" => "parent_id = 0", "limit" => "0, 1000"));

        // 获取搜索参数
        $menu_id = isset($_GET['menu_id']) ? $_GET['menu_id'] : $menu_list[0]['menu_id'];

        // 判断菜单是否存在
        $menu_info = D('Menu')->get_menu_info($menu_id);
        if(empty($menu_info) || $menu_info['parent_id'] > 0)
        {
            page_location(U('Home/Index/index'), '', true);
        }

        // 获取子菜单列表
        $child_menu_list = D('Menu')->get_menu_list(array("where_str" => "parent_id = {$menu_id}", "limit" => "0, 1000"));

        foreach($child_menu_list as $k => $v)
        {
            $child_menu_list[$k]['parent_id'] = $v['menu_name'];
            $child_menu_list[$k]['add_time'] = date('Y-m-d H:i', $v['add_time']);

            // 判断子菜单是否有接口
            $art_list = D('Info')->get_art_list_by_menu_id($v['menu_id']);
            $child_menu_list[$k]['b_delete'] = empty($art_list) ? true : false;
        }

        $select_str = '';
        foreach($menu_list as $v)
        {
            if($v['menu_id'] == $menu_id)
            $select_str .= "<option selected='selected' value='" . $v['menu_id'] . "'>" . $v['menu_name'] . "</option>";
            else
            $select_str .= "<option value='" . $v['menu_id'] . "'>" . $v['menu_name'] . "</option>";
        }

        $this->assign('menu_info', $menu_info);
        $this->assign('select_str', $select_str);
        $this->assign('child_menu_list', $child_menu_list);
        $this->display();
    }

    public function menu_edit()
    {
        if(!check_access())
        {
            exit("您尚无权限访问此页面，请联系相关人员！");
        }

        $menu_id = isset($_GET['menu_id']) ? (int)$_GET['menu_id'] : 0;
        if($menu_id < 1) exit;

        $menu_info = D('Menu')->get_menu_info($menu_id);
        if(empty($menu_info)) exit;

        $this->assign('menu_info', $menu_info);
        $this->display();
    }

    public function menu_add()
    {
        if(!check_access())
        {
            exit("您尚无权限访问此页面，请联系相关人员！");
        }
        
        $menu_id = isset($_GET['menu_id']) ? (int)$_GET['menu_id'] : 0;
        if($menu_id < 1) exit;

        $menu_info = D('Menu')->get_menu_info($menu_id);
        if(empty($menu_info)) exit;

        $this->assign('menu_info', $menu_info);
        $this->display();
    }

    public function search()
    {
        $keyword = isset($_GET['keyword']) ? trim($_GET['keyword']) : '';
        $keyword1 = str_replace("\"",  "&quot;", $keyword);
        $keyword2 = str_replace("'",  "''", $keyword1);

        // 搜索条件
        $where_str = "(title like '%{$keyword2}%' or summary like '%{$keyword2}%' or description like '%{$keyword2}%') and is_show = 1";

        // 获取主菜单列表
        $art_list = D('Info')->get_art_list(array("where_str" => $where_str, "limit" => "0, 1000"));

        // 搜索结果中的关键词设置背景颜色
        foreach($art_list as $k => $v)
        {
            $title = str_replace($keyword, "<span style='background:yellow;'>{$keyword}</span>", $v['title']);
            $art_list[$k]['title'] = str_replace($keyword1, "<span style='background:yellow;'>{$keyword}</span>", $title);

            $summary = str_replace($keyword, "<span style='background:yellow;'>{$keyword}</span>", $v['summary']);
            $art_list[$k]['summary'] = str_replace($keyword1, "<span style='background:yellow;'>{$keyword}</span>", $summary);

            $description = str_replace($keyword, "<span style='background:yellow;'>{$keyword}</span>", $v['description']);
            $art_list[$k]['description'] = str_replace($keyword1, "<span style='background:yellow;'>{$keyword}</span>", $description);
        }

        $this->assign("art_list", $art_list);
        $this->assign("keyword", $keyword);
        $this->display();
    }
}