<?php
require_once 'php-sdk-7.0.7/autoload.php';

use Qiniu\Auth;
use Qiniu\Storage\UploadManager;
use Qiniu\Storage\BucketManager;

$accessKey = 'VfJvbtgqz7kARgme_VRaZGsdRUd4kP31Aml3H0TM';
$secretKey = 'XzlB2YDAMpjoioHYOKqzZ6t6ruuOHdjl2iS-r2ei';

$auth = new Auth($accessKey, $secretKey);

$bucketMgr = new BucketManager($auth);

$bucket = 'bucket';
// 上传文件到七牛后， 七牛将文件名和文件大小回调给业务服务器

// 生成上传 Token
$policy = array(
    'callbackBody' => 'filename=$(fname)&filesize=$(fsize)',
    'returnUrl' => 'http://yke108.cn/Qiniu/callback.php',
);
$uptoken = $auth->uploadToken($bucket, null, 3600, $policy);
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>上传文件到七牛</title>
<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<form class="form-inline" role="form" method="post" action="http://up.qiniu.com" enctype="multipart/form-data">
   <div class="form-group">
      <label class="sr-only" for="inputfile">文件输入</label>
      <input name="file" type="file" id="inputfile">
   </div>
   <input name="token" type="hidden" value="<?php echo $uptoken; ?>" />
   <button type="submit" class="btn btn-default">提交</button>
</form>
</body>
</html>

