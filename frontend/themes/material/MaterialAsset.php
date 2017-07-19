<?php

namespace frontend\themes\material;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class MaterialAsset extends AssetBundle
{
    /*public $basePath = '@webroot';
    public $baseUrl = '@web';*/
    
    public $sourcePath = '@frontend/themes/material/assets';
    
    public $css = [
        'css/material.css',
        'css/project.css',
        'css/project.css.map',
    ];
    public $js = [
        'js/material.js',
        'js/project.js',
        //'assets/js/src.js',
    ];
    /*public $scss =[
        'assets/sass/material.scss',
        'assets/sass/_variables.scss',
        'assets/sass/_utilities.scss',
        'assets/sass/_mixins.scss',
        'assets/sass-project/project.scss',
    ];*/
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
