<?php
namespace Home\Model;
use Think\Model;
class InfoModel extends Model {

  /**
   * 创建接口
   * 
   * @access public
   * @param $options       array       参数数组
   *   <li> title          string     接口名称（必填） </li>
   *   <li> summary        string     功能描述（默认：''） </li>
   *   <li> description    string     调用方式（默认：''） </li>
   *   <li> content        string     参数描述（默认：''） </li>
   *   <li> include_src    string     引用路径（默认：''） </li>
   *   <li> extra_column_1 string     返回值说明（默认：''） </li>
   *   <li> extra_column_2 string     附加列2（默认：''） </li>
   *   <li> cover_img_url  string     展示图片（默认：''） </li>
   *   <li> cover_img_url2 string     展示图片2（默认：''） </li>
   *   <li> menu_id        int        菜单ID（必填） </li>
   *   <li> user_id        int        用户ID（必填） </li>
   *   <li> sort_order     int        排序字段（默认：0） </li>
   *   <li> is_show        int        是否显示（默认：0） </li>
   * @return int
   *   <li>  1  =>  添加成功 </li>
   *   <li>  0  =>  添加失败 </li>
   *   <li> -1  =>  参数错误 </li>
   */
  public function add_art($options)
  {
  	$title = isset($options['title']) ? (string)$options['title'] : '';
  	$summary = isset($options['summary']) ? (string)$options['summary'] : '';
  	$description = isset($options['description']) ? (string)$options['description'] : '';
  	$content = isset($options['content']) ? (string)$options['content'] : '';
  	$include_src = isset($options['include_src']) ? (string)$options['include_src'] : '';
  	$extra_column_1 = isset($options['extra_column_1']) ? (string)$options['extra_column_1'] : '';
  	$extra_column_2 = isset($options['extra_column_2']) ? (string)$options['extra_column_2'] : '';
  	$cover_img_url = isset($options['cover_img_url']) ? (string)$options['cover_img_url'] : '';
  	$cover_img_url2 = isset($options['cover_img_url2']) ? (string)$options['cover_img_url2'] : '';
  	$menu_id = isset($options['menu_id']) ? (int)$options['menu_id'] : 0;
  	$user_id = isset($options['user_id']) ? (int)$options['user_id'] : 0;
  	$sort_order = isset($options['sort_order']) ? (int)$options['sort_order'] : 0;
  	$is_show = isset($options['is_show']) ? (int)$options['is_show'] : 0;

    if(empty($title) || $user_id < 1 || $menu_id < 1) return -1;

    $data = array(
    	'title' => $title,
    	'summary' => $summary,
    	'description' => $description,
    	'content' => $content,
    	'include_src' => $include_src,
    	'extra_column_1' => $extra_column_1,
    	'extra_column_2' => $extra_column_2,
    	'cover_img_url' => $cover_img_url,
    	'cover_img_url2' => $cover_img_url2,
    	'menu_id' => $menu_id,
    	'user_id' => $user_id,
    	'sort_order' => $sort_order,
    	'is_show' => $is_show,
      'add_time'  =>  time(),
      'update_time'  =>  time(),
    );
    $art_id = M("Info")->data($data)->add();
    return $art_id > 0 ? 1 : 0;
  }

