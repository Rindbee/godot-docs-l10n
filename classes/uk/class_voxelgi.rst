:github_url: hide

.. _class_VoxelGI:

VoxelGI
=======

**Успадковує:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Реальний час глобального освітлення (GI) зондів.

.. rst-class:: classref-introduction-group

Опис
--------

**VoxelGI** використовуються для забезпечення високоякісного непрямого освітлення та відбиттів у сценах у реальному часі. Вони попередньо обчислюють ефект об'єктів, що випромінюють світло, та ефект статичної геометрії, щоб імітувати поведінку складного світла в реальному часі. **VoxelGI** потрібно запекти, перш ніж вони матимуть видимий ефект. Однак після запікання динамічні об'єкти отримуватимуть від них світло. Крім того, освітлення може бути повністю динамічним або запеченим.

\ **Примітка:** **VoxelGI** підтримується лише в методі рендерингу Forward+, а не в Mobile або Compatibility.

\ **Процедурна генерація:** **VoxelGI** можна запекти в експортованому проекті, що робить його придатним для процедурно згенерованих або створених користувачем рівнів, за умови, що вся геометрія генерується заздалегідь. Для ігор, де геометрія генерується в будь-який момент під час гри, SDFGI більше підходить (див. :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Продуктивність:** **VoxelGI** є відносно вимогливим до графічного процесора та не підходить для низькоякісного обладнання, такого як інтегрована графіка (розгляньте замість цього :ref:`LightmapGI<class_LightmapGI>`). Щоб покращити продуктивність, налаштуйте :ref:`ProjectSettings.rendering/global_illumination/voxel_gi/quality<class_ProjectSettings_property_rendering/global_illumination/voxel_gi/quality>` та ввімкніть :ref:`ProjectSettings.rendering/global_illumination/gi/use_half_resolution<class_ProjectSettings_property_rendering/global_illumination/gi/use_half_resolution>` у налаштуваннях проекту. Щоб забезпечити резервний варіант для низькоякісного обладнання, розгляньте можливість додавання опції вимкнення **VoxelGI** у меню параметрів вашого проекту. Вузол **VoxelGI** можна вимкнути, приховавши його.

\ **Примітка:** Сітки повинні мати достатньо товсті стінки, щоб уникнути витоків світла (уникайте односторонніх стінок). Для внутрішніх рівнів укладіть геометрію рівня в достатньо великий прямокутник та з'єднайте петлі, щоб замкнути сітку. Щоб ще більше запобігти витокам світла, ви також можете стратегічно розмістити тимчасові вузли :ref:`MeshInstance3D<class_MeshInstance3D>` з їхнім :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`, встановленим на :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`. Ці тимчасові вузли потім можна приховати після запікання вузла **VoxelGI**.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання глобального освітлення Voxel <../tutorials/3d/global_illumination/using_voxel_gi>`

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_VoxelGI_property_camera_attributes>` |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`VoxelGIData<class_VoxelGIData>`           | :ref:`data<class_VoxelGI_property_data>`                           |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`size<class_VoxelGI_property_size>`                           | ``Vector3(20, 20, 20)`` |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Subdiv<enum_VoxelGI_Subdiv>`              | :ref:`subdiv<class_VoxelGI_property_subdiv>`                       | ``1``                   |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`bake<class_VoxelGI_method_bake>`\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`debug_bake<class_VoxelGI_method_debug_bake>`\ (\ )                                                                                        |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VoxelGI_Subdiv:

.. rst-class:: classref-enumeration

enum **Subdiv**: :ref:`🔗<enum_VoxelGI_Subdiv>`

.. _class_VoxelGI_constant_SUBDIV_64:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_64** = ``0``

Використовуйте 64 підрозділи. Це найнижча якість налаштування, але найшвидша. Використовуйте його, якщо ви можете, але особливо використовувати його на нижньому пристрої.

.. _class_VoxelGI_constant_SUBDIV_128:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_128** = ``1``

Використовуйте 128 підрозділів. Це налаштування якості за замовчуванням.

.. _class_VoxelGI_constant_SUBDIV_256:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_256** = ``2``

Використовуйте 256 підрозділів.

.. _class_VoxelGI_constant_SUBDIV_512:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_512** = ``3``

Використовуйте 512 підрозділи. Це найвища якість, але найшвидше. На нижчому апараті це може призвести до графічного процесора.

.. _class_VoxelGI_constant_SUBDIV_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_MAX** = ``4``

Представляємо розмір :ref:`Subdiv<enum_VoxelGI_Subdiv>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VoxelGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_VoxelGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

:ref:`CameraAttributes<class_CameraAttributes>` ресурс, який визначає рівні впливу на випікання. Автоекспозиції та неефективні властивості ігноруються. Параметри експозиції повинні бути використані для зменшення динамічного діапазону, що присутні при випіканні. Якщо експозиція занадто висока, то **VoxelGI** буде перехоплювати артефакти або може мати позаштачні артефакти.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_data:

.. rst-class:: classref-property

:ref:`VoxelGIData<class_VoxelGIData>` **data** :ref:`🔗<class_VoxelGI_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_probe_data**\ (\ value\: :ref:`VoxelGIData<class_VoxelGIData>`\ )
- :ref:`VoxelGIData<class_VoxelGIData>` **get_probe_data**\ (\ )

:ref:`VoxelGIData<class_VoxelGIData>` ресурс, який містить дані для цього **VoxelGI**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_VoxelGI_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

The size of the area covered by the **VoxelGI**. This must be ``1.0`` or greater on each axis.

\ **Note:** If you make the size larger without increasing the number of subdivisions with :ref:`subdiv<class_VoxelGI_property_subdiv>`, the size of each cell will increase and result in less detailed lighting.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_subdiv:

.. rst-class:: classref-property

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **subdiv** = ``1`` :ref:`🔗<class_VoxelGI_property_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_subdiv**\ (\ value\: :ref:`Subdiv<enum_VoxelGI_Subdiv>`\ )
- :ref:`Subdiv<enum_VoxelGI_Subdiv>` **get_subdiv**\ (\ )

Кількість разів для підвидання сітки, яка працює на **VoxelGI**. Найвища кількість результатів у дрібних деталях і, таким чином, вища якість візуалізації, в той час як результат нижніх чисел у кращій продуктивності.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_VoxelGI_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_VoxelGI_method_bake>`

Запікає ефект з усіх :ref:`GeometryInstance3D<class_GeometryInstance3D>`, позначених як :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`, та :ref:`Light3D<class_Light3D>`, позначених як :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` або :ref:`Light3D.BAKE_DYNAMIC<class_Light3D_constant_BAKE_DYNAMIC>`. Якщо ``create_visual_debug`` має значення ``true``, після запікання світла буде згенеровано :ref:`MultiMesh<class_MultiMesh>`, який має куб, що представляє кожну клітинку твердого тіла, причому кожен куб забарвлений у колір альбедо клітинки. Це можна використовувати для візуалізації даних **VoxelGI** та налагодження будь-яких проблем, які можуть виникати.

\ **Примітка:** :ref:`bake()<class_VoxelGI_method_bake>` працює з редактора та в експортованих проектах. Це робить його придатним для процедурно згенерованих або створених користувачем рівнів. Запікання вузла **VoxelGI** зазвичай займає від 5 до 20 секунд у більшості сцен. Зменшення :ref:`subdiv<class_VoxelGI_property_subdiv>` може пришвидшити запікання.

\ **Примітка:** Об'єкти :ref:`GeometryInstance3D<class_GeometryInstance3D>` та :ref:`Light3D<class_Light3D>` мають бути повністю готові до виклику методу :ref:`bake()<class_VoxelGI_method_bake>`. Якщо ви процедурно створюєте їх, а деякі сітки або джерела світла відсутні у вашому запеченому **VoxelGI**, використовуйте ``call_deferred("bake")`` замість безпосереднього виклику методу :ref:`bake()<class_VoxelGI_method_bake>`.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_method_debug_bake:

.. rst-class:: classref-method

|void| **debug_bake**\ (\ ) :ref:`🔗<class_VoxelGI_method_debug_bake>`

Увімкніть ``create_visual_debug``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
