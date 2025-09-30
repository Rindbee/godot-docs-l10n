:github_url: hide

.. _class_Basis:

Basis
=====

Матрица 3×3 для представления трехмерного вращения и масштаба.

.. rst-class:: classref-introduction-group

Описание
----------------

Встроенный тип :ref:`Variant<class_Variant>` **Basis** — это `матрица <https://en.wikipedia.org/wiki/Matrix_(mathematics)>`__ размером 3×3, используемая для представления вращения, масштаба и сдвига в 3D. Она часто используется в :ref:`Transform3D<class_Transform3D>`.

\ **Basis** состоит из 3 векторов осей, каждый из которых представляет столбец матрицы: :ref:`x<class_Basis_property_x>`, :ref:`y<class_Basis_property_y>` и :ref:`z<class_Basis_property_z>`. Длина каждой оси (:ref:`Vector3.length()<class_Vector3_method_length>`) влияет на масштаб базиса, а направление всех осей влияет на вращение. Обычно эти оси перпендикулярны друг другу. Однако при повороте любой оси по отдельности базис становится сдвинутым. Применение сдвинутого базиса к 3D-модели приведет к тому, что модель будет выглядеть искаженной.

\ **Basis**\ — это:

- **Ортогональный**, если его оси перпендикулярны друг другу.

- **Нормализовано**, если длина каждой оси равна ``1.0``.

- **Равномерно**, если все оси имеют одинаковую длину (см. :ref:`get_scale()<class_Basis_method_get_scale>`).

- **Ортонормальный**, если он одновременно ортогонален и нормализован, что позволяет ему представлять только вращения (см. :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

- **Конформный**, если он одновременно ортогонален и однороден, что гарантирует отсутствие искажений.

Для общего введения см. учебник :doc:`Матрицы и преобразования <../tutorials/math/matrices_and_transforms>`.

\ **Примечание:** Godot использует `правостороннюю систему координат <https://en.wikipedia.org/wiki/Right-hand_rule>`__, что является общепринятым стандартом. Для направлений соглашение для встроенных типов, таких как :ref:`Camera3D<class_Camera3D>`, заключается в том, что -Z указывает вперед (+X — направо, +Y — вверх, а +Z — назад). Другие объекты могут использовать другие соглашения о направлении. Для получения дополнительной информации см. `Соглашения о направлении 3D-активов <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__ учебник.

\ **Примечание:** Базисные матрицы представлены в порядке `column-major <https://www.mindcontrol.org/~hplus/graphics/matrix-layout.html>`__, что совпадает с порядком OpenGL. Однако внутри они хранятся в порядке row-major, что совпадает с порядком DirectX.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Каталог математической документации <../tutorials/math/index>`

- :doc:`Матрицы и преобразования <../tutorials/math/matrices_and_transforms>`

- :doc:`Использование 3D-преобразований <../tutorials/3d/using_transforms>`

- `Демонстрация матричных преобразований <https://godotengine.org/asset-library/asset/2787>`__

- `Демо-версия 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демоверсия 3D вокселей <https://godotengine.org/asset-library/asset/2755>`__

- `Демонстрация игры 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`x<class_Basis_property_x>` | ``Vector3(1, 0, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`y<class_Basis_property_y>` | ``Vector3(0, 1, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`z<class_Basis_property_z>` | ``Vector3(0, 0, 1)`` |
   +-------------------------------+----------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ )                                                                                                                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Basis<class_Basis>`\ )                                                                                       |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )                                                                             |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`determinant<class_Basis_method_determinant>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_euler<class_Basis_method_from_euler>`\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static|                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_scale<class_Basis_method_from_scale>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static|                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_euler<class_Basis_method_get_euler>`\ (\ order\: :ref:`int<class_int>` = 2\ ) |const|                                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`get_rotation_quaternion<class_Basis_method_get_rotation_quaternion>`\ (\ ) |const|                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_scale<class_Basis_method_get_scale>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`inverse<class_Basis_method_inverse>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_conformal<class_Basis_method_is_conformal>`\ (\ ) |const|                                                                                                                                                |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_equal_approx<class_Basis_method_is_equal_approx>`\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const|                                                                                                           |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_finite<class_Basis_method_is_finite>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`looking_at<class_Basis_method_looking_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`orthonormalized<class_Basis_method_orthonormalized>`\ (\ ) |const|                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`rotated<class_Basis_method_rotated>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled<class_Basis_method_scaled>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled_local<class_Basis_method_scaled_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`slerp<class_Basis_method_slerp>`\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotx<class_Basis_method_tdotx>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdoty<class_Basis_method_tdoty>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotz<class_Basis_method_tdotz>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`transposed<class_Basis_method_transposed>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator !=<class_Basis_operator_neq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )      |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator *<class_Basis_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ==<class_Basis_operator_eq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator []<class_Basis_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )            |
   +-------------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_Basis_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_IDENTITY>`

