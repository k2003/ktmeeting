<?php

/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class MaterialAsset extends AssetBundle {

    public $sourcePath = '@frontend/themes/material';
    public $baseUrl = '@web';
    public $css = [
        'css/material-wfont.min.css',
        'css/material.min.css',
        'css/ripples.min.css',
        'css/site.css',
    ];
    public $js = [
        'js/material.min.js',
        'js/ripples.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];

}
