:github_url: hide

.. _class_Transform2D:

Transform2D
===========

A 2×3 матриця, що представляє 2D перетворення.

.. rst-class:: classref-introduction-group

Опис
--------

Вбудований тип :ref:`Variant<class_Variant>` методу **Transform2D** — це матриця розміром 2×3, що представляє перетворення у двовимірному просторі. Вона містить три значення :ref:`Vector2<class_Vector2>`: :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>` та :ref:`origin<class_Transform2D_property_origin>`. Разом вони можуть представляти переміщення, обертання, масштаб та нахил.

Осі :ref:`x<class_Transform2D_property_x>` та :ref:`y<class_Transform2D_property_y>` утворюють матрицю 2×2, відому як **basis** перетворення. Довжина кожної осі (:ref:`Vector2.length()<class_Vector2_method_length>`) впливає на масштаб перетворення, тоді як напрямок усіх осей впливає на обертання. Зазвичай обидві осі перпендикулярні одна до одної. Однак, коли ви обертаєте одну вісь окремо, перетворення стає нахиленим.

Застосування нахиленого перетворення до двовимірного спрайту призведе до спотворення спрайту.

Загальний вступ див. у навчальному посібнику :doc:`Матриці та перетворення <../tutorials/math/matrices_and_transforms>`. **Примітка:** На відміну від :ref:`Transform3D<class_Transform3D>`, для типу :ref:`Basis<class_Basis>` немає двовимірного еквівалента. Усі згадки про "basis" стосуються компонентів :ref:`x<class_Transform2D_property_x>` та :ref:`y<class_Transform2D_property_y>` класу **Transform2D**.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Покажчик математичної документації <../tutorials/math/index>`

- :doc:`Матриці та перетворення <../tutorials/math/matrices_and_transforms>`

- `Демонстраційне перетворення матриці <https://godotengine.org/asset-library/asset/2787>`__

- `Демонстрація гри 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`origin<class_Transform2D_property_origin>` | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`x<class_Transform2D_property_x>`           | ``Vector2(1, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`y<class_Transform2D_property_y>`           | ``Vector2(0, 1)`` |
   +-------------------------------+--------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ )                                                                                                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                            |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ ) |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`affine_inverse<class_Transform2D_method_affine_inverse>`\ (\ ) |const|                                                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform<class_Transform2D_method_basis_xform>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform_inv<class_Transform2D_method_basis_xform_inv>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`determinant<class_Transform2D_method_determinant>`\ (\ ) |const|                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_origin<class_Transform2D_method_get_origin>`\ (\ ) |const|                                                                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_rotation<class_Transform2D_method_get_rotation>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_scale<class_Transform2D_method_get_scale>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_skew<class_Transform2D_method_get_skew>`\ (\ ) |const|                                                                                                    |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`interpolate_with<class_Transform2D_method_interpolate_with>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`inverse<class_Transform2D_method_inverse>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_conformal<class_Transform2D_method_is_conformal>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_equal_approx<class_Transform2D_method_is_equal_approx>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const|                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_finite<class_Transform2D_method_is_finite>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`looking_at<class_Transform2D_method_looking_at>`\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`orthonormalized<class_Transform2D_method_orthonormalized>`\ (\ ) |const|                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated<class_Transform2D_method_rotated>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated_local<class_Transform2D_method_rotated_local>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled<class_Transform2D_method_scaled>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                 |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled_local<class_Transform2D_method_scaled_local>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated<class_Transform2D_method_translated>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated_local<class_Transform2D_method_translated_local>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_Transform2D_operator_neq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator *<class_Transform2D_operator_mul_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`operator *<class_Transform2D_operator_mul_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator *<class_Transform2D_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_Transform2D_operator_eq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator []<class_Transform2D_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_Transform2D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_IDENTITY>`

Ідентичність **Transform2D**. Це перетворення без трансляції, без повороту та масштабом :ref:`Vector2.ONE<class_Vector2_constant_ONE>`. Це також означає, що: 

- :ref:`x<class_Transform2D_property_x>` вказує праворуч (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`); 

