<?php

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\themes\nontmaterial;
use common\widgets\Alert;
//use macgyer\yii2materializecss\assets\MaterializeAsset;
//use macgyer\yii2materializecss\widgets\Nav;
//use macgyer\yii2materializecss\widgets\NavBar;
//use macgyer\yii2materializecss\widgets\Breadcrumbs;

nontmaterial\MaterialAsset::register($this);
//MaterializeAsset::register($this);
?>

<?php $this->beginPage() ?>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>
<!---------------NavBar------------------>   

<div class="nav-wrapper">
    <?php
    NavBar::begin([
        'brandLabel' => 'ระบบจองห้องประชุมออนไลน์',
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar navbar-fixed cyan darken-3',
        ],
    ]);
    $menuItems = [
        ['label' => 'หน้าหลัก', 'url' => ['/site/index']],
        ['label' => 'ปฏิทินห้องประชุม', 'url' => ['/calendar/index']],
        ['label' => 'จองห้องประชุม', 'url' => ['#']],
        //['label' => 'About', 'url' => ['/site/about']],
        //['label' => 'Contact', 'url' => ['/site/contact']],
    ];
    if (Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => 'สมัครสมาชิก', 'url' => ['/site/signup']];
        $menuItems[] = ['label' => 'เข้าสู่ระบบ', 'url' => ['/site/login']];
    } else {
        $menuItems[] = '<li>'
            . Html::beginForm(['/site/logout'], 'post')
            . Html::submitButton(
                'Logout (' . Yii::$app->user->identity->username . ')',
                ['class' => 'btn btn-link logout']
            )
            . Html::endForm()
            . '</li>';
    }
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right hide-on-med-and-down'],
        'items' => $menuItems,
    ]);
    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>
<!--------------Footer-------------------->   
<footer class="page-footer cyan darken-3">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            &copy; Klongthom Hospital <?= date('Y') ?>
            <!--a class="grey-text text-lighten-4 right" href="#!">More Links</a-->
            
            </div>
          </div>
        </footer>

<!---------------------------------->   
<?php $this->endBody() ?>

</body>
</html>
<?php $this->endPage() ?>