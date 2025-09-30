:github_url: hide

.. _class_Parallax2D:

Parallax2D
==========

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, используемый для создания параллаксного прокручиваемого фона.

.. rst-class:: classref-introduction-group

Описание
----------------

**Parallax2D** используется для создания эффекта параллакса. Он может двигаться с разной скоростью относительно движения камеры с помощью :ref:`scroll_scale<class_Parallax2D_property_scroll_scale>`. Это создает иллюзию глубины в 2D-игре. Если требуется ручная прокрутка, положение :ref:`Camera2D<class_Camera2D>` можно игнорировать с помощью :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>`.

\ **Примечание:** Любые изменения положения этого узла, внесенные после того, как он вошел в дерево сцены, будут переопределены, если :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` равно ``false`` или :ref:`screen_offset<class_Parallax2D_property_screen_offset>` изменено.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`2D Параллакс <../tutorials/2d/2d_parallax>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`autoscroll<class_Parallax2D_property_autoscroll>`                     | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`follow_viewport<class_Parallax2D_property_follow_viewport>`           | ``true``                                                                      |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` | ``false``                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`limit_begin<class_Parallax2D_property_limit_begin>`                   | ``Vector2(-10000000, -10000000)``                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`limit_end<class_Parallax2D_property_limit_end>`                       | ``Vector2(10000000, 10000000)``                                               |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                  | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`repeat_size<class_Parallax2D_property_repeat_size>`                   | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`repeat_times<class_Parallax2D_property_repeat_times>`                 | ``1``                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`screen_offset<class_Parallax2D_property_screen_offset>`               | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`scroll_offset<class_Parallax2D_property_scroll_offset>`               | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`scroll_scale<class_Parallax2D_property_scroll_scale>`                 | ``Vector2(1, 1)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Parallax2D_property_autoscroll:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **autoscroll** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_autoscroll>`

.. rst-class:: classref-property-setget

- |void| **set_autoscroll**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_autoscroll**\ (\ )

Скорость, с которой смещение прокручивается автоматически, в пикселях в секунду.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_follow_viewport:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_viewport** = ``true`` :ref:`🔗<class_Parallax2D_property_follow_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_follow_viewport**\ (\ )

Если ``true``, этот **Parallax2D** смещен на текущую позицию камеры. Если **Parallax2D** находится в :ref:`CanvasLayer<class_CanvasLayer>` отдельно от текущей камеры, может быть желательно сопоставить значение с :ref:`CanvasLayer.follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_ignore_camera_scroll:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_camera_scroll** = ``false`` :ref:`🔗<class_Parallax2D_property_ignore_camera_scroll>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_camera_scroll**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignore_camera_scroll**\ (\ )

Если ``true``, положение **Parallax2D** не зависит от положения камеры.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_limit_begin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **limit_begin** = ``Vector2(-10000000, -10000000)`` :ref:`🔗<class_Parallax2D_property_limit_begin>`

.. rst-class:: classref-property-setget

- |void| **set_limit_begin**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_begin**\ (\ )

Верхний левый предел для начала прокрутки. Если камера выходит за пределы этого предела, **Parallax2D** останавливает прокрутку. Должно быть меньше, чем :ref:`limit_end<class_Parallax2D_property_limit_end>` минус размер области просмотра, чтобы работать.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_limit_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **limit_end** = ``Vector2(10000000, 10000000)`` :ref:`🔗<class_Parallax2D_property_limit_end>`

.. rst-class:: classref-property-setget

- |void| **set_limit_end**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_end**\ (\ )

Нижний правый предел для прокрутки до конца. Если камера находится за пределами этого предела, **Parallax2D** остановит прокрутку. Должно быть больше, чем :ref:`limit_begin<class_Parallax2D_property_limit_begin>` и размер области просмотра, объединенные для работы.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_repeat_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **repeat_size** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_repeat_size>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_repeat_size**\ (\ )

Повторяет :ref:`Texture2D<class_Texture2D>` каждого из дочерних узлов этого узла и смещает их на это значение. При прокрутке положение узла зацикливается, создавая иллюзию бесконечного прокручивающегося фона, если значения больше размера экрана. Если ось установлена на ``0``, :ref:`Texture2D<class_Texture2D>` не будет повторяться.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_repeat_times:

.. rst-class:: classref-property

:ref:`int<class_int>` **repeat_times** = ``1`` :ref:`🔗<class_Parallax2D_property_repeat_times>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_times**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_repeat_times**\ (\ )

Переопределяет количество повторений текстуры. Каждая копия текстуры равномерно распространяется от оригинала на :ref:`repeat_size<class_Parallax2D_property_repeat_size>`. Полезно при уменьшении масштаба с помощью камеры.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_screen_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_screen_offset>`

.. rst-class:: classref-property-setget

- |void| **set_screen_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_offset**\ (\ )

Смещение, используемое для прокрутки этого **Parallax2D**. Это значение обновляется автоматически, если только :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` не равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_scroll_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_scroll_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_offset**\ (\ )

Смещение **Parallax2D**. Аналогично :ref:`screen_offset<class_Parallax2D_property_screen_offset>` и :ref:`Node2D.position<class_Node2D_property_position>`, но не будет переопределено.

\ **Примечание:** Значения будут цикличными, если :ref:`repeat_size<class_Parallax2D_property_repeat_size>` будет установлен выше, чем ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_scroll_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Parallax2D_property_scroll_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_scale**\ (\ )

Множитель для конечного смещения **Parallax2D**. Может использоваться для имитации расстояния от камеры.

Например, значение ``1`` прокручивает с той же скоростью, что и камера. Значение больше ``1`` прокручивает быстрее, делая объекты ближе. Меньше ``1`` прокручивает медленнее, делая объекты дальше, а значение ``0`` полностью останавливает объекты.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
