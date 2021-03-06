<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        //'css/materialize.min.css',
        //'css/site.css',
        //'css/navbar.css',        
    ];
    public $js = [
        //'js/materialize.js',
        //'js/collapse.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
        //'macgyer\yii2materializecss\assets\MaterializeAsset',
    ];
}
