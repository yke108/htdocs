<?php
/**
 * 跳转分页类
 */
class page {

  var $file;      // 使用该类的文件,默认为 PHP_SELF
  var $hashstr;   // 锚点，翻页后跳到那个锚
  var $varstr;    // 要传递的变量数组
  var $target = "_self";  // 
  
  
  var $output;    // 输出
  var $pvar = "p";    // 当前页码
  var $psize;     // 页面大小
  var $curr;      // 当前页面
  var $tpage;     // 总页数
  var $pagenum=4;   // 显示当前页前后各多少页码，默认为2。 当前页若是8，那么显示的页码是6,7,8,9,10
  
  var $pre_page = '<上一页';
  var $next_page = '下一页>';

  var $output_pre;
  var $output_first;
  var $output_page;
  var $output_last;
  var $output_next;
  var $output_jump;

  public function __construct()
  {
    
  }
  
  /**
   * 分页设置
   *
   * @param int $pagesize // 一页显示多少条
   * @param int $total  // 总条数
   * @param int $current  // 当前页数
   */
  public function set($pagesize=20,$total,$current=false) {

    $total = (int)$total;
    $this->tpage = ceil($total/$pagesize);
    if (!$current) {$current = isset($_GET[$this->pvar]) ? $_GET[$this->pvar] : 1;}
    if ($current>$this->tpage) {$current = $this->tpage;}
    if ($current<1) {$current = 1;}
    $this->curr  = $current;
    $this->psize = $pagesize;

    $this->output_total = $total;
    if ($this->hashstr) { $this->varstr = $this->varstr."#".$this->hashstr;}
    
    // 文件
    if (empty($this->file))
    {
      $this->file = $_SERVER['PHP_SELF'];
      $this->file = preg_replace("/\.htx&.*/",".php",$this->file);
      $this->file = $this->file."?";
    }

    if ($this->tpage > 1) {

      // 判断有没有上一页
      if ( $this->curr > 1 )
      {
        $this->output_pre = '<a href="'.$this->combo_page_url($this->curr-1).'" class="prev" target="'.$this->target.'">'.$this->pre_page.'</a> ';
      }
      else
      {
        $this->output_pre = '<span class="disable prev">'.$this->pre_page.'</span> ';
      }

      // 判断是否需要独立显示第一页
      if ( ($this->curr - $this->pagenum) > 1 )
      {
        $this->output_first = ' <a href="'.$this->combo_page_url(1).'" role="page-go" data-page="1" target="'.$this->target.'">1</a> ';
      
        if(($this->curr - $this->pagenum) > 2)
        {
        $this->output_first .= ' <span class="ellipsis">...</span> ';
        }
      }
      
      
      // 判断有没有下一页
      if ( $this->curr < $this->tpage )
      {
        $this->output_next = '<a href="'.$this->combo_page_url($this->curr+1).'" class="next" target="'.$this->target.'">'.$this->next_page.'</a>';
      }
      else 
      {
        $this->output_next = '<span class="disable next">'.$this->next_page.'</span>';
      }
  
      // 判断是否需要独立显示最后一页
      if ( ($this->tpage > ($this->curr + $this->pagenum)) )
      {
        if( ($this->tpage - ($this->curr + $this->pagenum)) > 1 )
        {
        $this->output_last = '<span class="ellipsis">...</span> ';
        }
        $this->output_last .= '<a href="'.$this->combo_page_url($this->tpage).'" target="'.$this->target.'">'.$this->tpage.'</a> ';
      }
      
      // 页面数据
      
      // 前几页
      for ( $i=($this->curr-$this->pagenum); $i<$this->curr;$i++ )
      {
        if ( $i > 0 )
        {
          $this->output_page .= '<a href="'.$this->combo_page_url($i).'" target="'.$this->target.'">'.$i.'</a> ';
        }
      }
      
      // 当前页
      $this->output_page .= '<span class="current">'.$this->curr.'</span> ';
      
      // 后几页
      
      for ( $i=($this->curr+1); $i<($this->curr+$this->pagenum+1);$i++ )
      {
        if ( $i <= $this->tpage )
        {
          $this->output_page .= '<a href="'.$this->combo_page_url($i).'" target="'.$this->target.'">'.$i.'</a> ';
        }
      }

      $this->output_jump = ' 共 '.$this->tpage.' 页 跳转至第 <input style="text-align:center" type="text" size="1" id="page_jump_value" value="'.$this->curr .'" /> 页 <input type="button" value="确定" onclick="javascript:document.location.href = \''. $this->file.$this->pvar.'=\'+document.getElementById(\'page_jump_value\').value+\''.$this->varstr .'\'" />';
    }
    else
    {
      // 只有1页
      //$this->output_page = '<span class="current">1</span>';
    }

    $this->output = $this->output_pre.$this->output_first.$this->output_page.$this->output_last.$this->output_next.$this->output_jump;
  }

  public function output($return = true) {
    if ($return) {
      return $this->output;
    } else {
      echo $this->output;
    }
  }

  public function limit() {
    return (($this->curr-1)*$this->psize).','.$this->psize;
  }
  
  function setvar($data) {
    foreach ($data as $k=>$v) {
      $this->varstr.='&amp;'.$k.'='.urlencode($v);
    }
  }
  
  public function combo_page_url($page)
  {
    return $this->file.$this->pvar.'='.$page.$this->varstr;
  }

}
?>