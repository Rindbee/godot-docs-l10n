:github_url: hide

.. _class_PathFollow2D:

PathFollow2D
============

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Точечный сэмплер для :ref:`Path2D<class_Path2D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот узел берет своего родителя :ref:`Path2D<class_Path2D>` и возвращает координаты точки внутри него, учитывая расстояние от первой вершины.

Это полезно для того, чтобы заставить другие узлы следовать по пути, без кодирования шаблона движения. Для этого узлы должны быть дочерними по отношению к этому узлу. Узлы-потомки затем будут двигаться соответственно при установке :ref:`progress<class_PathFollow2D_property_progress>` в этом узле.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cubic_interp<class_PathFollow2D_property_cubic_interp>`     | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`h_offset<class_PathFollow2D_property_h_offset>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_PathFollow2D_property_loop>`                     | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`progress<class_PathFollow2D_property_progress>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`progress_ratio<class_PathFollow2D_property_progress_ratio>` | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`rotates<class_PathFollow2D_property_rotates>`               | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`v_offset<class_PathFollow2D_property_v_offset>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PathFollow2D_property_cubic_interp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cubic_interp** = ``true`` :ref:`🔗<class_PathFollow2D_property_cubic_interp>`

.. rst-class:: classref-property-setget

- |void| **set_cubic_interpolation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_cubic_interpolation**\ (\ )

Если ``true``, положение между двумя кэшированными точками интерполируется кубически, а в противном случае — линейно.

Точки вдоль :ref:`Curve2D<class_Curve2D>` :ref:`Path2D<class_Path2D>` предварительно вычисляются перед использованием для более быстрых вычислений. Затем точка с запрошенным смещением вычисляется путем интерполяции между двумя соседними кэшированными точками. Это может представлять проблему, если кривая делает резкие повороты, так как кэшированные точки могут недостаточно точно следовать кривой.

Есть два решения этой проблемы: либо увеличить количество кэшированных точек и увеличить потребление памяти, либо выполнить кубическую интерполяцию между двумя точками за счет (немного) более медленных вычислений.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

Смещение узла вдоль кривой.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_PathFollow2D_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Если ``true``, любое смещение за пределами длины пути будет зацикливаться, а не останавливаться на концах. Используйте его для циклических путей.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress**\ (\ )

Расстояние вдоль пути в пикселях. Изменение этого значения устанавливает положение этого узла в точке внутри пути.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_progress_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress_ratio** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_progress_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_progress_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress_ratio**\ (\ )

Расстояние вдоль пути как число в диапазоне от 0,0 (для первой вершины) до 1,0 (для последней). Это просто другой способ выражения прогресса внутри пути, поскольку предоставленное смещение умножается внутренне на длину пути.

Его можно установить или получить, только если **PathFollow2D** является дочерним элементом :ref:`Path2D<class_Path2D>`, который является частью дерева сцены, и что этот :ref:`Path2D<class_Path2D>` имеет :ref:`Curve2D<class_Curve2D>` с ненулевой длиной. В противном случае попытка установить это поле выведет ошибку, а получение этого поля вернет ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_rotates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rotates** = ``true`` :ref:`🔗<class_PathFollow2D_property_rotates>`

.. rst-class:: classref-property-setget

- |void| **set_rotates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_rotating**\ (\ )

Если ``true``, этот узел вращается, следуя по пути, при этом направление +X обращено вперед по пути.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

Смещение узла перпендикулярно кривой.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
