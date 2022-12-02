<?php

namespace upgrade_rule;

class Rule
{
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