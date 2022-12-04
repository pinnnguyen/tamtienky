<?php

namespace figure_constant;

class constant {
    static $TU_TIEN = 1;
    static $TU_YEU = 2;
    static $NHAN_TOC = 3;
    static $TU_MA = 4;

    static $PER_VIOLENT_DAMAGE_DEFAULT = 1.72;

    static $TU_TIEN_ATTRIBUTE = array(
        'perDamage' => 10,
        'perViolentDamage' => 0.05,
        'perVitality' => 0,
        'perDefense' => 0
    );

    static $TU_YEU_ATTRIBUTE = array(
        'perDamage' => 0,
        'perViolentDamage' => 0,
        'perVitality' => 10,
        'perDefense' => 5
    );

    static $TU_NHAN_TOC_ATTRIBUTE = array(
        'perDamage' => 5,
        'perViolentDamage' => 0,
        'perVitality' => 5,
        'perDefense' => 5
    );

    static $TU_MA_ATTRIBUTE = array(
        'perDamage' => 5,
        'perViolentDamage' => 0.1,
        'perVitality' => 0,
        'perDefense' => 0
    );
}