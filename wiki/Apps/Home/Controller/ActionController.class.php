<?php
namespace Home\Controller;
use Think\Controller;
class ActionController extends Controller 
{
	public function article()
	{
		if(!check_access())
		{
			exit("您尚无权限访问此页面，请联系相关人员！");
		}

		$error_msg = '';
		$act = isset($_GET['act']) ? $_GET['act'] : '';

		switch($act)
		{
			// ====添加接口==== //
			case 'add': 
				// 接收表单数据
				$menu_id = isset($_POST['menu_id']) ? (int)$_POST['menu_id']: 0;
				$sort_order = isset($_POST['sort_order']) ? (int)$_POST['sort_order']: 0;
				$title = isset($_POST['title']) ? htmlspecialchars(trim($_POST['title'])) : '';
				$summary = isset($_POST['summary']) ? htmlspecialchars(trim($_POST['summary'])) : '';
				$include_src = isset($_POST['include_src']) ? htmlspecialchars(trim($_POST['include_src'])) : '';
				$description = isset($_POST['description']) ? htmlspecialchars(trim($_POST['description'])) : '';
				$content = isset($_POST['content']) ? htmlspecialchars($_POST['content']) : '';
				$extra_column_1 = isset($_POST['extra_column_1']) ? htmlspecialchars($_POST['extra_column_1']) : '';
				$extra_column_2 = isset($_POST['extra_column_2']) ? htmlspecialchars($_POST['extra_column_2']) : '';
				$is_show = isset($_POST['is_show']) ? (int)$_POST['is_show'] : 1;

				// 判断参数是否合法
				if($menu_id < 1 || empty($title)) 
				{
					$error_msg = '参数错误';
					break;
				}

				// 获取菜单信息
				$menu_info = D('Menu')->get_menu_info($menu_id);
				if(empty($menu_info))
				{
					$error_msg = '菜单不存在';
					break;
				}

				// 上传文件1处理
				$cover_img_url = '';
				if(!empty($_FILES["upfile"]) && $_FILES["upfile"]['error'] == 0)
				{
					$hz = end(explode('.', $_FILES["upfile"]['name']));
					$file_name = date('YmdHis') . get_rand_string(6) . '.' . $hz;
					$upload_path = './Upload/' . $file_name;
					if(move_uploaded_file($_FILES['upfile']['tmp_name'], $upload_path))
					{
						$cover_img_url = "http://yke108.cn/wiki/Upload/" . $file_name;
					}
					else
					{
						$error_msg = '图片1上传失败';
						break;
					}
				}
				// 上传文件2处理
				$cover_img_url2 = '';
				if(!empty($_FILES["upfile2"]) && $_FILES["upfile2"]['error'] == 0)
				{
					$hz = end(explode('.', $_FILES["upfile"]['name']));
					$file_name = date('YmdHis') . get_rand_string(6) . '.' . $hz;
					$upload_path = './Upload/' . $file_name;
					if(move_uploaded_file($_FILES['upfile']['tmp_name'], $upload_path))
					{
						$cover_img_url2 = "http://yke108.cn/wiki/Upload/" . $file_name;
					}
					else
					{
						$error_msg = '图片1上传失败';
						break;
					}
				}

				// 添加接口
				$options = array 
				(
					'title' => $title,
					'summary' => $summary,
					'include_src' => $include_src,
					'description' => $description,
					'content' => $content,
					'extra_column_1' => $extra_column_1,
					'extra_column_2' => $extra_column_2,
					'cover_img_url' => $cover_img_url,
					'cover_img_url2' => $cover_img_url2,
					'menu_id' => $menu_id,
					'user_id' => 10000,
					'sort_order' => $sort_order,
					'is_show' => $is_show,
				);
				$ret = D('Info')->add_art($options);

				if($ret == 1)
				{
					page_location(U('Home/Main/main', "menu_id={$menu_id}"), "添加成功");
				}
				else
				{
					$error_msg = $ret;
				}
			  break;

			case 'edit': 
				// 初始化数组
				$options = array();

				// 接收表单数据
				$art_id = isset($_POST['art_id']) ? (int)$_POST['art_id']: 0;
				$options['sort_order'] = isset($_POST['sort_order']) ? (int)$_POST['sort_order']: 0;
				$options['title'] = isset($_POST['title']) ? htmlspecialchars(trim($_POST['title'])) : '';
				$options['summary'] = isset($_POST['summary']) ? htmlspecialchars(trim($_POST['summary'])) : '';
				$options['include_src'] = isset($_POST['include_src']) ? htmlspecialchars(trim($_POST['include_src'])) : '';
				$options['description'] = isset($_POST['description']) ? htmlspecialchars(trim($_POST['description'])) : '';
				$options['content'] = isset($_POST['content']) ? htmlspecialchars($_POST['content']) : '';
				$options['extra_column_1'] = isset($_POST['extra_column_1']) ? htmlspecialchars($_POST['extra_column_1']) : '';
				$options['extra_column_2'] = isset($_POST['extra_column_2']) ? htmlspecialchars($_POST['extra_column_2']) : '';
				$options['is_show'] = isset($_POST['is_show']) ? (int)$_POST['is_show'] : 1;

				// 判断参数是否合法
				if($art_id < 1 || empty($options['title'])) 
				{
					$error_msg = '参数错误';
					break;
				}

				// 获取接口信息
				$art_info = D('Info')->get_art_info($art_id);
				if(empty($art_info))
				{
					$error_msg = '接口不存在';
					break;
				}

				// 上传文件1处理
				if(!empty($_FILES["upfile"]) && $_FILES["upfile"]['error'] == 0)
				{
					$hz = end(explode('.', $_FILES["upfile"]['name']));
					$file_name = date('YmdHis') . sns_wk_get_rand_string(6) . '.' . $hz;
					$upload_path = './Upload/' . $file_name;
					if(move_uploaded_file($_FILES['upfile']['tmp_name'], $upload_path))
					{
						$options['cover_img_url'] = "http://localhost/wiki/Upload/" . $file_name;
					}
					else
					{
						$error_msg = '图片上传失败';
						break;
					}
				}

				// 上传文件2处理
				if(!empty($_FILES["upfile2"]) && $_FILES["upfile2"]['error'] == 0)
				{
					$hz = end(explode('.', $_FILES["upfile2"]['name']));
					$file_name = date('YmdHis') . sns_wk_get_rand_string(6) . '.' . $hz;
					$upload_path = G_SNS_WIKI_UPLOAD_PATH . $file_name;
					if(move_uploaded_file($_FILES['upfile2']['tmp_name'], $upload_path))
					{
						$options['cover_img_url2'] = "http://localhost/wiki/Upload/" . $file_name;
					}
					else
					{
						$error_msg = '图片2上传失败';
						break;
					}
				}

				$ret = D('Info')->update_art($art_id, $options);

				if($ret == 1)
				{
					page_location(U('Home/Main/main', "menu_id={$art_info['menu_id']}"), "编辑成功");
				}
				else
				{
					$error_msg = '编辑失败';
				}
			  break;

			case 'del':
				$art_id = isset($_GET['art_id']) ? (int)$_GET['art_id']: 0;

				// 判断参数是否合法
				if($art_id < 1)
				{
					$error_msg = '参数错误';
					break;
				}

				// 获取接口信息
				$art_info = D('Info')->get_art_info($art_id);
				if(empty($art_info))
				{
					$error_msg = '接口不存在';
					break;
				}

				$ret = D('Info')->del_art($art_id);

				if($ret == 1)
				{
					page_location(U('Home/Main/main', "menu_id={$art_info['menu_id']}"), "删除成功");
				}
				else
				{
					$error_msg = '删除失败';
				}
			  break;

			case 'del_img':

				$num = isset($_POST['num']) ? (int)$_POST['num']: 0;
				$art_id = isset($_POST['art_id']) ? (int)$_POST['art_id']: 0;

				if(!in_array($num, array(1,2)) || $art_id < 1)
				{
					exit(json_encode(0));
				}
				if($num == 1)
					$ret = D('Info')->update_art($art_id, array('cover_img_url' => ''));
				else
					$ret = D('Info')->update_art($art_id, array('cover_img_url2' => ''));

				exit(json_encode($ret));

			  break;

			case 'show':

				$art_id = isset($_GET['art_id']) ? (int)$_GET['art_id']: 0;

				// 判断参数是否合法
				if($art_id < 1)
				{
					$error_msg = '参数错误';
					break;
				}

				// 获取接口信息
				$art_info = D('Info')->get_art_info($art_id);
				if(empty($art_info))
				{
					$error_msg = '接口不存在';
					break;
				}

				$is_show = $art_info['is_show'] == 1 ? 0 : 1;

				$ret = D('Info')->update_art($art_id, array('is_show' => $is_show));

				if($ret == 1)
				{
					page_location(U('Home/Main/main', "menu_id={$art_info['menu_id']}"));
				}
				else
				{
					$error_msg = '操作失败';
				}
			  break;

			default:
				
				break;
		}
		page_location('',$error_msg);
	}