- :ref:`y<class_Transform2D_property_y>` вказує вниз (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`). 

::
 
    var transform = Transform2D.IDENTITY 
    print("| X | Y | Початок") 
    print("| %.f | %.f | %.f" % [transform.x.x, transform.y.x, transform.origin.x]) 
    print("| %.f | %.f | %.f" % [transform.x.y, transform.y.y, transform.origin.y]) 
    # Відбитки: 
    # | X | Y | Походження 
    # | 1 | 0 | 0 
    # | 0 | 1 | 0  

Якщо :ref:`Vector2<class_Vector2>`, :ref:`Rect2<class_Rect2>`, :ref:`PackedVector2Array<class_PackedVector2Array>` або інший **Transform2D** трансформується (помножується) на цю константу, перетворення не відбувається. 

\ **Примітка:** у GDScript ця константа еквівалентна створенню :ref:`Transform2D<class_Transform2D_constructor_Transform2D>` без будь-яких аргументів. Його можна використовувати, щоб зробити ваш код зрозумілішим і узгоджено з C#.

.. _class_Transform2D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform2D(-1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_X>`

Коли будь-яке перетворення множиться на :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>`, воно заперечує всі компоненти осі :ref:`x<class_Transform2D_property_x>` (стовпець X).

Коли :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>` множать на будь-яке перетворення, воно заперечує компонент :ref:`Vector2.x<class_Vector2_property_x>` усіх осей (рядок X).

.. _class_Transform2D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform2D(1, 0, 0, -1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_Y>`

Коли будь-яке перетворення множиться на :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>`, воно заперечує всі компоненти осі :ref:`y<class_Transform2D_property_y>` (стовпець Y).

Коли :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>` множать на будь-яке перетворення, воно заперечує компонент :ref:`Vector2.y<class_Vector2_property_y>` усіх осей (рядок Y).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Transform2D_property_origin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **origin** = ``Vector2(0, 0)`` :ref:`🔗<class_Transform2D_property_origin>`

Зміщення перекладу цього перетворення, а стовпчик ``2`` матриці. У 2D просторі це можна побачити як позицію.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_x:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **x** = ``Vector2(1, 0)`` :ref:`🔗<class_Transform2D_property_x>`

Восьма трансформаційна вісь X, а стовпчик ``0`` матриці. Комбінований з :ref:`y<class_Transform2D_property_y>`, це являє собою обертання трансформатора, масштаб і шавлія.

На ідентичності перетворюються, це векторні точки прямо (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_y:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **y** = ``Vector2(0, 1)`` :ref:`🔗<class_Transform2D_property_y>`

Вісь Y основи трансформації та стовпець ``1`` матриці. У поєднанні з :ref:`x<class_Transform2D_property_x>` це означає поворот, масштаб і нахил перетворення. 

У тотожному перетворенні цей вектор вказує вниз (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Transform2D_constructor_Transform2D:

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ ) :ref:`🔗<class_Transform2D_constructor_Transform2D>`

Створює **Transform2D**, ідентичний :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>`.

\ **Примітка.** У C# це створює **Transform2D** з усіма його компонентами, встановленими на :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )

Конструює **Transform2D** як копію заданого **Transform2D**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Constructs a **Transform2D** з заданого кута (в редисках) і положення.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Constructs **Transform2D** з заданого кута (в редисках), масштабу, шавлії (в радіяхах), а також положення.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )

Створює **Transform2D** з 3 значень :ref:`Vector2<class_Vector2>`, що представляють :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>` та :ref:`origin<class_Transform2D_property_origin>` (три стовпці матриці).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Transform2D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_affine_inverse>`

Повертає інвертовану версію цього перетворення. На відміну від :ref:`inverse()<class_Transform2D_method_inverse>`, цей метод працює практично з будь-яким базисом, в тому числі і неоднорідним, але повільніше. 

\ **Примітка.** Щоб цей метод повернув правильний результат, основа перетворення повинна мати визначник, який не є точно ``0.0`` (див. :ref:`determinant()<class_Transform2D_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform>`

Повертає копію вектора ``v``, перетворена (multiplied) матрицею перетворення. На відміну від оператора мультиплікації (``*``, цей метод ігнорує :ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform_inv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform_inv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform_inv>`

Повертає копію вектора ``v``, перетвореного (помноженого) на матрицю базису оберненого перетворення (див. :ref:`inverse()<class_Transform2D_method_inverse>`). Цей метод ігнорує ``початок координат члена``.

\ **Примітка:** Цей метод припускає, що базис цього перетворення є *ортонормованим* (див. :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). Якщо базис не є ортонормованим, замість нього слід використовувати ``transform.affine_inverse().basis_xform(vector)`` (див. :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_determinant>`

Повертає `визначник <https://en.wikipedia.org/wiki/Determinant>`__ цієї матриці основи перетворення. Для поглибленої математики це число можна використовувати для визначення кількох атрибутів: 

- Якщо визначник дорівнює точно ``0.0``, базис не є оборотним (див. :ref:`inverse()<class_Transform2D_method_inverse>`). 

- Якщо визначник є від'ємним числом, основа представляє від'ємну шкалу. 

\ **Примітка:** Якщо масштаб базису однаковий для кожної осі, його визначником завжди буде цей масштаб у ступені 2.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_origin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_origin**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_origin>`

Повертає перетворення цього перетворення. Еквівалентно :ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rotation**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_rotation>`

Повертає обертання цього перетворення (у радіанах). Це еквівалентно :ref:`x<class_Transform2D_property_x>`'s кут (див. :ref:`Vector2.angle()<class_Vector2_method_angle>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_scale>`

Повертає довжину :ref:`x<class_Transform2D_property_x>` і :ref:`y<class_Transform2D_property_y>` як :ref:`Vector2<class_Vector2>`. Якщо основа цього перетворення не перекошена, це значення є коефіцієнтом масштабування. На нього не впливає обертання.


.. tabs::

 .. code-tab:: gdscript

    var my_transform = Transform2D(
        Vector2(2, 0),
        Vector2(0, 4),
        Vector2(0, 0)
    )
    # Обертання Transform2D у будь-який спосіб зберігає його масштаб.
    my_transform = my_transform.rotated(TAU / 2)

    print(my_transform.get_scale()) # Друкує (2.0, 4.0)

 .. code-tab:: csharp

    var myTransform = new Transform2D(
        Vector3(2.0f, 0.0f),
        Vector3(0.0f, 4.0f),
        Vector3(0.0f, 0.0f)
    );
    // Обертання Transform2D у будь-який спосіб зберігає його масштаб.
    myTransform = myTransform.Rotated(Mathf.Tau / 2.0f);

    GD.Print(myTransform.GetScale()); // Друкує (2, 4)



\ **Примітка:** Якщо значення, яке повертає :ref:`determinant()<class_Transform2D_method_determinant>`, є від’ємним, масштаб також є від’ємним.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_skew:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skew**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_skew>`

Повертаємо цю трансформовану шавбу (в редисках).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **interpolate_with**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_interpolate_with>`

Повертає результат лінійної інтерполяції між цим перетворенням і ``xform`` за заданим ``weight``.

\ ``weight`` має бути між ``0.0`` і ``1.0`` (включно). Значення за межами цього діапазону дозволені, і натомість їх можна використовувати для *екстраполяції*.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_inverse>`

Повертає `інвертовану версію цього перетворення <https://en.wikipedia.org/wiki/Invertible_matrix>`__. 

\ **Примітка:** Щоб цей метод повертав належним чином, базис перетворення має бути *ортонормованим* (див. :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). Це означає, що основа повинна представляти лише обертання. Якщо це не так, замість цього використовуйте :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_conformal>`

Повертає ``true``, якщо ця трансформація є конформаційною. Конформалізована основа — як *orthogonal* (віски є перпендикулярно один одному) і *uniform* (такі ж довжини діляться осі). Цей метод може бути особливо корисним при розрахунку фізики.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const| :ref:`🔗<class_Transform2D_method_is_equal_approx>`

Повертає ``true``, якщо це перетворення і ``xform`` є приблизно рівні, запустивши :ref:`@GlobalScope.is_equal_about()<class_@GlobalScope_method_is_equal_about>` на кожному компоненті.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_finite>`

Повертає ``true``, якщо це перетворення скінченно, викликаючи :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` на кожному компоненті.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **looking_at**\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Transform2D_method_looking_at>`

Повертає копію перетворення, повернуту таким чином, що повернута вісь X вказує на позицію ``target`` у глобальному просторі.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_orthonormalized>`

Повертає копію цього перетворення з ортонормованим базисом. Ортонормований базис є як *ортогональним* (осі перпендикулярні одна до одної), так і *нормалізованим* (осі мають довжину ``1.0``), що також означає, що він може представляти лише обертання.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated>`

Повертає копію цього перетворення, повернуту на вказаний ``angle`` (у радіанах). 

Якщо параметр ``angle`` додатний, трансформація обертається за годинниковою стрілкою. 

Цей метод є оптимізованою версією множення заданого перетворення ``X`` на відповідне перетворення обертання ``R`` зліва, тобто ``R * X``. 

Це можна розглядати як трансформацію щодо глобального/батьківського кадру.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated_local**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated_local>`

Повертає копію перетворення, що обертається заданим ``angle`` (в радіях).

Цей метод є оптимізованим варіантом помноження даної трансформації ``X`` з відповідним перетворенням обертання ``R`` з правого, тобто ``X * R``.

Це можна побачити як перетворювати по відношенню до локального каркасу.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled>`

Повертає копію трансформаційного вагового коефіцієнта ``scale``.

Цей метод є оптимізованим варіантом розмноження даної трансформації ``X`` з відповідним перетворенням масштабування ``S`` з лівого, тобто ``S * X``.

Це може бути перетворена з точки зору глобального/парентного каркасу.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled_local**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled_local>`

Повертає копію трансформаційного вагового коефіцієнта ``scale``.

Цей метод є оптимізованим варіантом помноження даної трансформації ``X`` з відповідним перетворенням масштабування ``S`` з правого, тобто ``X * S``.

Це можна побачити як перетворювати по відношенню до локального каркасу.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated>`

Повертає копію перетворення, що перекладається за вказаною ``offset``.

Цей метод є оптимізованим варіантом помноження даної трансформації ``X`` з відповідним перетворенням перекладу ``T`` з лівого, тобто ``T * X``.

Це може бути перетворена з точки зору глобального/парентного каркасу.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated_local**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated_local>`

Повертає копію перетворення, що перекладається за вказаною ``offset``.

Цей метод є оптимізованим варіантом помноження даної трансформації ``X`` з відповідним перекладом ``T`` з правого, тобто ``X * T``.

Це можна побачити як перетворювати по відношенню до локального каркасу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Transform2D_operator_neq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_neq_Transform2D>`

Повертаємо ``true``, якщо компоненти обох трансформаторів не рівні.

\ **Примітка:** У зв'язку з похибками з плаваючою точкою, розглянемо використання :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>` замість того, яка є більш надійним.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator ***\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Transform2D_operator_mul_PackedVector2Array>`

Трансформи (multiplies) кожен :ref:`Vector2<class_Vector2>` елемент даної :ref:`PackedVector2Array<class_PackedVector2Array>` за допомогою цієї матриці перетворення.

На більших масивах ця операція набагато швидше, ніж перетворення кожного :ref:`Vector2<class_Vector2>` індивідуально.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Rect2:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Rect2>`

Трансформи (multiplies) :ref:`Rect2<class_Rect2>` цієї матриці перетворення.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Transform2D>`

Перетворює (множить) це перетворення на перетворення ``right``.

Це операція, що виконується між батьківським та дочірнім вузлами :ref:`CanvasItem<class_CanvasItem>`.

\ **Примітка:** Якщо вам потрібно змінити лише один атрибут цього перетворення, розгляньте можливість використання одного з наступних методів:

- Щодо перетворення див. :ref:`translated()<class_Transform2D_method_translated>` або :ref:`translated_local()<class_Transform2D_method_translated_local>`.

- Щодо обертання див. :ref:`rotated()<class_Transform2D_method_rotated>` або :ref:`rotated_local()<class_Transform2D_method_rotated_local>`.

- Щодо масштабування див. :ref:`scaled()<class_Transform2D_method_scaled>` або :ref:`scaled_local()<class_Transform2D_method_scaled_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Vector2>`

Трансформи (multiplies) :ref:`Vector2<class_Vector2>` за допомогою цієї матриці перетворення.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_mul_float>`

Багатофункціональні всі компоненти **Transform2D**, в тому числі :ref:`origin<class_Transform2D_property_origin>`. Це впливає на шкалу трансформа.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_mul_int>`

Множить всі компоненти **Transform2D** на задане число :ref:`int<class_int>`, включаючи :ref:`origin<class_Transform2D_property_origin>`. Це рівномірно впливає на масштаб перетворення.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_div_float>`

Ділить усі компоненти **Transform2D** на задане число з плаваючою точкою :ref:`float<class_float>`, включаючи :ref:`origin<class_Transform2D_property_origin>`. Це рівномірно впливає на масштаб перетворення.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_div_int>`

Ділить усі компоненти **Transform2D** на задане число :ref:`int<class_int>`, включаючи :ref:`origin<class_Transform2D_property_origin>`. Це рівномірно впливає на масштаб перетворення.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_eq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_eq_Transform2D>`

Повертає ``true``, якщо компоненти обох перетворень абсолютно рівні.

\ **Примітка:** Через помилки точності чисел з плаваючою комою, розгляньте можливість використання :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>` замість цього, що є більш реалістичним.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_idx_int>`

Отримує доступ до кожної осі (стовпця) цього перетворення за їх індексом. Індекс ``0`` такий самий, як :ref:`x<class_Transform2D_property_x>`, індекс ``1`` такий самий, як :ref:`y<class_Transform2D_property_y>`, а індекс ``2`` такий самий, як :ref:`origin<class_Transform2D_property_origin>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
