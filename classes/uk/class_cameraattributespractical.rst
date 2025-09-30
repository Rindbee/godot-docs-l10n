:github_url: hide

.. _class_CameraAttributesPractical:

CameraAttributesPractical
=========================

**Успадковує:** :ref:`CameraAttributes<class_CameraAttributes>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Налаштування камери в зручному форматі.

.. rst-class:: classref-introduction-group

Опис
--------

Керує спеціальними атрибутами камери, такими як автоматична експозиція, глибина різкості та зміна експозиції.

 При використанні в :ref:`WorldEnvironment<class_WorldEnvironment>` він надає налаштування за замовчуванням для експозиції, автоматичної експозиції та глибини різкості, які використовуватимуться всіма камерами без власних :ref:`CameraAttributes<class_CameraAttributes>`, включаючи камеру редактора. При використанні в :ref:`Camera3D<class_Camera3D>` він замінить будь-які :ref:`CameraAttributes<class_CameraAttributes>`, установлені в :ref:`WorldEnvironment<class_WorldEnvironment>`. У разі використання в :ref:`VoxelGI<class_VoxelGI>` або :ref:`LightmapGI<class_LightmapGI>` використовуватимуться лише налаштування експозиції.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_max_sensitivity<class_CameraAttributesPractical_property_auto_exposure_max_sensitivity>` | ``800.0`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_min_sensitivity<class_CameraAttributesPractical_property_auto_exposure_min_sensitivity>` | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`                             | ``0.1``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`                 | ``10.0``  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`dof_blur_far_enabled<class_CameraAttributesPractical_property_dof_blur_far_enabled>`                   | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_far_transition<class_CameraAttributesPractical_property_dof_blur_far_transition>`             | ``5.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`               | ``2.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`dof_blur_near_enabled<class_CameraAttributesPractical_property_dof_blur_near_enabled>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_near_transition<class_CameraAttributesPractical_property_dof_blur_near_transition>`           | ``1.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CameraAttributesPractical_property_auto_exposure_max_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_max_sensitivity** = ``800.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_max_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_max_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_max_sensitivity**\ (\ )

Максимальна чутливість (у ISO), яка використовується під час розрахунку автоматичної експозиції. Під час обчислення середньої яскравості сцени значення кольорів будуть обмежені принаймні до цього значення. Це обмежує автоматичну експозицію від експозиції нижче певної яскравості, що призводить до точки відсікання, де сцена залишатиметься яскравою.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_auto_exposure_min_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_min_sensitivity** = ``0.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_min_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_min_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_min_sensitivity**\ (\ )

Мінімальна чутливість (у ISO), яка використовується для розрахунку автоматичної експозиції. Під час обчислення середньої яскравості сцени значення кольорів будуть обмежені принаймні до цього значення. Це обмежує автоматичну експозицію від експозиції вище певної яскравості, що призводить до точки відсікання, де сцена залишатиметься темною.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_amount** = ``0.1`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_amount>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_amount**\ (\ )

Встановлює максимальну кількість розмиття. Якщо використовується фізичне розмиття, натомість діятиме як множник. Високі значення призводять до збільшення розмитості, але можуть бути набагато дорожчими для розрахунку. Найкраще, щоб це було якомога менше для даного стилю мистецтва.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_distance** = ``10.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_distance**\ (\ )

Об’єкти, розташовані далі від :ref:`Camera3D<class_Camera3D>` на цю величину, будуть розмиті ефектом глибини різкості. Вимірюється в метрах.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_far_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_far_enabled**\ (\ )

Вмикає розмиття глибини поля для об’єктів, розташованих далі ніж :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`. Інтенсивність розмиття контролюється :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` і модулюється :ref:`dof_blur_far_transition<class_CameraAttributesPractical_property_dof_blur_far_transition>`.

\ **Примітка.** Глибина поля розмиття підтримується лише методами візуалізації Forward+ і Mobile, а не Compatibility.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_transition** = ``5.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_transition**\ (\ )

Якщо додатне значення, відстань, на якій (починаючи з :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`) ефект розмиття змінюватиметься від 0 до :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`. Якщо значення негативне, використовується фізичне масштабування, тому ефект глибини різкості змінюватиметься від 0 на :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>` і збільшуватиметься фізично точним чином, коли об’єкти віддалятимуться від :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_distance** = ``2.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_distance**\ (\ )

Об’єкти, ближчі до :ref:`Camera3D<class_Camera3D>` на цю величину, будуть розмиті ефектом глибини різкості. Вимірюється в метрах.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_near_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_near_enabled**\ (\ )

Вмикає розмиття глибини різкості для об’єктів ближче, ніж :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`. Інтенсивність розмиття контролюється :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` і модулюється :ref:`dof_blur_near_transition<class_CameraAttributesPractical_property_dof_blur_near_transition>`.

\ **Примітка:** Глибина поля розмиття підтримується лише методами візуалізації Forward+ і Mobile, а не Compatibility.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_transition** = ``1.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_transition**\ (\ )

Якщо позитивне значення, відстань, на якій ефект розмиття буде масштабуватися від 0 до :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`, закінчуючись на :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`. Якщо значення негативне, використовується фізичне масштабування, тому ефект глибини різкості змінюватиметься від 0 на :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>` і збільшуватиметься фізично точним чином, коли об’єкти наближатимуться до :ref:`Camera3D<class_Camera3D>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
