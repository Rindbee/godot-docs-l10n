:github_url: hide

.. _class_Plane:

Plane
=====

Літак в шестигранній нормальній формі.

.. rst-class:: classref-introduction-group

Опис
--------

Представлено нормалізоване рівняння площини. :ref:`normal<class_Plane_property_normal>` - норма площини (а, б, c нормалізовано), а :ref:`d<class_Plane_property_d>` - відстань від походження до площини (в напрямку «нормального»). "Овер" або "Абов" площина вважається боком площини, на якій знаходиться норма.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Покажчик математичної документації <../tutorials/math/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`d<class_Plane_property_d>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`normal<class_Plane_property_normal>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`x<class_Plane_property_x>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`y<class_Plane_property_y>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`z<class_Plane_property_z>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ )                                                                                                                             |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ from\: :ref:`Plane<class_Plane>`\ )                                                                                           |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ a\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, c\: :ref:`float<class_float>`, d\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`\ )                                                                                     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`, d\: :ref:`float<class_float>`\ )                                                      |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`, point\: :ref:`Vector3<class_Vector3>`\ )                                              |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ point1\: :ref:`Vector3<class_Vector3>`, point2\: :ref:`Vector3<class_Vector3>`, point3\: :ref:`Vector3<class_Vector3>`\ )     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`distance_to<class_Plane_method_distance_to>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_center<class_Plane_method_get_center>`\ (\ ) |const|                                                                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_Plane_method_has_point>`\ (\ point\: :ref:`Vector3<class_Vector3>`, tolerance\: :ref:`float<class_float>` = 1e-05\ ) |const|       |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersect_3<class_Plane_method_intersect_3>`\ (\ b\: :ref:`Plane<class_Plane>`, c\: :ref:`Plane<class_Plane>`\ ) |const|                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_ray<class_Plane_method_intersects_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|        |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_segment<class_Plane_method_intersects_segment>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_Plane_method_is_equal_approx>`\ (\ to_plane\: :ref:`Plane<class_Plane>`\ ) |const|                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_Plane_method_is_finite>`\ (\ ) |const|                                                                                             |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_point_over<class_Plane_method_is_point_over>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`     | :ref:`normalized<class_Plane_method_normalized>`\ (\ ) |const|                                                                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`project<class_Plane_method_project>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                          |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Plane_operator_neq_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator *<class_Plane_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Plane_operator_eq_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator unary+<class_Plane_operator_unplus>`\ (\ )                                                    |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator unary-<class_Plane_operator_unminus>`\ (\ )                                                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_Plane_constant_PLANE_YZ:

.. rst-class:: classref-constant

**PLANE_YZ** = ``Plane(1, 0, 0, 0)`` :ref:`🔗<class_Plane_constant_PLANE_YZ>`

У літаку Y та Z (нормальні векторні точки +X).

.. _class_Plane_constant_PLANE_XZ:

.. rst-class:: classref-constant

**PLANE_XZ** = ``Plane(0, 1, 0, 0)`` :ref:`🔗<class_Plane_constant_PLANE_XZ>`

Літак, що розширюється в осях X і Z (нормальні векторні точки + Y).

.. _class_Plane_constant_PLANE_XY:

.. rst-class:: classref-constant

**PLANE_XY** = ``Plane(0, 0, 1, 0)`` :ref:`🔗<class_Plane_constant_PLANE_XY>`

Літак, що простягається в осях X і Y (звичайні векторні точки +Z).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Plane_property_d:

.. rst-class:: classref-property

:ref:`float<class_float>` **d** = ``0.0`` :ref:`🔗<class_Plane_property_d>`

Відстань від початку координат до площини, виражена через :ref:`normal<class_Plane_property_normal>` (відповідно до її напрямку та величини). Фактична абсолютна відстань від початку координат до площини може бути обчислена як ``abs(d) / normal.length()`` (якщо :ref:`normal<class_Plane_property_normal>` має нульову довжину, то ця **Plane** не є дійсною площиною).

У скалярному рівнянні площини ``ax + by + cz = d`` це ``d``, тоді як координати ``(a, b, c)`` представлені властивістю :ref:`normal<class_Plane_property_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_normal:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **normal** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Plane_property_normal>`

Норма площини, як правило, вектор блоку. Чи не є нульовим вектором, як **Plane** з такими :ref:`normal<class_Plane_property_normal>` не представляє дійсну площину.

У scalar рівняння площини ``ax + від + cz = d``, це вектор ``(a, b, c)``, де ``d`` is the :ref:`d<class_Plane_property_d>` майно.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_x:

.. rst-class:: classref-property

:ref:`float<class_float>` **x** = ``0.0`` :ref:`🔗<class_Plane_property_x>`

Компонента X вектора :ref:`normal<class_Plane_property_normal>` площини.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_y:

.. rst-class:: classref-property

:ref:`float<class_float>` **y** = ``0.0`` :ref:`🔗<class_Plane_property_y>`

Компонента Y вектора :ref:`normal<class_Plane_property_normal>` площини.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_z:

.. rst-class:: classref-property

:ref:`float<class_float>` **z** = ``0.0`` :ref:`🔗<class_Plane_property_z>`