Тождество **Basis**. Это ортонормальный базис без вращения, без сдвига и масштабом :ref:`Vector3.ONE<class_Vector3_constant_ONE>`. Это также означает, что:

- :ref:`x<class_Basis_property_x>` указывает вправо (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`);

- :ref:`y<class_Basis_property_y>` указывает вверх (:ref:`Vector3.UP<class_Vector3_constant_UP>`);

- :ref:`z<class_Basis_property_z>` указывает назад (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

::

    var basis = Basis.IDENTITY
    print("| X | Y | Z")
    print("| %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x])
    print("| %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y])
    print("| %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z])
    # Prints:
    # | X | Y | Z
    # | 1 | 0 | 0
    # | 0 | 1 | 0
    # | 0 | 0 | 1

Если :ref:`Vector3<class_Vector3>` или другой **Basis** преобразуется (умножается) на эту константу, то преобразование не происходит.

\ **Примечание:** В GDScript эта константа эквивалентна созданию :ref:`Basis<class_Basis_constructor_Basis>` без каких-либо аргументов. Ее можно использовать для того, чтобы сделать ваш код более понятным и для согласованности с C#.

.. _class_Basis_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Basis(-1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_X>`

Когда любой базис умножается на :ref:`FLIP_X<class_Basis_constant_FLIP_X>`, он инвертирует все компоненты оси :ref:`x<class_Basis_property_x>` (столбец X).

Когда :ref:`FLIP_X<class_Basis_constant_FLIP_X>` умножается на любой базис, он инвертирует компонент :ref:`Vector3.x<class_Vector3_property_x>` всех осей (строка X).

.. _class_Basis_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Basis(1, 0, 0, 0, -1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_Y>`

Когда любой базис умножается на :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>`, он инвертирует все компоненты оси :ref:`y<class_Basis_property_y>` (столбец Y).

Когда :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>` умножается на любой базис, он инвертирует компонент :ref:`Vector3.y<class_Vector3_property_y>` всех осей (строка Y).

.. _class_Basis_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, -1)`` :ref:`🔗<class_Basis_constant_FLIP_Z>`

Когда любой базис умножается на :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>`, он инвертирует все компоненты оси :ref:`z<class_Basis_property_z>` (столбец Z).

Когда :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>` умножается на любой базис, он инвертирует компонент :ref:`Vector3.z<class_Vector3_property_z>` всех осей (строка Z).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Basis_property_x:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **x** = ``Vector3(1, 0, 0)`` :ref:`🔗<class_Basis_property_x>`

Ось X базиса и столбец ``0`` матрицы.

На основе тождества этот вектор указывает вправо (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`).

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_y:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **y** = ``Vector3(0, 1, 0)`` :ref:`🔗<class_Basis_property_y>`

Ось Y базиса и столбец ``1`` матрицы.

На основе тождества этот вектор направлен вверх (:ref:`Vector3.UP<class_Vector3_constant_UP>`).

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_z:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **z** = ``Vector3(0, 0, 1)`` :ref:`🔗<class_Basis_property_z>`

Ось Z базиса и столбец ``2`` матрицы.

На основе тождества этот вектор указывает назад (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Basis_constructor_Basis:

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ ) :ref:`🔗<class_Basis_constructor_Basis>`

Создает **Basis**, идентичный :ref:`IDENTITY<class_Basis_constant_IDENTITY>`.

\ **Примечание:** В C# это создает **Basis**, все компоненты которого установлены в :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Basis<class_Basis>`\ )

Создает **Basis** как копию заданного **Basis**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )

