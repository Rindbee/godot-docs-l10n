:github_url: hide

.. _class_Curve:

Curve
=====

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Математична крива.

.. rst-class:: classref-introduction-group

Опис
--------

Цей ресурс описує математичну криву шляхом визначення набору точок і дотичних у кожній точці. За замовчуванням він коливається від ``0`` до ``1`` на осях X і Y, але ці діапазони можна змінити.

Зверніть увагу, що багато ресурсів і вузлів припускають, що їм надано *одиничні криві*. Одинична крива – це крива, домен якої (вісь X) знаходиться між ``0`` і ``1``. Деякі приклади використання одиничної кривої: :ref:`CPUParticles2D.angle_curve<class_CPUParticles2D_property_angle_curve>` і :ref:`Line2D.width_curve<class_Line2D_property_width_curve>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`bake_resolution<class_Curve_property_bake_resolution>` | ``100`` |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`max_domain<class_Curve_property_max_domain>`           | ``1.0`` |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`max_value<class_Curve_property_max_value>`             | ``1.0`` |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`min_domain<class_Curve_property_min_domain>`           | ``0.0`` |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`min_value<class_Curve_property_min_value>`             | ``0.0`` |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`point_count<class_Curve_property_point_count>`         | ``0``   |
   +---------------------------+--------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                      | :ref:`add_point<class_Curve_method_add_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, left_tangent\: :ref:`float<class_float>` = 0, right_tangent\: :ref:`float<class_float>` = 0, left_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0, right_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0\ ) |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`bake<class_Curve_method_bake>`\ (\ )                                                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`clean_dupes<class_Curve_method_clean_dupes>`\ (\ )                                                                                                                                                                                                                                                             |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`clear_points<class_Curve_method_clear_points>`\ (\ )                                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_domain_range<class_Curve_method_get_domain_range>`\ (\ ) |const|                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TangentMode<enum_Curve_TangentMode>` | :ref:`get_point_left_mode<class_Curve_method_get_point_left_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                      |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_point_left_tangent<class_Curve_method_get_point_left_tangent>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`              | :ref:`get_point_position<class_Curve_method_get_point_position>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                        |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TangentMode<enum_Curve_TangentMode>` | :ref:`get_point_right_mode<class_Curve_method_get_point_right_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                    |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_point_right_tangent<class_Curve_method_get_point_right_tangent>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                              |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_value_range<class_Curve_method_get_value_range>`\ (\ ) |const|                                                                                                                                                                                                                                             |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`remove_point<class_Curve_method_remove_point>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                            |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`sample<class_Curve_method_sample>`\ (\ offset\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`sample_baked<class_Curve_method_sample_baked>`\ (\ offset\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                               |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_left_mode<class_Curve_method_set_point_left_mode>`\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ )                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_left_tangent<class_Curve_method_set_point_left_tangent>`\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ )                                                                                                                                                                   |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                      | :ref:`set_point_offset<class_Curve_method_set_point_offset>`\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ )                                                                                                                                                                                |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_right_mode<class_Curve_method_set_point_right_mode>`\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ )                                                                                                                                                         |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_right_tangent<class_Curve_method_set_point_right_tangent>`\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ )                                                                                                                                                                 |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_value<class_Curve_method_set_point_value>`\ (\ index\: :ref:`int<class_int>`, y\: :ref:`float<class_float>`\ )                                                                                                                                                                                       |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_Curve_signal_domain_changed:

.. rst-class:: classref-signal

**domain_changed**\ (\ ) :ref:`🔗<class_Curve_signal_domain_changed>`

Видається, коли змінюється :ref:`max_domain<class_Curve_property_max_domain>` або :ref:`min_domain<class_Curve_property_min_domain>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_signal_range_changed:

.. rst-class:: classref-signal

**range_changed**\ (\ ) :ref:`🔗<class_Curve_signal_range_changed>`

Випромінюється, коли :ref:`max_value<class_Curve_property_max_value>` або :ref:`min_value<class_Curve_property_min_value>` змінюється.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Curve_TangentMode:

.. rst-class:: classref-enumeration

enum **TangentMode**: :ref:`🔗<enum_Curve_TangentMode>`

.. _class_Curve_constant_TANGENT_FREE:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_FREE** = ``0``

Тангент на цьому боці точки визначається користувачем.

.. _class_Curve_constant_TANGENT_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_LINEAR** = ``1``

Крива розраховує танджент на цьому боці точки, як ухилий півход на прилеглу точку.

.. _class_Curve_constant_TANGENT_MODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_MODE_COUNT** = ``2``

Загальна кількість доступних режимів тангенсу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Curve_property_bake_resolution:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_resolution** = ``100`` :ref:`🔗<class_Curve_property_bake_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_bake_resolution**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_resolution**\ (\ )

Кількість точок для включення в запечені (тобто кешовані) дані кривих.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_max_domain:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_domain** = ``1.0`` :ref:`🔗<class_Curve_property_max_domain>`

.. rst-class:: classref-property-setget

- |void| **set_max_domain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_domain**\ (\ )

Максимальний домен (координата x), який можуть мати точки.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_max_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_value** = ``1.0`` :ref:`🔗<class_Curve_property_max_value>`

