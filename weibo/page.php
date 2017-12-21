<?php
/**
 * ��ת��ҳ��
 */
class page {

  var $file;      // ʹ�ø�����ļ�,Ĭ��Ϊ PHP_SELF
  var $hashstr;   // ê�㣬��ҳ�������Ǹ�ê
  var $varstr;    // Ҫ���ݵı�������
  var $target = "_self";  // 
  
  
  var $output;    // ���
  var $pvar = "p";    // ��ǰҳ��
  var $psize;     // ҳ���С
  var $curr;      // ��ǰҳ��
  var $tpage;     // ��ҳ��
  var $pagenum=4;   // ��ʾ��ǰҳǰ�������ҳ�룬Ĭ��Ϊ2�� ��ǰҳ����8����ô��ʾ��ҳ����6,7,8,9,10
  
  var $pre_page = '<��һҳ';
  var $next_page = '��һҳ>';

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
   * ��ҳ����
   *
   * @param int $pagesize // һҳ��ʾ������
   * @param int $total  // ������
   * @param int $current  // ��ǰҳ��
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
    
    // �ļ�
    if (empty($this->file))
    {
      $this->file = $_SERVER['PHP_SELF'];
      $this->file = preg_replace("/\.htx&.*/",".php",$this->file);
      $this->file = $this->file."?";
    }

    if ($this->tpage > 1) {

      // �ж���û����һҳ
      if ( $this->curr > 1 )
      {
        $this->output_pre = '<a href="'.$this->combo_page_url($this->curr-1).'" class="prev" target="'.$this->target.'">'.$this->pre_page.'</a> ';
      }
      else
      {
        $this->output_pre = '<span class="disable prev">'.$this->pre_page.'</span> ';
      }

      // �ж��Ƿ���Ҫ������ʾ��һҳ
      if ( ($this->curr - $this->pagenum) > 1 )
      {
        $this->output_first = ' <a href="'.$this->combo_page_url(1).'" role="page-go" data-page="1" target="'.$this->target.'">1</a> ';
      
        if(($this->curr - $this->pagenum) > 2)
        {
        $this->output_first .= ' <span class="ellipsis">...</span> ';
        }
      }
      
      
      // �ж���û����һҳ
      if ( $this->curr < $this->tpage )
      {
        $this->output_next = '<a href="'.$this->combo_page_url($this->curr+1).'" class="next" target="'.$this->target.'">'.$this->next_page.'</a>';
      }
      else 
      {
        $this->output_next = '<span class="disable next">'.$this->next_page.'</span>';
      }
  
      // �ж��Ƿ���Ҫ������ʾ���һҳ
      if ( ($this->tpage > ($this->curr + $this->pagenum)) )
      {
        if( ($this->tpage - ($this->curr + $this->pagenum)) > 1 )
        {
        $this->output_last = '<span class="ellipsis">...</span> ';
        }
        $this->output_last .= '<a href="'.$this->combo_page_url($this->tpage).'" target="'.$this->target.'">'.$this->tpage.'</a> ';
      }
      
      // ҳ������
      
      // ǰ��ҳ
      for ( $i=($this->curr-$this->pagenum); $i<$this->curr;$i++ )
      {
        if ( $i > 0 )
        {
          $this->output_page .= '<a href="'.$this->combo_page_url($i).'" target="'.$this->target.'">'.$i.'</a> ';
        }
      }
      
      // ��ǰҳ
      $this->output_page .= '<span class="current">'.$this->curr.'</span> ';
      
      // ��ҳ
      
      for ( $i=($this->curr+1); $i<($this->curr+$this->pagenum+1);$i++ )
      {
        if ( $i <= $this->tpage )
        {
          $this->output_page .= '<a href="'.$this->combo_page_url($i).'" target="'.$this->target.'">'.$i.'</a> ';
        }
      }

      $this->output_jump = ' �� '.$this->tpage.' ҳ ��ת���� <input style="text-align:center" type="text" size="1" id="page_jump_value" value="'.$this->curr .'" /> ҳ <input type="button" value="ȷ��" onclick="javascript:document.location.href = \''. $this->file.$this->pvar.'=\'+document.getElementById(\'page_jump_value\').value+\''.$this->varstr .'\'" />';
    }
    else
    {
      // ֻ��1ҳ
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