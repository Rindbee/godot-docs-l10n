:github_url: hide

.. _class_GPUParticlesCollisionSDF3D:

GPUParticlesCollisionSDF3D
==========================

**Успадковує:** :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Запечений підписаний дистанційний поле 3D форма зіткнення, що впливає на :ref:`GPUParticles3D<class_GPUParticles3D>` вершини.

.. rst-class:: classref-introduction-group

Опис
--------

Запечена форма зіткнення 3D-частинок поля відстані зі знаком, що впливає на вузли :ref:`GPUParticles3D<class_GPUParticles3D>`.

Поля відстані зі знаком (SDF) дозволяють ефективно представляти приблизні форми зіткнень для опуклих та увігнутих об'єктів будь-якої форми. Це гнучкіше, ніж :ref:`GPUParticlesCollisionHeightField3D<class_GPUParticlesCollisionHeightField3D>`, але вимагає кроку запікання.

\ **Запікання:** Текстуру поля відстані зі знаком можна запекти, вибравши вузол **GPUParticlesCollisionSDF3D** у редакторі, а потім натиснувши **Запікати SDF** у верхній частині 3D-огляду. Будь-які *видимі* :ref:`MeshInstance3D<class_MeshInstance3D>` у межах :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>` будуть враховані для запікання, незалежно від їхнього ``GeometryInstance3D.gi_mode елемента``.

\ **Примітка:** Запікання :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` **GPUParticlesCollisionSDF3D** можливе лише в редакторі, оскільки немає методу запікання, доступного для використання в експортованих проектах. Однак, все ще можна завантажити попередньо випечені :ref:`Texture3D<class_Texture3D>` у властивість :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` в експортованому проєкті.

\ **Примітка:** :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` має бути :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` або :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` у матеріалі процесу :ref:`GPUParticles3D<class_GPUParticles3D>`, щоб колізія працювала.

\ **Примітка:** Колізія частинок впливає лише на :ref:`GPUParticles3D<class_GPUParticles3D>`, а не на :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                         | :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>`   | ``4294967295``       |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` | :ref:`resolution<class_GPUParticlesCollisionSDF3D_property_resolution>` | ``2``                |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                 | :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>`             | ``Vector3(2, 2, 2)`` |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Texture3D<class_Texture3D>`                             | :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>`       |                      |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                     | :ref:`thickness<class_GPUParticlesCollisionSDF3D_property_thickness>`   | ``1.0``              |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_bake_mask_value<class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_bake_mask_value<class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_GPUParticlesCollisionSDF3D_Resolution:

.. rst-class:: classref-enumeration

enum **Resolution**: :ref:`🔗<enum_GPUParticlesCollisionSDF3D_Resolution>`

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_16:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_16** = ``0``

Bake a 16×16×16 підписаний поле відстані. Це найшвидший варіант, але і найменш точний.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_32:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_32** = ``1``

Bake a 32×32×32 підписано поле відстані.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_64:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_64** = ``2``

Випікайте поле відстані зі знаком 64×64×64.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_128:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_128** = ``3``

Випікайте поле відстані зі знаком 128×128×128.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_256:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_256** = ``4``

Випікайте поле відстані зі знаком 256×256×256.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_512:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_512** = ``5``

Випікайте поле відстані зі знаком 512×512×512. Це найповільніший, але і найточніший варіант.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_MAX** = ``6``

Представляє розмір переліку :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GPUParticlesCollisionSDF3D_property_bake_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_bake_mask>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_mask**\ (\ )

Візуальні шари для обліку при випіканні зіткнень SDF. Тільки :ref:`MeshInstance3D<class_MeshInstance3D>`, чия ``u.layers`` матч з цим :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>` буде включений в сформований зіткнення частинок SDF. За замовчуванням всі об'єкти враховуються для випікання частинок SDF.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_resolution:

.. rst-class:: classref-property

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **resolution** = ``2`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>`\ )
- :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **get_resolution**\ (\ )

Випікаєте дозвіл на використання для підписаного поля відстані :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>`. Текстура повинна бути запечена ще раз для зміни майна :ref:`resolution<class_GPUParticlesCollisionSDF3D_property_resolution>`. Вищі дозволи мають більш високу вартість виконання і приймають більше часу на випікання. Більшість дозволів також призводить до збільшення пряженої текстури, що призводить до збільшення вимог VRAM і простору зберігання. Щоб поліпшити продуктивність і зменшити час випікання, скористайтеся найнижчою роздільною здатністю, можливою для об'єкта, який ви представляєте зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Розмір SDF в 3D блоках. Для поліпшення якості SDF, розмір :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>` слід встановити якомога меншим за умови покриття деталей сцени вам потрібно.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **texture** :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_texture**\ (\ )

3D текстура, що представляє собою підписане поле відстані.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_thickness:

.. rst-class:: classref-property

:ref:`float<class_float>` **thickness** = ``1.0`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_thickness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_thickness**\ (\ )

Товщина форми зіткнення. На відміну від інших комірок частинок, **GPUParticlesCollisionSDF3D** фактично порожня на внутрішній стороні. :ref:`thickness<class_GPUParticlesCollisionSDF3D_property_thickness>` може бути збільшена для запобігання частинок з тунелю через форму зіткнення на високих швидкостях, або коли переміщається [ГППППЧ-СхідникиCollisionSDF3D.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value>`

Повертає, чи увімкнено вказаний шар :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>`, якщо задано ``layer_number`` значення від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value:

.. rst-class:: classref-method

|void| **set_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value>`

На основі значення параметра ``value`` вмикає або вимикає вказаний шар у :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>`, маючи значення параметра ``layer_number`` від 1 до 32.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