.. rst-class:: classref-property-setget

- |void| **set_max_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_value**\ (\ )

Максимальне значення (координата y), яке можуть мати точки. Дотичні можуть викликати вищі значення між точками.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_min_domain:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_domain** = ``0.0`` :ref:`🔗<class_Curve_property_min_domain>`

.. rst-class:: classref-property-setget

- |void| **set_min_domain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_domain**\ (\ )

Мінімальний домен (координата x), який можуть мати точки.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_min_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_value** = ``0.0`` :ref:`🔗<class_Curve_property_min_value>`

.. rst-class:: classref-property-setget

- |void| **set_min_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_value**\ (\ )

Мінімальне значення (координата y), яке можуть мати точки. Дотичні можуть спричинити нижчі значення між точками.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

Кількість точок, що описують криву.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Curve_method_add_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, left_tangent\: :ref:`float<class_float>` = 0, right_tangent\: :ref:`float<class_float>` = 0, left_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0, right_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0\ ) :ref:`🔗<class_Curve_method_add_point>`

Додає точку до вигину. Для кожної сторони, якщо кут ``*_mode`` є :ref:`TANGENT_LINEAR<class_Curve_constant_TANGENT_LINEAR>`, ``*_tangent`` (в градусах) використовує схил кривої половини до прилеглої точки. Дозволяє користувацьким призначенням до кута ``*_тангента``, якщо ``*_mode`` встановлюється до :ref:`TANGENT_FREE<class_Curve_constant_TANGENT_FREE>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ ) :ref:`🔗<class_Curve_method_bake>`

Знімає запечене кешування точок для кривої.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_clean_dupes:

.. rst-class:: classref-method

|void| **clean_dupes**\ (\ ) :ref:`🔗<class_Curve_method_clean_dupes>`

Вилучає дублікати точок, тобто точки, які менше 0,00001 одиниць (ціна NeoSeo значення) від їх сусіда на кривій.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve_method_clear_points>`

Видаліть всі точки з кривої.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_domain_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_domain_range**\ (\ ) |const| :ref:`🔗<class_Curve_method_get_domain_range>`

Повертає різницю між :ref:`min_domain<class_Curve_property_min_domain>` і :ref:`max_domain<class_Curve_property_max_domain>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_left_mode:

.. rst-class:: classref-method

:ref:`TangentMode<enum_Curve_TangentMode>` **get_point_left_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_left_mode>`

Повертає ліву :ref:`TangentMode<enum_Curve_TangentMode>` на точку ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_left_tangent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_left_tangent**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_left_tangent>`

Повертає лівий кут тангенса (в градусах) для точки в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_position>`

Повертає координати кривої для точки з ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_right_mode:

.. rst-class:: classref-method

:ref:`TangentMode<enum_Curve_TangentMode>` **get_point_right_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_right_mode>`

Повертаємо право :ref:`TangentMode<enum_Curve_TangentMode>` на точку ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_right_tangent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_right_tangent**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_right_tangent>`

Повертає правий кут тангенса (в градусах) для точки з ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_value_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_value_range**\ (\ ) |const| :ref:`🔗<class_Curve_method_get_value_range>`

Повертає різницю між :ref:`min_value<class_Curve_property_min_value>` і :ref:`max_value<class_Curve_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve_method_remove_point>`

Видаляє точку в ``index`` з кривої.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_sample:

.. rst-class:: classref-method

:ref:`float<class_float>` **sample**\ (\ offset\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve_method_sample>`

Повертає значення Y для точки, яка б існувала в позиції X ``offset`` вздовж кривої.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_sample_baked:

.. rst-class:: classref-method

:ref:`float<class_float>` **sample_baked**\ (\ offset\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve_method_sample_baked>`

Повертає значення Y для точки, яка буде існувати на позиції X ``offset`` вздовж кривої за допомогою запеченого кешу. Випікає вигнуті точки, якщо вже не запечена.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_left_mode:

.. rst-class:: classref-method

|void| **set_point_left_mode**\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ ) :ref:`🔗<class_Curve_method_set_point_left_mode>`

Встановіть ліву :ref:`TangentMode<enum_Curve_TangentMode>` для точки в ``index`` до ``mode``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_left_tangent:

.. rst-class:: classref-method

|void| **set_point_left_tangent**\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_left_tangent>`

Встановлює кут лівої дотичної для точки в ``index`` на ``tangent``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **set_point_offset**\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_offset>`

Комплекти офсету з ``0.5``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_right_mode:

.. rst-class:: classref-method

|void| **set_point_right_mode**\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ ) :ref:`🔗<class_Curve_method_set_point_right_mode>`

Налаштовує право :ref:`TangentMode<enum_Curve_TangentMode>` на точку ``index`` до ``mode``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_right_tangent:

.. rst-class:: classref-method

|void| **set_point_right_tangent**\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_right_tangent>`

Встановлює кут прямої дотичної для точки в ``index`` на ``tangent``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_value:

.. rst-class:: classref-method

|void| **set_point_value**\ (\ index\: :ref:`int<class_int>`, y\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_value>`

Призначає вертикальну позицію ``y`` в точку ``index``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
