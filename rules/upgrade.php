<?php

namespace upgrade_rule;

class Rule
{
    static $rangesAttach = array(1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.7, 8.5, 9.5, 10.5, 11.5, 12.5, 13.5, 14.5, 15.5, 16.5);
    static $rangesHp = array(10, 30, 50, 70, 90, 110, 130, 150, 180, 210,250,280,310,360,400,450);
    static $rangesDef = array(0.5, 1.5, 2.5, 3.5, 6.5, 7.5, 8.5, 9.5, 10.5, 11.5, 12.5, 13.5, 14.5, 15.5, 16.5);
    static $rangesSwx = array(2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32);

    static function getRangesId()
    {
        return array('1', '2', '3', '4', '5', '6', '7', '8', '9', '10');
    }

    static function getRangesLevel()
    {
        return array(
            0,
            30,
            50,
            70,
            90,
            110,
            130,
            150,
            170,
            190,
            210,
            230,
            250,
            270,
            290,
            310);
    }

    static function getRangesExp()
    {
        return array(
            2.5,
            5,
            7.5,
            10,
            13.5,
            16.6,
            19.5,
            23.5,
            26.5,
            30.5,
            35.5,
            40.5,
            45.5,
            50.5,
            55.5,
            60.5);
    }

    static function getLevel()
    {
        return array(
            'Luyện Khí',
            'Trúc Cơ',
            'Kim Đan',
            'Nguyên Anh Kỳ',
            'Hóa Thần',
            'Luyện Hư',
            'Hợp Thể',
            'Đại Thừa Kỳ',
            "Bán Tiên",
            "Nhân Tiên",
            "Địa Tiên",
            "Thiên Tiên",
            "Huyền Tiên",
            "Thái Ất Tiên",
            "Đại La Kim Tiên",
            "Đại La Tán Tiên");
    }
}