:github_url: hide

.. _class_XRHandTracker:

XRHandTracker
=============

**Наследует:** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Отслеживаемая рука в XR.

.. rst-class:: classref-introduction-group

Описание
----------------

Система отслеживания рук создаст экземпляр этого объекта и добавит его в :ref:`XRServer<class_XRServer>`. Затем эта система отслеживания получит данные скелета, преобразует их в скелет руки гуманоида Godot и сохранит эти данные в объекте **XRHandTracker**. 

Используйте :ref:`XRHandModifier3D<class_XRHandModifier3D>` для анимации сетки руки с использованием данных отслеживания рук.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индекс документации XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>`         | hand                                                                           | ``1`` (overrides :ref:`XRPositionalTracker<class_XRPositionalTracker_property_hand>`) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` | :ref:`hand_tracking_source<class_XRHandTracker_property_hand_tracking_source>` | ``0``                                                                                 |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_tracking_data<class_XRHandTracker_property_has_tracking_data>`       | ``false``                                                                             |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`                    | type                                                                           | ``16`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`)                    |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_hand_joint_angular_velocity<class_XRHandTracker_method_get_hand_joint_angular_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                   |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\] | :ref:`get_hand_joint_flags<class_XRHandTracker_method_get_hand_joint_flags>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_hand_joint_linear_velocity<class_XRHandTracker_method_get_hand_joint_linear_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                     |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`get_hand_joint_radius<class_XRHandTracker_method_get_hand_joint_radius>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_hand_joint_transform<class_XRHandTracker_method_get_hand_joint_transform>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                 |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_angular_velocity<class_XRHandTracker_method_set_hand_joint_angular_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, angular_velocity\: :ref:`Vector3<class_Vector3>`\ )         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_flags<class_XRHandTracker_method_set_hand_joint_flags>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, flags\: |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\]\ ) |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_linear_velocity<class_XRHandTracker_method_set_hand_joint_linear_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, linear_velocity\: :ref:`Vector3<class_Vector3>`\ )            |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_radius<class_XRHandTracker_method_set_hand_joint_radius>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, radius\: :ref:`float<class_float>`\ )                                           |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_transform<class_XRHandTracker_method_set_hand_joint_transform>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_XRHandTracker_HandTrackingSource:

.. rst-class:: classref-enumeration

enum **HandTrackingSource**: :ref:`🔗<enum_XRHandTracker_HandTrackingSource>`

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_UNKNOWN** = ``0``

Источник данных отслеживания рук неизвестен.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_UNOBSTRUCTED** = ``1``

Источник данных отслеживания рук не имеет препятствий, что означает, что используется точный метод отслеживания рук. К ним относятся оптическое отслеживание рук, перчатки с данными и т. д.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_CONTROLLER** = ``2``

Источником данных отслеживания рук является контроллер, то есть положения суставов определяются на основе входных данных контроллера.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_NOT_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_NOT_TRACKED** = ``3``

Данные отслеживания руки не отслеживаются. Это означает, что рука закрыта, контроллер выключен или отслеживание не поддерживается для текущего типа ввода.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_MAX** = ``4``