Создает **Basis**, который представляет только вращение, повернутое вокруг ``axis`` на заданный ``angle`` в радианах. Ось должна быть нормализованным вектором.

\ **Примечание:** Это то же самое, что использовать :ref:`rotated()<class_Basis_method_rotated>` на :ref:`IDENTITY<class_Basis_constant_IDENTITY>` основе. При наличии более одного угла рассмотрите возможность использования :ref:`from_euler()<class_Basis_method_from_euler>` вместо этого.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )

Создает **Basis**, который представляет только вращение из заданного :ref:`Quaternion<class_Quaternion>`.

\ **Примечание:** Кватернионы *только* хранят вращение, а не масштаб. Из-за этого преобразования из **Basis** в :ref:`Quaternion<class_Quaternion>` не всегда могут быть обратными.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ )

Создает **Basis** из 3-х векторов осей. Это столбцы матрицы базиса.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Basis_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Basis_method_determinant>`

Returns the `determinant <https://en.wikipedia.org/wiki/Determinant>`__ of this basis's matrix. For advanced math, this number can be used to determine a few attributes:

- If the determinant is exactly ``0.0``, the basis is not invertible (see :ref:`inverse()<class_Basis_method_inverse>`).

- If the determinant is a negative number, the basis represents a negative scale.

\ **Note:** If the basis's scale is the same for every axis, its determinant is always that scale by the power of 3.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_euler:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_euler**\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static| :ref:`🔗<class_Basis_method_from_euler>`

Создает новый **Basis**, который представляет только вращение из заданного :ref:`Vector3<class_Vector3>` `углов Эйлера <https://en.wikipedia.org/wiki/Euler_angles>`__ в радианах.

- :ref:`Vector3.x<class_Vector3_property_x>` должен содержать угол вокруг оси :ref:`x<class_Basis_property_x>` (тангаж);

- :ref:`Vector3.y<class_Vector3_property_y>` должен содержать угол вокруг оси :ref:`y<class_Basis_property_y>` (рыскание);

- :ref:`Vector3.z<class_Vector3_property_z>` должен содержать угол вокруг оси :ref:`z<class_Basis_property_z>` (крен).


.. tabs::

 .. code-tab:: gdscript

    # Создает базис, ось z которого направлена вниз.
    var my_basis = Basis.from_euler(Vector3(TAU / 4, 0, 0))

    print(my_basis.z) # Prints (0.0, -1.0, 0.0)

 .. code-tab:: csharp

    // Создает базис, ось z которого направлена вниз.
    var myBasis = Basis.FromEuler(new Vector3(Mathf.Tau / 4.0f, 0.0f, 0.0f));

    GD.Print(myBasis.Z); // Prints (0, -1, 0)



Порядок каждого последовательного вращения можно изменить с помощью ``order`` (см. константы :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`). По умолчанию используется соглашение YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`): базис сначала вращается вокруг оси Y (рыскание), затем вокруг оси X (тангаж) и, наконец, вокруг оси Z (крен). При использовании противоположного метода :ref:`get_euler()<class_Basis_method_get_euler>` этот порядок меняется на обратный.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_scale:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static| :ref:`🔗<class_Basis_method_from_scale>`

