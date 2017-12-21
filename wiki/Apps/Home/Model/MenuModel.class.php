<?php
namespace Home\Model;
use Think\Model;
class MenuModel extends Model {

  /**
   * 创建菜单
   * 
   * @access public
   * @param $options      array   参数数组
   *   <li> menu_name     int     菜单名称（必填） </li>
   *   <li> parent_id     int     上级菜单ID（默认：0） </li>
   *   <li> sort_order    int     排序字段（默认：0） </li>
   *   <li> user_id       int     用户ID（必填） </li>
   *   <li> summary       int     简介（默认：''） </li>
   *   <li> catalog       int     目录（默认：''） </li>
   * @return int
   *   <li> >1  =>  添加成功 </li>
   *   <li>  0  =>  添加失败 </li>
   *   <li> -1  =>  参数错误 </li>
   */
  public function create_menu($options)
  {
  	$menu_name = isset($options['menu_name']) ? (string)$options['menu_name'] : '';
  	$parent_id = isset($options['parent_id']) ? (int)$options['parent_id'] : 0;
  	$sort_order = isset($options['sort_order']) ? (int)$options['sort_order'] : 0;
  	$user_id = isset($options['user_id']) ? (int)$options['user_id'] : 0;
  	$summary = isset($options['summary']) ? (string)$options['summary'] : '';
  	$catalog = isset($options['catalog']) ? (string)$options['catalog'] : '';

    if(empty($menu_name) || $user_id < 1) return -1;
    
    $data = array(
      'menu_name'  =>  $menu_name,
      'parent_id'  =>  $parent_id,
      'sort_order'  =>  $sort_order,
      'user_id'  =>  $user_id,
      'summary'  =>  $summary,
      'catalog'  =>  $catalog,
      'add_time'  =>  time(),
      'update_time'  =>  time(),
    );
    $menu_id = M('Menu')->data($data)->add();
    return $menu_id > 0 ? $menu_id : 0;
  }
  
  /**
   * 更新菜单
   * 
   * @access public
   * @param $menu_id      int     菜单ID（必填）
   * @param $data       array     参数数组
   *   <li> menu_name     int     菜单名称 </li>
   *   <li> parent_id     int     上级菜单ID </li>
   *   <li> sort_order    int     排序字段 </li>
   *   <li> user_id       int     用户ID </li>
   *   <li> summary       int     简介 </li>
   *   <li> catalog       int     目录 </li>
   * @return int
   *   <li> >1  =>  更新成功 </li>
   *   <li>  0  =>  更新失败 </li>
   *   <li> -1  =>  参数错误 </li>
   *   <li> -2  =>  没有需要更新的数据 </li>
   */
  public function update_menu($menu_id, $data)
  {
    if($menu_id < 1 || empty($data) || !is_array($data)) return -1;

    $update_data = array();
    if(isset($data['menu_name'])) $update_data['menu_name'] = (string)$data['menu_name'];
    if(isset($data['parent_id'])) $update_data['parent_id'] = (int)$data['parent_id'];
    if(isset($data['sort_order'])) $update_data['sort_order'] = (int)$data['sort_order'];
    if(isset($data['user_id'])) $update_data['user_id'] = (int)$data['user_id'];
    if(isset($data['summary'])) $update_data['summary'] = (string)$data['summary'];
    if(isset($data['catalog'])) $update_data['catalog'] = (string)$data['catalog'];

    if(empty($update_data)) return -2;

    // 更新
    $update_data['update_time'] = time();
    $ret = M('Menu')->where("menu_id = {$menu_id}")->save($update_data);
    return $ret > 0 ? 1 : 0;
  }

  /**
   * 删除菜单
   * 
   * @access public
   * @param $menu_id      int     菜单ID（必填）
   * @return int
   *   <li>  1  =>  删除成功 </li>
   *   <li>  0  =>  删除失败 </li>
   *   <li> -1  =>  参数错误 </li>
   *   <li> -2  =>  该菜单不存在 </li>
   */
  public function del_menu($menu_id)
  {
    // 格式化参数
    $menu_id = (int)$menu_id;

    // 判断参数是否合法
    if($menu_id < 1) return -1;

    // 获取菜单信息
    $menu_info = $this->get_menu_info($menu_id);

    // 菜单不存在
    if(empty($menu_info)) return -2;

    // 菜单为一级菜单时
    if($menu_info['parent_id'] == 0)
    {
      // 获取子菜单列表
      $child_list = $this->get_menu_list(array('where_str'=>"parent_id={$menu_id}", 'limit'=>'0,1000'));
      foreach($child_list as $v)
      {
        // 删除子菜单的所有接口文件
        M('Info')->where("menu_id = {$v['menu_id']}")->delete();

        // 删除子菜单
        M('Menu')->where("menu_id = {$v['menu_id']}")->delete();
      }
      // 删除一级菜单
      $ret = M('Menu')->where("menu_id = {$menu_id}")->delete();
    }

    // 菜单为二级菜单时
    else
    {
      // 删除菜单下的所有接口文件
      M('Info')->where("menu_id = {$menu_id}")->delete();

      // 删除二级菜单
      $ret = M('Menu')->where("menu_id = {$menu_id}")->delete();
    }
    return $ret > 0 ? 1 : 0;
  }

  /**
   * 获取菜单信息
   * 
   * @access public
   * @param $menu_id      int     菜单ID（必填）
   * @return array
   */
  public function get_menu_info($menu_id)
  {
    // 判断参数是否合法
    if($menu_id < 1) return array();

    $ret = M('Menu')->where("menu_id = {$menu_id}")->find();
    return $ret ? $ret : array();
  }

  /**
   * 获取菜单列表
   * 
   * @access public
   * @param array $options 参数数组
   *   <li> where_str       string   查询条件，默认：''</li>
   *   <li> limit           string   获取数据限制，默认：'0,10' </li>
   *   <li> order_by        string   排序，默认：'sort_order DESC,add_time' </li>
   *   <li> fields          string   字段筛选，默认：'*' </li>
   *   <li> b_select_count  bool     是否查询数据量，默认：false </li>
   * @return array or int
   */
  public function get_menu_list($options)
  {
    $where_str         = !empty($options['where_str'])     ? $options['where_str']            : "";
    $limit             = !empty($options['limit'])         ? $options['limit']                : "0,10";
    $fields            = !empty($options['fields'])        ? $options['fields']               : "*";
    $order_by          = !empty($options['order_by'])      ? $options['order_by']             : "sort_order DESC,add_time ASC";
    $b_select_count    = isset($options['b_select_count']) ? (bool)$options['b_select_count'] : false;

    // 判断是否返回查询数据量
    if($b_select_count) return M("Menu")->where($where_str)->count();
  
    // 获取列表
    return M("Menu")->where($where_str)->field($fields)->order($order_by)->limit($limit)->select();
  }

  /**
   * 构造新菜单数组
   * 
   * @access public
   * @return array
   */
  public function get_menu_arr()
  {
    $menu_list = $this->get_menu_list(array('limit' => '0,1000'));
    if(empty($menu_list)) return array();

    $arr = array();
    foreach($menu_list as $menu)
    {
      if($menu['parent_id'] == 0) $arr[] = $menu;
    }
    foreach($arr as $k => $v)
    {
      foreach($menu_list as $menu)
      {
        if($v['menu_id'] == $menu['parent_id']) $arr[$k]['child'][] = $menu;
      }
    }
    return $arr;
  }


}