  /**
   * 更新接口
   * 
   * @access public
   * @param $art_id      int      接口ID（必填）
   * @param $data       array     参数数组
   *   <li> title          string     接口名称 </li>
   *   <li> summary        string     功能描述 </li>
   *   <li> description    string     调用方式 </li>
   *   <li> content        string     参数描述 </li>
   *   <li> include_src    string     引用路径 </li>
   *   <li> extra_column_1 string     返回值说明 </li>
   *   <li> extra_column_2 string     附加列2 </li>
   *   <li> cover_img_url  string     展示图片 </li>
   *   <li> cover_img_url2  string    展示图片2 </li>
   *   <li> menu_id        int        菜单ID </li>
   *   <li> user_id        int        用户ID </li>
   *   <li> sort_order     int        排序字段 </li>
   *   <li> is_show        int        是否显示 </li>
   * @return int
   *   <li>  1  =>  更新成功 </li>
   *   <li>  0  =>  更新失败 </li>
   *   <li> -1  =>  参数错误 </li>
   *   <li> -2  =>  没有需要更新的数据 </li>
   */
  public function update_art($art_id, $data)
  {
    if(empty($data) || $art_id < 1) return -1;

    $update_data = array();
    if(isset($data['title'])) $update_data['title'] = (string)$data['title'];
    if(isset($data['summary'])) $update_data['summary'] = (string)$data['summary'];
    if(isset($data['description'])) $update_data['description'] = (string)$data['description'];
    if(isset($data['content'])) $update_data['content'] = (string)$data['content'];
    if(isset($data['include_src'])) $update_data['include_src'] = (string)$data['include_src'];
    if(isset($data['extra_column_1'])) $update_data['extra_column_1'] = (string)$data['extra_column_1'];
    if(isset($data['extra_column_2'])) $update_data['extra_column_2'] = (string)$data['extra_column_2'];
    if(isset($data['cover_img_url'])) $update_data['cover_img_url'] = (string)$data['cover_img_url'];
    if(isset($data['cover_img_url2'])) $update_data['cover_img_url2'] = (string)$data['cover_img_url2'];
    if(isset($data['menu_id'])) $update_data['menu_id'] = (int)$data['menu_id'];
    if(isset($data['user_id'])) $update_data['user_id'] = (int)$data['user_id'];
    if(isset($data['is_show'])) $update_data['is_show'] = (int)$data['is_show'];
    if(isset($data['sort_order'])) $update_data['sort_order'] = (int)$data['sort_order'];

    if(empty($update_data)) return -2;
    $update_data['update_time'] = time();
    $ret = M("Info")->where("art_id = {$art_id}")->save($update_data);
    return $ret > 0 ? 1 : 0;
  }

  /**
   * 删除接口
   * 
   * @access public
   * @param $art_id      int     接口ID（必填）
   * @return int
   *   <li>  1  =>  删除成功 </li>
   *   <li>  0  =>  删除失败 </li>
   *   <li> -1  =>  参数错误 </li>
   */
  public function del_art($art_id)
  {
    if($art_id < 1) return -1;
    $ret = M("Info")->where("art_id = {$art_id}")->delete();
    return $ret > 0 ? 1 : 0;
  }

  /**
   * 获取接口信息
   * 
   * @access public
   * @param $art_id      int     接口ID（必填）
   * @return array
   */
  public function get_art_info($art_id)
  {
    // 判断参数是否合法
    if($art_id < 1) return array();
    $ret = M("Info")->where("art_id = {$art_id}")->find();
    return $ret ? $ret : array();
  }

  /**
   * 获取接口列表
   * 
   * @access public
   * @param array $options 参数数组
   *   <li> where_str       string   查询条件，默认：''</li>
   *   <li> limit           string   获取数据限制，默认：'0,10' </li>
   *   <li> order_by        string   排序，默认：'sort_order DESC' </li>
   *   <li> fields          string   字段筛选，默认：'*' </li>
   *   <li> b_select_count  bool     是否查询数据量，默认：false </li>
   * @return array or int
   */
  public function get_art_list($options)
  {
    $where_str         = !empty($options['where_str'])     ? $options['where_str']            : "";
    $limit             = !empty($options['limit'])         ? $options['limit']                : "0,10";
    $fields            = !empty($options['fields'])        ? $options['fields']               : "*";
    $order_by          = !empty($options['order_by'])      ? $options['order_by']             : "sort_order DESC,add_time ASC";
    $b_select_count    = isset($options['b_select_count']) ? (bool)$options['b_select_count'] : false;

    // 判断是否返回查询数据量
    if($b_select_count) return M("Info")->where($where_str)->count();
  
    // 获取列表
    return M("Info")->where($where_str)->field($fields)->order($order_by)->limit($limit)->select();
  }

  /**
   * 根据菜单ID获取全部接口列表
   * 
   * @access public
   * @param $menu_id int 菜单ID（必须）
   * @return array
   */
  public function get_art_list_by_menu_id($menu_id)
  {
    $menu_id = (int)$menu_id;
    if($menu_id < 1) return array();
    return M("Info")->where("menu_id = {$menu_id}")->order("sort_order DESC,add_time ASC")->select();
  }
}