Представляет размер перечисления :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>`.

.. rst-class:: classref-item-separator

----

.. _enum_XRHandTracker_HandJoint:

.. rst-class:: classref-enumeration

enum **HandJoint**: :ref:`🔗<enum_XRHandTracker_HandJoint>`

.. _class_XRHandTracker_constant_HAND_JOINT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PALM** = ``0``

Ладонный сустав.

.. _class_XRHandTracker_constant_HAND_JOINT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_WRIST** = ``1``

Лучезапястный сустав.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_METACARPAL** = ``2``

Пястно-запястный сустав большого пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_PHALANX_PROXIMAL** = ``3``

Проксимальный сустав фаланги большого пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_PHALANX_DISTAL** = ``4``

Дистальный сустав фаланги большого пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_TIP** = ``5``

Сустав кончика большого пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_METACARPAL** = ``6``

Пястно-запястный сустав указательного пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_PROXIMAL** = ``7``

Проксимальный сустав фаланги указательного пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``8``

Промежуточный сустав фаланги указательного пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_DISTAL** = ``9``

Дистальный сустав фаланги указательного пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_TIP** = ``10``

Кончик указательного пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_METACARPAL** = ``11``

Пястно-запястный сустав среднего пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``12``

Проксимальный сустав фаланги среднего пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``13``

Промежуточный сустав фаланги среднего пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_DISTAL** = ``14``

Дистальный сустав фаланги среднего пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_TIP** = ``15``

Кончик среднего пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_METACARPAL** = ``16``

Пястно-запястный сустав безымянного пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_PROXIMAL** = ``17``

Проксимальный сустав фаланги безымянного пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_INTERMEDIATE** = ``18``

Промежуточный сустав фаланги безымянного пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_DISTAL** = ``19``

Дистальный сустав фаланги безымянного пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_TIP** = ``20``

Сустав кончика безымянного пальца.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_METACARPAL** = ``21``

Пястно-запястный сустав мизинца.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_PROXIMAL** = ``22``

Проксимальный сустав фаланги мизинца.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``23``

Промежуточный сустав фаланги мизинца.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_DISTAL** = ``24``

Дистальный сустав фаланги мизинца.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_TIP** = ``25``

Сустав кончика мизинца.

.. _class_XRHandTracker_constant_HAND_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MAX** = ``26``

Представляет размер перечисления :ref:`HandJoint<enum_XRHandTracker_HandJoint>`.

.. rst-class:: classref-item-separator

----

.. _enum_XRHandTracker_HandJointFlags:

.. rst-class:: classref-enumeration

flags **HandJointFlags**: :ref:`🔗<enum_XRHandTracker_HandJointFlags>`

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ORIENTATION_VALID** = ``1``

Данные об ориентации сустава кисти достоверны.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ORIENTATION_TRACKED** = ``2``

Ориентация сустава руки активно отслеживается. Не может быть установлена, если отслеживание временно потеряно.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_POSITION_VALID** = ``4``

Данные о положении сустава кисти достоверны.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_POSITION_TRACKED** = ``8``

Положение сустава руки активно отслеживается. Не может быть установлено, если отслеживание временно потеряно.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_LINEAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_LINEAR_VELOCITY_VALID** = ``16``

Данные о линейной скорости сустава кисти достоверны.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ANGULAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ANGULAR_VELOCITY_VALID** = ``32``

Данные об угловой скорости сустава кисти достоверны.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_XRHandTracker_property_hand_tracking_source:

.. rst-class:: classref-property

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **hand_tracking_source** = ``0`` :ref:`🔗<class_XRHandTracker_property_hand_tracking_source>`

.. rst-class:: classref-property-setget

- |void| **set_hand_tracking_source**\ (\ value\: :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>`\ )
- :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **get_hand_tracking_source**\ (\ )

Источник данных отслеживания рук.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRHandTracker_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

Если ``true``, данные отслеживания руки действительны.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_XRHandTracker_method_get_hand_joint_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_angular_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_angular_velocity>`

Возвращает угловую скорость для заданного сустава руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\] **get_hand_joint_flags**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_flags>`

Возвращает флаги о достоверности данных отслеживания для указанного сустава руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_linear_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_linear_velocity>`

Возвращает линейную скорость для заданного сустава руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_radius:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hand_joint_radius**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_radius>`

Возвращает радиус указанного сустава руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_hand_joint_transform**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_transform>`

Возвращает преобразование для заданного сустава руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_angular_velocity:

.. rst-class:: classref-method

|void| **set_hand_joint_angular_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, angular_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_angular_velocity>`

Устанавливает угловую скорость для данного сустава руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_flags:

.. rst-class:: classref-method

|void| **set_hand_joint_flags**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, flags\: |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\]\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_flags>`

Устанавливает флаги о достоверности данных отслеживания для данного сустава руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_linear_velocity:

.. rst-class:: classref-method

|void| **set_hand_joint_linear_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, linear_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_linear_velocity>`

Устанавливает линейную скорость для данного сустава руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_radius:

.. rst-class:: classref-method

|void| **set_hand_joint_radius**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_radius>`

Устанавливает радиус указанного сустава руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_transform:

.. rst-class:: classref-method

|void| **set_hand_joint_transform**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_transform>`

Устанавливает преобразование для указанного сустава руки.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
