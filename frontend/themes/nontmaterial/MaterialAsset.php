<?php

namespace frontend\themes\nontmaterial;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class MaterialAsset extends AssetBundle
{
    /*public $basePath = '@webroot';
    public $baseUrl = '@web';*/
    
    public $sourcePath = '@frontend/themes/nontmaterial/assets';
    
    public $css = [
        'css/materialize.min.css',
        'css/style.css',
    ];
    public $js = [
        'js/init.js',
        'js/materialize.min.js',
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