	public function menu()
	{
		if(!check_access())
		{
			exit("您尚无权限访问此页面，请联系相关人员！");
		}

		$error_msg = '';
		$act = isset($_GET['act']) ? $_GET['act'] : '';

		switch($act)
		{
			// ====添加菜单==== //
			case 'add': 
				// 接收表单数据
				$menu_name  = isset($_POST['menu_name'])  ? (string)trim($_POST['menu_name']) : '';
				$summary 	  = isset($_POST['summary'])    ? (string)$_POST['summary'] 				: '';
				$parent_id  = isset($_POST['parent_id'])  ? (int)$_POST['parent_id'] 					: 0 ;

				// 判断参数是否合法
				if(empty($menu_name) || $parent_id < 0)
				{
					$error_msg = '参数错误';
					break;
				}

				$add_data = array 
				(
					"menu_name"		=> $menu_name,
					'summary'			=> $summary,
					'parent_id'		=> $parent_id,
					'user_id'			=> 10000,
				);

				// 添加菜单
				$ret = D('menu')->create_menu($add_data);

				if($ret < 1)
				{
					$error_msg = '添加失败';
					break;
				}
				
				$menu_id = $parent_id == 0 ? $ret : $parent_id;
				page_location(U('Home/Index/index','item=menu_list&menu_id='.$menu_id), "添加成功", true);
			  
			case 'del':
				// 接收参数
				$menu_id = isset($_GET['menu_id']) ? (int)$_GET['menu_id'] : 0;

				// 判断参数是否合法
				if($menu_id < 1)
				{
					$error_msg = '参数错误';
					break;
				}

				// 判断菜单是否存在
				$menu_info = D('Menu')->get_menu_info($menu_id);
				if(empty($menu_info))
				{
					$error_msg = '菜单不存在';
					break;
				}

				// 获取是否存在子菜单
				$menu_list = D('Menu')->get_menu_list(array('where_str' => "parent_id = {$menu_id}"));
				if(!empty($menu_list))
				{
					$error_msg = '存在子菜单不能删除';
					break;
				}

				// 删除菜单
				$ret = D('Menu')->del_menu($menu_id);
				if($ret < 1)
				{
					$error_msg = '删除失败';
					break;
				}

				if($menu_info['parent_id'] == 0)
					page_location(U('Home/Index/index'), "删除成功", true);
				else
					page_location(U('Home/Main/menu_list', 'menu_id='.$menu_info['parent_id']), "删除成功");

			case 'edit':
				// 接收表单数据
				$menu_id    = isset($_POST['menu_id'])   	? (int)$_POST['menu_id']      			: 0 ;
				$menu_name  = isset($_POST['menu_name']) 	? (string)trim($_POST['menu_name']) : '';
				$sort_order = isset($_POST['sort_order']) ? (int)$_POST['sort_order'] 				: 0 ;
				$summary    = isset($_POST['summary']) 		? (string)$_POST['summary'] 				: '';

				// 判断参数是否合法
				if($menu_id < 1 || empty($menu_name))
				{
					$error_msg = '参数错误';
					break;
				}

				// 判断菜单是否存在
				$menu_info = D('Menu')->get_menu_info($menu_id);
				if(empty($menu_info))
				{
					$error_msg = '菜单不存在';
					break;
				}
				
				$file = $menu_info['parent_id'] == 0 ? $menu_id : $menu_info['parent_id'];

				$ret = D('Menu')->update_menu($menu_id, array('menu_name'=>$menu_name, 'sort_order'=>$sort_order, 'summary'=>$summary));

				if($ret < 1)
				{
					$error_msg = '编辑失败';
					break;
				}

				$menu_id = $menu_info['parent_id'] == 0 ? $menu_id : $menu_info['parent_id'];
				page_location(U('Home/Main/menu_list', 'menu_id='.$menu_id), "编辑成功");

			case 'sort':
				// 接收表单数据
				$menu_id    = isset($_GET['menu_id']) ? (int)$_GET['menu_id'] : 0 ;
				if($menu_id < 1)
				{
					$error_msg = '参数错误';
					break;
				}

				// 判断菜单是否存在
				$menu_info = D('Menu')->get_menu_info($menu_id);
				if(empty($menu_info))
				{
					$error_msg = '菜单不存在';
					break;
				}
				if($menu_info['parent_id'] == 0)
				{
					$error_msg = '非二级菜单';
					break;
				}

				// 获取子菜单列表
				$child_menu_list = D('Menu')->get_menu_list(array("where_str" => "parent_id = {$menu_info['parent_id']}", "limit" => "0, 1000"));
				if($menu_id == $child_menu_list[0]['menu_id']) break;
				$count = count($child_menu_list);
				foreach($child_menu_list as $k => $v)
				{
					if($v['menu_id'] == $menu_id) $key = $k;
					$sort_order = $count - $k;
					D('Menu')->update_menu($v['menu_id'], array('sort_order' => $sort_order));
				}

				// 修改排序
				D('Menu')->update_menu($child_menu_list[$key]['menu_id'], array('sort_order' => ($count - $key + 1)));
				D('Menu')->update_menu($child_menu_list[$key - 1]['menu_id'], array('sort_order' => ($count - $key)));

				page_location(U('Home/Main/menu_list', 'menu_id='.$menu_info['parent_id']));

			default:
				
				break;
		}

		sns_wk_page_location("",$error_msg);
	}
}