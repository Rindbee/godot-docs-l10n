:github_url: hide

.. _class_FogVolume:

FogVolume
=========

**Успадковує:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Регіон, що сприяє об'єму за замовчуванням з світового середовища.

.. rst-class:: classref-introduction-group

Опис
--------

**FogVolume** використовується для додавання локалізованої туману в глобальний ефект об'ємної фольги. **FogVolume** також можна видалити об'ємну фольгу з конкретних зон, якщо за допомогою :ref:`FogMaterial<class_FogMaterial>` з негативним :ref:`FogMaterial.density<class_FogMaterial_property_density>`.

Продуктивність **FogVolume** безпосередньо пов'язана з їх відносним розміром на екрані і складністю їх прикріплюється :ref:`FogMaterial<class_FogMaterial>`. Найкраще тримати **FogVolume** відносно невеликого і простого де можливо.

\ **Примітка:** **FogVolume** єдиний видимий ефект, якщо :ref:`Environment.volumetric_fog_enabled<class_Environment_property_volumetric_fog_enabled>` ``true``. Якщо ви не хочете, щоб бути глобально видимими (але тільки в вузлах **FogVolume**, встановіть :ref:`Environment.volumetric_fog_density<class_Environment_property_volumetric_fog_density>` до ``0.0``.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Об'ємний туман і об'єми туману <../tutorials/3d/volumetric_fog>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`Material<class_Material>`                            | :ref:`material<class_FogVolume_property_material>` |                      |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` | :ref:`shape<class_FogVolume_property_shape>`       | ``3``                |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                              | :ref:`size<class_FogVolume_property_size>`         | ``Vector3(2, 2, 2)`` |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_FogVolume_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_FogVolume_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

:ref:`Material<class_Material>` використовується **FogVolume**. Може бути або вбудованим :ref:`FogMaterial<class_FogMaterial>` або на замовлення :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_FogVolume_property_shape:

.. rst-class:: classref-property

:ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` **shape** = ``3`` :ref:`🔗<class_FogVolume_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>`\ )
- :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` **get_shape**\ (\ )

Форма **FogVolume**. Це може бути встановлений як для :ref:`RenderingServer.FOG_VOLUME_SHAPE_ELLIPSOID<class_RenderingServer_constant_FOG_VOLUME_SHAPE_ELLIPSOID>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_BOX<class_RenderingServer_constant_FOG_VOLUME_SHAPE_BOX>` або :ref:`RenderingServer.FOG_VOLUME_SHAPE_WORLD<class_RenderingServer_constant_FOG_VOLUME_SHAPE_WORLD>`.

.. rst-class:: classref-item-separator

----

.. _class_FogVolume_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_FogVolume_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Розмір **FogVolume** коли ``пам'ятна форма`` є :ref:`RenderingServer.FOG_VOLUME_SHAPE_ELLIPSOID<class_RenderingServer_constant_FOG_VOLUME_SHAPE_ELLIPSOID>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>` або :ref:`RenderingServer.FOG_VOLUME_SHAPE_BOX<class_RenderingServer_constant_FOG_VOLUME_SHAPE_BOX>`.

\ **Note:** Обсяги тен фольги можуть з'явитися, коли камера рухається або обертається. Це може бути полегшена шляхом збільшення :ref:`ProjectSettings.rendering/environment/volumetric_fog/volume_глибокий<class_ProjectSettings_property_rendering/environment/volumetric_fog/volume_глибокий>` (без вартості виконання) або шляхом зменшення :ref:`Environment.volumetric_fog_length<class_Environment_property_volumetric_fog_length>` (без вартості виконання, але за вартістю нижнього діапазону фольги). Крім того, **FogVolume** можна зробити більш товстими і використовувати меншу щільність в :ref:`material<class_FogVolume_property_material>`.

\ **Примітка:** Якщо :ref:`shape<class_FogVolume_property_shape>` є :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>` або :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>`, конус / циліндр буде регулюватися, щоб відповідати розміру. Неоднорідне масштабування форм конуса / циліндра через властивість :ref:`size<class_FogVolume_property_size>` не підтримується, але можна масштабувати вузол **FogVolume**.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