Создает новый **Basis**, который представляет только масштаб, без вращения или сдвига, из заданного вектора ``scale``.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.from_scale(Vector3(2, 4, 8))

    print(my_basis.x) # Prints (2.0, 0.0, 0.0)
    print(my_basis.y) # Prints (0.0, 4.0, 0.0)
    print(my_basis.z) # Prints (0.0, 0.0, 8.0)

 .. code-tab:: csharp

    var myBasis = Basis.FromScale(new Vector3(2.0f, 4.0f, 8.0f));

    GD.Print(myBasis.X); // Prints (2, 0, 0)
    GD.Print(myBasis.Y); // Prints (0, 4, 0)
    GD.Print(myBasis.Z); // Prints (0, 0, 8)



\ **Примечание:** В линейной алгебре матрица этого базиса также известна как `диагональная матрица <https://en.wikipedia.org/wiki/Diagonal_matrix>`__.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_euler:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_euler**\ (\ order\: :ref:`int<class_int>` = 2\ ) |const| :ref:`🔗<class_Basis_method_get_euler>`

Возвращает вращение этого базиса как :ref:`Vector3<class_Vector3>` `углов Эйлера <https://en.wikipedia.org/wiki/Euler_angles>`__ в радианах. Для возвращаемого значения:

- :ref:`Vector3.x<class_Vector3_property_x>` содержит угол вокруг оси :ref:`x<class_Basis_property_x>` (тангаж);

- :ref:`Vector3.y<class_Vector3_property_y>` содержит угол вокруг оси :ref:`y<class_Basis_property_y>` (рыскание);

- :ref:`Vector3.z<class_Vector3_property_z>` содержит угол вокруг оси :ref:`z<class_Basis_property_z>` (крен).

Порядок каждого последовательного вращения можно изменить с помощью ``order`` (см. константы :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`). По умолчанию используется соглашение YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`): сначала вычисляется Z (крен), затем X (тангаж) и, наконец, Y (рыскание). При использовании противоположного метода :ref:`from_euler()<class_Basis_method_from_euler>` этот порядок меняется на обратный.

\ **Примечание:** Чтобы этот метод возвращал правильный результат, базис должен быть *ортонормальным* (см. :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

\ **Примечание:** Углы Эйлера гораздо более интуитивны, но не подходят для 3D-математики. Из-за этого рассмотрите возможность использования метода :ref:`get_rotation_quaternion()<class_Basis_method_get_rotation_quaternion>`, который возвращает :ref:`Quaternion<class_Quaternion>`.

\ **Примечание:** В доке Inspector вращение базиса часто отображается в углах Эйлера (в градусах), как в случае со свойством :ref:`Node3D.rotation<class_Node3D_property_rotation>`.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_rotation_quaternion:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_rotation_quaternion**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_rotation_quaternion>`

Возвращает вращение этого базиса как :ref:`Quaternion<class_Quaternion>`.

\ **Примечание:** Кватернионы гораздо больше подходят для 3D-математики, но менее интуитивно понятны. Для пользовательских интерфейсов рассмотрите возможность использования метода :ref:`get_euler()<class_Basis_method_get_euler>`, который возвращает углы Эйлера.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_scale>`

Возвращает длину каждой оси этого базиса как :ref:`Vector3<class_Vector3>`. Если базис не сдвинут, это значение является коэффициентом масштабирования. Оно не зависит от вращения.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(2, 0, 0),
        Vector3(0, 4, 0),
        Vector3(0, 0, 8)
    )
    #При любом повороте Базиса его масштаб сохраняется.
    my_basis = my_basis.rotated(Vector3.UP, TAU / 2)
    my_basis = my_basis.rotated(Vector3.RIGHT, TAU / 4)

    print(my_basis.get_scale()) # Prints (2.0, 4.0, 8.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        Vector3(2.0f, 0.0f, 0.0f),
        Vector3(0.0f, 4.0f, 0.0f),
        Vector3(0.0f, 0.0f, 8.0f)
    );
    // При любом повороте Базиса его масштаб сохраняется.
    myBasis = myBasis.Rotated(Vector3.Up, Mathf.Tau / 2.0f);
    myBasis = myBasis.Rotated(Vector3.Right, Mathf.Tau / 4.0f);

    GD.Print(myBasis.Scale); // Prints (2, 4, 8)



