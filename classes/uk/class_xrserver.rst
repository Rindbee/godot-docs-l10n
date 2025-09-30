:github_url: hide

.. _class_XRServer:

XRServer
========

**Успадковує:** :ref:`Object<class_Object>`

Статус на сервери.

.. rst-class:: classref-introduction-group

Опис
--------

Сервер AR/VR – це серце нашого рішення про розширену та віртуальну реальність та ручить всю обробку.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`camera_locked_to_origin<class_XRServer_property_camera_locked_to_origin>` | ``false``                                           |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`XRInterface<class_XRInterface>` | :ref:`primary_interface<class_XRServer_property_primary_interface>`             |                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`world_origin<class_XRServer_property_world_origin>`                       | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`world_scale<class_XRServer_property_world_scale>`                         | ``1.0``                                             |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_interface<class_XRServer_method_add_interface>`\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ )                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_tracker<class_XRServer_method_add_tracker>`\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ )                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`center_on_hmd<class_XRServer_method_center_on_hmd>`\ (\ rotation_mode\: :ref:`RotationMode<enum_XRServer_RotationMode>`, keep_height\: :ref:`bool<class_bool>`\ ) |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_reference_frame<class_XRServer_method_clear_reference_frame>`\ (\ )                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRInterface<class_XRInterface>`                            | :ref:`find_interface<class_XRServer_method_find_interface>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                           |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_hmd_transform<class_XRServer_method_get_hmd_transform>`\ (\ )                                                                                                 |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRInterface<class_XRInterface>`                            | :ref:`get_interface<class_XRServer_method_get_interface>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_interface_count<class_XRServer_method_get_interface_count>`\ (\ ) |const|                                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_interfaces<class_XRServer_method_get_interfaces>`\ (\ ) |const|                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_reference_frame<class_XRServer_method_get_reference_frame>`\ (\ ) |const|                                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRTracker<class_XRTracker>`                                | :ref:`get_tracker<class_XRServer_method_get_tracker>`\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                 |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_trackers<class_XRServer_method_get_trackers>`\ (\ tracker_types\: :ref:`int<class_int>`\ )                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_interface<class_XRServer_method_remove_interface>`\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ )                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_tracker<class_XRServer_method_remove_tracker>`\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ )                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_XRServer_signal_interface_added:

.. rst-class:: classref-signal

**interface_added**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRServer_signal_interface_added>`

При додаванні нового інтерфейсу.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_interface_removed:

.. rst-class:: classref-signal

**interface_removed**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRServer_signal_interface_removed>`

При видаленні інтерфейсу.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_reference_frame_changed:

.. rst-class:: classref-signal

**reference_frame_changed**\ (\ ) :ref:`🔗<class_XRServer_signal_reference_frame_changed>`

Випробувано при перетворенні посилань.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_added:

.. rst-class:: classref-signal

**tracker_added**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_added>`

При додаванні нового трекера. Якщо ви не використовуєте фіксовану кількість контролерів або якщо ви використовуєте :ref:`XRAnchor3D<class_XRAnchor3D>` для AR-рішення, важливо реагувати на цей сигнал, щоб додати відповідні :ref:`XRController3D<class_XRController3D>` або :ref:`XRAnchor3D<class_XRAnchor3D>` вершини, пов'язані з цим новим трекером.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_removed:

.. rst-class:: classref-signal

**tracker_removed**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_removed>`

При видаленні трекера. Ви повинні видалити будь-які :ref:`XRController3D<class_XRController3D>` або :ref:`XRAnchor3D<class_XRAnchor3D>` точки, якщо це можливо. Це не обов'язково, вершини просто стають неактивними і будуть зроблені активні знову, коли новий трекер стає доступний (тобто новий контролер переключається на це місце попереднього).

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_updated:

.. rst-class:: classref-signal

**tracker_updated**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_updated>`

Увімкнено, коли було оновлено існуючий трекер. Це може статися, якщо контролери переключення користувача.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_XRServer_TrackerType:

.. rst-class:: classref-enumeration

enum **TrackerType**: :ref:`🔗<enum_XRServer_TrackerType>`

.. _class_XRServer_constant_TRACKER_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_HEAD** = ``1``

Трекер відстежує розташування голови гравця. Зазвичай це місце по центру між очима гравця. Зверніть увагу, що для портативних пристроїв доповненої реальності це може бути поточне розташування пристрою.