Компонента Z вектора :ref:`normal<class_Plane_property_normal>` площини.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Plane_constructor_Plane:

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ ) :ref:`🔗<class_Plane_constructor_Plane>`

Створює стандартну ініціалізацію **Plane** з усіма компонентами, встановленими на ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ from\: :ref:`Plane<class_Plane>`\ )

Constructs a **Plane** як копія даної **Plane**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ a\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, c\: :ref:`float<class_float>`, d\: :ref:`float<class_float>`\ )

Створює площину з чотирьох параметрів. Три компоненти :ref:`normal<class_Plane_property_normal>` результуючої площини - це ``a``, ``b`` та ``c``, а площина має відстань ``d`` від походження.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`\ )

Створює площину з нормального вектора. У літаку буде перетинати походження.

\ ``normal`` площини повинна бути вектором.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`, d\: :ref:`float<class_float>`\ )

Створює площину від нормального вектора і відстані площини від походження.

\ ``normal`` площини повинна бути вектором.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`, point\: :ref:`Vector3<class_Vector3>`\ )

Створює площину з нормального вектора і точки на площині.

\ ``normal`` площини повинна бути вектором.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ point1\: :ref:`Vector3<class_Vector3>`, point2\: :ref:`Vector3<class_Vector3>`, point3\: :ref:`Vector3<class_Vector3>`\ )

Створює площину з трьох точок, з урахуванням годинникового порядку.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Plane_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_distance_to>`

Повертає найкоротшу відстань від площини до позиції ``point``. Якщо точка знаходиться над площиною, відстань буде додатною. Якщо нижче, відстань буде від'ємною.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_get_center:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_center**\ (\ ) |const| :ref:`🔗<class_Plane_method_get_center>`

Повертає центр площини.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector3<class_Vector3>`, tolerance\: :ref:`float<class_float>` = 1e-05\ ) |const| :ref:`🔗<class_Plane_method_has_point>`

Повертає ``true``, якщо ``point`` знаходиться всередині площини. Порівняння використовує власне мінімальне порогове значення ``tolerance``.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersect_3:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersect_3**\ (\ b\: :ref:`Plane<class_Plane>`, c\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_Plane_method_intersect_3>`

Повертає точку перетину три площини ``b``, ``c`` і цей літак. ``null`` повертається.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_intersects_ray>`

Повертає точку перетину променя, що складається з позиції ``from`` та нормалі напрямку ``dir`` з цією площиною. Якщо перетин не знайдено, повертається ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_segment**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_intersects_segment>`

Повертає точку перетину від позиції ``from`` до положення ``to`` з цією площиною. Якщо не знайдено перетину, ``null`` повертається.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to_plane\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_Plane_method_is_equal_approx>`

Повертає ``true``, якщо ця площина і ``to_plane`` приблизно рівні, запустивши :ref:`@GlobalScope.is_equal_about()<class_@GlobalScope_method_is_equal_about>` на кожному компоненті.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Plane_method_is_finite>`

Повертає ``true``, якщо цей літак скінчив, викликаючи :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` на кожному компоненті.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_point_over:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_over**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_is_point_over>`

Повертає ``true``, якщо ``point`` розташований над площиною.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_normalized:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **normalized**\ (\ ) |const| :ref:`🔗<class_Plane_method_normalized>`

Повертає копію площини з нормалізованою :ref:`normal<class_Plane_property_normal>` (тобто це одиничний вектор). Повертає ``Plane(0, 0, 0, 0)``, якщо ``нормаль члена`` не може бути нормалізована (вона має нульову довжину).

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_project:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_project>`

Повертає ортогональну проекцію ``point`` у точку на площині.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Plane_operator_neq_Plane:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Plane_operator_neq_Plane>`

Повертає ``true``, якщо літаки не рівні.

\ **Примітка:** У зв'язку з похибками з плаваючою точкою, розглянемо використання :ref:`is_equal_approx()<class_Plane_method_is_equal_approx>` замість того, яка є більш надійним.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Plane_operator_mul_Transform3D>`

Безперервно трансформується (мультати) **Plane** заданим :ref:`Transform3D<class_Transform3D>` матрицею перетворення.

\ ``plane * трансформатор`` еквівалент ``transform.affine_inverse() * літак``. :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_eq_Plane:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Plane_operator_eq_Plane>`

Повертає ``true``, якщо літаки рівно рівні.

\ **Примітка:** У зв'язку з похибками з плаваючою точкою, розглянемо використання :ref:`is_equal_approx()<class_Plane_method_is_equal_approx>` замість того, яка є більш надійним.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_unplus:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator unary+**\ (\ ) :ref:`🔗<class_Plane_operator_unplus>`

Повертає однакову вартість, якщо ``+`` не було. `` +`` нічого не робить, але іноді це може зробити ваш код більш читабельним.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_unminus:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator unary-**\ (\ ) :ref:`🔗<class_Plane_operator_unminus>`

Повернення негативного значення **Plane**. ``Plane(-p.normal, -p.d)``. Ця операція застібає напрямок нормального вектора, а також затискає значення відстані, що призводить до площини, що знаходиться в тому ж місці, але облицювання протилежного напрямку.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