\ **Примечание:** Если значение, возвращаемое :ref:`determinant()<class_Basis_method_determinant>`, отрицательное, масштаб также будет отрицательным.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_inverse:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **inverse**\ (\ ) |const| :ref:`🔗<class_Basis_method_inverse>`

Возвращает `обратную матрицу данного базиса <https://en.wikipedia.org/wiki/Invertible_matrix>`__.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_conformal>`

Возвращает ``true``, если этот базис конформный. Конформный базис является как *ортогональным* (оси перпендикулярны друг другу), так и *равномерным* (оси имеют одинаковую длину). Этот метод может быть особенно полезен при физических расчетах.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_Basis_method_is_equal_approx>`

Возвращает ``true``, если этот базис и ``b`` приблизительно равны, вызывая :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` для всех компонентов вектора.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_finite>`

Возвращает ``true``, если этот базис конечен, вызывая :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` для всех компонентов вектора.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_looking_at:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Basis_method_looking_at>`

Создает новый **Basis** с поворотом таким образом, что прямая ось (-Z) указывает на позицию ``target``.

По умолчанию ось -Z (камера вперед) рассматривается как прямая (подразумевается, что +X находится справа). Если ``use_model_front`` равно ``true``, ось +Z (ассет спереди) рассматривается как прямая (подразумевается, что +X находится слева) и указывает на позицию ``target``.