.. _class_XRServer_constant_TRACKER_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_CONTROLLER** = ``2``

Трекер відстежує розташування контролера.

.. _class_XRServer_constant_TRACKER_BASESTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_BASESTATION** = ``4``

Трекер відстежує розташування базової станції.

.. _class_XRServer_constant_TRACKER_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANCHOR** = ``8``

Трекер відстежує місце розташування та розмір анкеру AR.

.. _class_XRServer_constant_TRACKER_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_HAND** = ``16``

Трекер відстежує розташування та суглоби руки.

.. _class_XRServer_constant_TRACKER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_BODY** = ``32``

Трекер відстежує розташування і суглоби тіла.

.. _class_XRServer_constant_TRACKER_FACE:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_FACE** = ``64``

Трекер відстежує вирази обличчя.

.. _class_XRServer_constant_TRACKER_ANY_KNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANY_KNOWN** = ``127``

Використовуються внутрішні фільтри будь-якого відомого типу.

.. _class_XRServer_constant_TRACKER_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_UNKNOWN** = ``128``

Використовується внутрішньо, якщо ми ще не обрали тип трекеру.

.. _class_XRServer_constant_TRACKER_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANY** = ``255``

Використовується внутрішньо для вибору всіх трекерів.

.. rst-class:: classref-item-separator

----

.. _enum_XRServer_RotationMode:

.. rst-class:: classref-enumeration

enum **RotationMode**: :ref:`🔗<enum_XRServer_RotationMode>`

.. _class_XRServer_constant_RESET_FULL_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **RESET_FULL_ROTATION** = ``0``

Повністю скидати орієнтацію HMD. Незалежно від того, що користувач шукає в реальному світі. У віртуальному світі користувач буде виглядати мертво.

.. _class_XRServer_constant_RESET_BUT_KEEP_TILT:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **RESET_BUT_KEEP_TILT** = ``1``

Сприяє орієнтації, але зберігає нахил пристрою. Отже, якщо ми дивимося, ми продовжуємо шукати, але заголовок буде скидати.

.. _class_XRServer_constant_DONT_RESET_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **DONT_RESET_ROTATION** = ``2``

Чи не скинути орієнтацію HMD, тільки позиція гравця отримує центрований.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_XRServer_property_camera_locked_to_origin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **camera_locked_to_origin** = ``false`` :ref:`🔗<class_XRServer_property_camera_locked_to_origin>`

.. rst-class:: classref-property-setget

- |void| **set_camera_locked_to_origin**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_camera_locked_to_origin**\ (\ )

Якщо встановлено значення ``true``, сцена відображатиметься так, ніби камеру заблоковано на :ref:`XROrigin3D<class_XROrigin3D>`. 

\ **Примітка.** Це не дуже зручно для користувачів. Цей параметр існує для порівняльного аналізу або автоматичного тестування, коли ви хочете контролювати те, що відображається за допомогою коду.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_primary_interface:

.. rst-class:: classref-property

:ref:`XRInterface<class_XRInterface>` **primary_interface** :ref:`🔗<class_XRServer_property_primary_interface>`

.. rst-class:: classref-property-setget

- |void| **set_primary_interface**\ (\ value\: :ref:`XRInterface<class_XRInterface>`\ )
- :ref:`XRInterface<class_XRInterface>` **get_primary_interface**\ (\ )

:ref:`XRInterface<class_XRInterface>` в даний час межує з **XRServer**.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_world_origin:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **world_origin** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_XRServer_property_world_origin>`

.. rst-class:: classref-property-setget

- |void| **set_world_origin**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_world_origin**\ (\ )

Поточне походження нашого місця відстеження у віртуальному світі. Це використовується рендерером для коректного розміщення камери з новими даними відстеження.

\ **Примітка:** Ця властивість управляється поточною :ref:`XROrigin3D<class_XROrigin3D>` вершиною. Підходить для доступу від GDExtensions.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_world_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **world_scale** = ``1.0`` :ref:`🔗<class_XRServer_property_world_scale>`

.. rst-class:: classref-property-setget

- |void| **set_world_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_world_scale**\ (\ )

Шкала світу гри у порівнянні з реальним світом. За замовчуванням більшість платформ AR/VR припускають, що 1 ігровий блок відповідає дійсному світовому метру.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_XRServer_method_add_interface:

.. rst-class:: classref-method

|void| **add_interface**\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ ) :ref:`🔗<class_XRServer_method_add_interface>`

Реєструє об'єкт :ref:`XRInterface<class_XRInterface>`.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_add_tracker:

.. rst-class:: classref-method

|void| **add_tracker**\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ ) :ref:`🔗<class_XRServer_method_add_tracker>`

Реєструє новий :ref:`XRTracker<class_XRTracker>`, який відстежує фізичний об'єкт.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_center_on_hmd:

.. rst-class:: classref-method

|void| **center_on_hmd**\ (\ rotation_mode\: :ref:`RotationMode<enum_XRServer_RotationMode>`, keep_height\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_XRServer_method_center_on_hmd>`

