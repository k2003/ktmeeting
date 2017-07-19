<?php

namespace frontend\controllers;

use yii\web\Controller;


class CalendarController extends Controller {
    public function actionIndex()
    {
        return $this->render('index');
    }
    
    
}