Верхняя ось (+Y) указывает как можно ближе к вектору ``up``, оставаясь перпендикулярной прямой оси. Возвращаемый базис ортонормализован (см. :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

\ ``target`` и ``up`` не могут быть :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>` и не должны быть коллинеарными, чтобы избежать непреднамеренного поворота вокруг локальной оси Z.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Basis_method_orthonormalized>`

Возвращает ортонормированную версию этого базиса. Ортонормированный базис является как *ортогональным* (оси перпендикулярны друг другу), так и *нормализованным* (оси имеют длину ``1.0``), что также означает, что он может представлять только поворот.

Часто бывает полезно вызывать этот метод, чтобы избежать ошибок округления на основе поворота:


.. tabs::

 .. code-tab:: gdscript

    # Вращайте этот Node3D каждый кадр.
    func _process(delta):
        basis = basis.rotated(Vector3.UP, TAU * delta)
        basis = basis.rotated(Vector3.RIGHT, TAU * delta)
        basis = basis.orthonormalized()

 .. code-tab:: csharp

    // Вращайте этот Node3D каждый кадр.
    public override void _Process(double delta)
    {
        Basis = Basis.Rotated(Vector3.Up, Mathf.Tau * (float)delta)
                .Rotated(Vector3.Right, Mathf.Tau * (float)delta)
                .Orthonormalized();
    }



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_rotated:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_rotated>`

Возвращает копию этого базиса, повернутую вокруг заданной ``axis`` на заданный ``angle`` (в радианах). 

\ ``axis`` должен быть нормализованным вектором (см. :ref:`Vector3.normalized()<class_Vector3_method_normalized>`). Если ``angle`` положительный, базис поворачивается против часовой стрелки вокруг оси.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.IDENTITY
    var angle = TAU / 2

    my_basis = my_basis.rotated(Vector3.UP, angle)    # Вращение вокруг вертикальной оси (рыскание).
    my_basis = my_basis.rotated(Vector3.RIGHT, angle) # Вращение вокруг правой оси (тангаж).
    my_basis = my_basis.rotated(Vector3.BACK, angle)  # Вращение вокруг задней оси (крен).

 .. code-tab:: csharp

    var myBasis = Basis.Identity;
    var angle = Mathf.Tau / 2.0f;

    myBasis = myBasis.Rotated(Vector3.Up, angle);    // Вращение вокруг вертикальной оси (рыскание).
    myBasis = myBasis.Rotated(Vector3.Right, angle); // Вращение вокруг правой оси (тангаж).
    myBasis = myBasis.Rotated(Vector3.Back, angle);  // Вращение вокруг задней оси (крен).



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled>`

Возвращает этот базис с компонентами каждой оси, масштабированными по заданным компонентам ``scale``.

Строки матрицы базиса умножаются на компоненты ``scale``. Эта операция является глобальной шкалой (относительно родителя).


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 1, 1),
        Vector3(2, 2, 2),
        Vector3(3, 3, 3)
    )
    my_basis = my_basis.scaled(Vector3(0, 2, -2))

    print(my_basis.x) # Prints (0.0, 2.0, -2.0)
    print(my_basis.y) # Prints (0.0, 4.0, -4.0)
    print(my_basis.z) # Prints (0.0, 6.0, -6.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 1.0f, 1.0f),
        new Vector3(2.0f, 2.0f, 2.0f),
        new Vector3(3.0f, 3.0f, 3.0f)
    );
    myBasis = myBasis.Scaled(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(myBasis.X); // Prints (0, 2, -2)
    GD.Print(myBasis.Y); // Prints (0, 4, -4)
    GD.Print(myBasis.Z); // Prints (0, 6, -6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled_local:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled_local>`

Возвращает этот базис, где каждая ось масштабирована по соответствующему компоненту в заданном ``scale``.

Столбцы базисной матрицы умножаются на компоненты ``scale``. Эта операция является локальной (относительной) шкалой.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 1, 1),
        Vector3(2, 2, 2),
        Vector3(3, 3, 3)
    )
    my_basis = my_basis.scaled_local(Vector3(0, 2, -2))

    print(my_basis.x) # Выводит (0.0, 0.0, 0.0)
    print(my_basis.y) # Выводит (4.0, 4.0, 4.0)
    print(my_basis.z) # Выводит (-6.0, -6.0, -6.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 1.0f, 1.0f),
        new Vector3(2.0f, 2.0f, 2.0f),
        new Vector3(3.0f, 3.0f, 3.0f)
    );
    myBasis = myBasis.ScaledLocal(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(myBasis.X); // Выводит (0, 0, 0)
    GD.Print(myBasis.Y); // Выводит (4, 4, 4)
    GD.Print(myBasis.Z); // Выводит (-6, -6, -6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_slerp:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **slerp**\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_slerp>`

Выполняет сферически-линейную интерполяцию с базисом ``to``, заданным ``weight``. И этот базис, и ``to`` должны представлять поворот.

\ **Пример:** Плавно повернуть :ref:`Node3D<class_Node3D>` к целевому базису с течением времени с :ref:`Tween<class_Tween>`:

::

    var start_basis = Basis.IDENTITY
    var target_basis = Basis.IDENTITY.rotated(Vector3.UP, TAU / 2)

    func _ready():
        create_tween().tween_method(interpolate, 0.0, 1.0, 5.0).set_trans(Tween.TRANS_EXPO)

    func interpolate(weight):
        basis = start_basis.slerp(target_basis, weight)

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotx:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotx**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotx>`

Возвращает транспонированное скалярное произведение между ``with`` и осью :ref:`x<class_Basis_property_x>` (см. :ref:`transposed()<class_Basis_method_transposed>`). 

Это эквивалентно ``basis.x.dot(vector)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdoty:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdoty**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdoty>`

Возвращает транспонированное скалярное произведение между ``with`` и осью :ref:`y<class_Basis_property_y>` (см. :ref:`transposed()<class_Basis_method_transposed>`).

Это эквивалентно ``basis.y.dot(vector)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotz:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotz**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotz>`

Возвращает транспонированное скалярное произведение между ``with`` и осью :ref:`z<class_Basis_property_z>` (см. :ref:`transposed()<class_Basis_method_transposed>`). 

Это эквивалентно ``basis.z.dot(vector)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_transposed:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **transposed**\ (\ ) |const| :ref:`🔗<class_Basis_method_transposed>`

Возвращает транспонированную версию этого базиса. Это превращает столбцы матрицы базиса в строки, а ее строки в столбцы.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 2, 3),
        Vector3(4, 5, 6),
        Vector3(7, 8, 9)
    )
    my_basis = my_basis.transposed()

    print(my_basis.x) # Prints (1.0, 4.0, 7.0)
    print(my_basis.y) # Prints (2.0, 5.0, 8.0)
    print(my_basis.z) # Prints (3.0, 6.0, 9.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 2.0f, 3.0f),
        new Vector3(4.0f, 5.0f, 6.0f),
        new Vector3(7.0f, 8.0f, 9.0f)
    );
    myBasis = myBasis.Transposed();

    GD.Print(myBasis.X); // Prints (1, 4, 7)
    GD.Print(myBasis.Y); // Prints (2, 5, 8)
    GD.Print(myBasis.Z); // Prints (3, 6, 9)



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Basis_operator_neq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_neq_Basis>`

Возвращает ``true``, если компоненты обеих матриц **Basis** не равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>`, который более надежен.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Basis:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_mul_Basis>`

Преобразует (умножает) базис ``right`` на этот базис. 

Это операция, выполняемая между родительским и дочерним :ref:`Node3D<class_Node3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Basis_operator_mul_Vector3>`

Преобразует (умножает) вектор ``right`` на этот базис, возвращая :ref:`Vector3<class_Vector3>`.


.. tabs::

 .. code-tab:: gdscript

    # Базис, который меняет местами оси X/Z и удваивает масштаб.
    var my_basis = Basis(Vector3(0, 2, 0), Vector3(2, 0, 0), Vector3(0, 0, 2))
    print(my_basis * Vector3(1, 2, 3)) # Prints (4.0, 2.0, 6.0)

 .. code-tab:: csharp

    // Базис, который меняет местами оси X/Z и удваивает масштаб.
    var myBasis = new Basis(new Vector3(0, 2, 0), new Vector3(2, 0, 0), new Vector3(0, 0, 2));
    GD.Print(myBasis * new Vector3(1, 2, 3)); // Prints (4, 2, 6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_mul_float>`

Умножает все компоненты **Basis** на заданный :ref:`float<class_float>`. Это влияет на масштаб базиса равномерно, изменяя размер всех 3 осей на значение ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_mul_int>`

Умножает все компоненты **Basis** на заданное :ref:`int<class_int>`. Это влияет на масштаб базиса равномерно, изменяя размер всех 3 осей на значение ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_div_float>`

Делит все компоненты **Basis** на заданный :ref:`float<class_float>`. Это влияет на масштаб базиса равномерно, изменяя размер всех 3 осей на значение ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_div_int>`

Делит все компоненты **Basis** на заданное :ref:`int<class_int>`. Это влияет на масштаб базиса равномерно, изменяя размер всех 3 осей на значение ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_eq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_eq_Basis>`

Возвращает ``true``, если компоненты обеих матриц **Basis** в точности равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>`, который более надежен.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_idx_int>`

Доступ к каждой оси (столбцу) этого базиса по их индексу. Индекс ``0`` такой же, как :ref:`x<class_Basis_property_x>`, индекс ``1`` такой же, как :ref:`y<class_Basis_property_y>`, а индекс ``2`` такой же, как :ref:`z<class_Basis_property_z>`.

\ **Примечание:** В C++ этот оператор обращается к строкам матрицы базиса, *не* к столбцам. Для того же поведения, что и в языках сценариев, используйте методы ``set_column`` и ``get_column`` .

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