Цю функцію потрібно правильно розуміти. Платформи AR та VR обробляють позиціонування дещо по-різному.

Для платформ, які не пропонують просторового відстеження, наша початкова точка ``(0, 0, 0)`` – це розташування нашого HMD, але ви мало контролюєте напрямок, куди дивиться гравець у реальному світі.

Для платформ, які пропонують просторове відстеження, наша початкова точка дуже залежить від системи. Для OpenVR наша початкова точка зазвичай є центром простору відстеження на землі. Для інших платформ це часто розташування камери відстеження.

Цей метод дозволяє вам центрувати трекер на місці HMD. Він візьме поточне розташування HMD і використає його для коригування всіх ваших даних відстеження; по суті, переналаштує реальний світ відповідно до поточного положення вашого гравця в ігровому світі.

Щоб цей метод дав корисні результати, інформація про відстеження має бути доступна. Це часто займає кілька кадрів після запуску гри.

Вам слід викликати цей метод через кілька секунд. Наприклад, коли користувач запитує переналаштування дисплея, утримуючи призначену кнопку на контролері протягом короткого періоду часу, або під час реалізації механізму телепортації.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_clear_reference_frame:

.. rst-class:: classref-method

|void| **clear_reference_frame**\ (\ ) :ref:`🔗<class_XRServer_method_clear_reference_frame>`

Очищає посилання, яка була встановлена попередніми дзвінками до :ref:`center_on_hmd()<class_XRServer_method_center_on_hmd>`.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_find_interface:

.. rst-class:: classref-method

:ref:`XRInterface<class_XRInterface>` **find_interface**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XRServer_method_find_interface>`

Знайдіть інтерфейс за назвою ``name``. Наприклад, якщо ваш проект використовує можливості платформи AR/VR, ви можете знайти інтерфейс для цієї платформи за назвою та ініціалізації його.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_hmd_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_hmd_transform**\ (\ ) :ref:`🔗<class_XRServer_method_get_hmd_transform>`

Повертає трансформацію основного інтерфейсу.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interface:

.. rst-class:: classref-method

:ref:`XRInterface<class_XRInterface>` **get_interface**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XRServer_method_get_interface>`

Повертаємо інтерфейс, зареєстрований в індексі ``idx`` у списку інтерфейсів.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interface_count**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_interface_count>`

Повертаємо кількість інтерфейсів, які зареєстровані на сервері AR/VR. Якщо ваш проект підтримує декілька платформ AR/VR, ви можете переглянути наявний інтерфейс, і будь-ласка, користувач з вибором або просто спробувати ініціалізації кожного інтерфейсу і використовувати перший, який повертає ``true``.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_interfaces**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_interfaces>`

Повертає список доступних інтерфейсів, ідентифікаторів та назви кожного інтерфейсу.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_reference_frame:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_reference_frame**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_reference_frame>`

Повертаємо еталонну раму перетворення. Найпопулярніші інтерфейси побудови GDExtension.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_tracker:

.. rst-class:: classref-method

:ref:`XRTracker<class_XRTracker>` **get_tracker**\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRServer_method_get_tracker>`

Повертає позиційний трекер з вказаною ``tracker_name``.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_trackers:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_trackers**\ (\ tracker_types\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_method_get_trackers>`

Повернення словника трекерів для ``tracker_types``.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_remove_interface:

.. rst-class:: classref-method

|void| **remove_interface**\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ ) :ref:`🔗<class_XRServer_method_remove_interface>`

Видаляє це ``interface``.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_remove_tracker:

.. rst-class:: classref-method

|void| **remove_tracker**\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ ) :ref:`🔗<class_XRServer_method_remove_tracker>`

Видаляє цей ``tracker``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
