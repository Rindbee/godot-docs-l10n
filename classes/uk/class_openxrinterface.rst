:github_url: hide

.. _class_OpenXRInterface:

OpenXRInterface
===============

**Успадковує:** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Інтерфейс OpenXR.

.. rst-class:: classref-introduction-group

Опис
--------

Інтерфейс OpenXR дозволяє Godot взаємодіяти з OpenXR runtimes і зробити його можливим для створення XR досвіду і ігор.

У зв'язку з потребами OpenXR цей інтерфейс працює трохи відрізняється від інших плагінів на основі інтерфейсів XR. Він повинен бути ініціалізований, коли починається Godot. Вам потрібно включити OpenXR, налаштування для цього можна знайти в налаштуваннях вашого проекту ігор під головуванням XR. Для того, щоб Богот знав, що результат рендерингу повинен бути вихідним до гарнітури.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Налаштування XR <../tutorials/xr/setting_up_xr>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`display_refresh_rate<class_OpenXRInterface_property_display_refresh_rate>`                   | ``0.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`foveation_dynamic<class_OpenXRInterface_property_foveation_dynamic>`                         | ``false`` |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`foveation_level<class_OpenXRInterface_property_foveation_level>`                             | ``0``     |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`render_target_size_multiplier<class_OpenXRInterface_property_render_target_size_multiplier>` | ``1.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`vrs_min_radius<class_OpenXRInterface_property_vrs_min_radius>`                               | ``20.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`vrs_strength<class_OpenXRInterface_property_vrs_strength>`                                   | ``1.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                | :ref:`get_action_sets<class_OpenXRInterface_method_get_action_sets>`\ (\ ) |const|                                                                                                                                            |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                | :ref:`get_available_display_refresh_rates<class_OpenXRInterface_method_get_available_display_refresh_rates>`\ (\ ) |const|                                                                                                    |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_angular_velocity<class_OpenXRInterface_method_get_hand_joint_angular_velocity>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>`\] | :ref:`get_hand_joint_flags<class_OpenXRInterface_method_get_hand_joint_flags>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                       |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_linear_velocity<class_OpenXRInterface_method_get_hand_joint_linear_velocity>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|   |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_position<class_OpenXRInterface_method_get_hand_joint_position>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                | :ref:`get_hand_joint_radius<class_OpenXRInterface_method_get_hand_joint_radius>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                     |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                                      | :ref:`get_hand_joint_rotation<class_OpenXRInterface_method_get_hand_joint_rotation>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>`         | :ref:`get_hand_tracking_source<class_OpenXRInterface_method_get_hand_tracking_source>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const|                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`             | :ref:`get_motion_range<class_OpenXRInterface_method_get_motion_range>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const|                                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SessionState<enum_OpenXRInterface_SessionState>`                   | :ref:`get_session_state<class_OpenXRInterface_method_get_session_state>`\ (\ )                                                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_action_set_active<class_OpenXRInterface_method_is_action_set_active>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_eye_gaze_interaction_supported<class_OpenXRInterface_method_is_eye_gaze_interaction_supported>`\ (\ )                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_foveation_supported<class_OpenXRInterface_method_is_foveation_supported>`\ (\ ) |const|                                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_hand_interaction_supported<class_OpenXRInterface_method_is_hand_interaction_supported>`\ (\ ) |const|                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_hand_tracking_supported<class_OpenXRInterface_method_is_hand_tracking_supported>`\ (\ )                                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_action_set_active<class_OpenXRInterface_method_set_action_set_active>`\ (\ name\: :ref:`String<class_String>`, active\: :ref:`bool<class_bool>`\ )                                                                  |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_cpu_level<class_OpenXRInterface_method_set_cpu_level>`\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ )                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_gpu_level<class_OpenXRInterface_method_set_gpu_level>`\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ )                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_motion_range<class_OpenXRInterface_method_set_motion_range>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, motion_range\: :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`\ )                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_OpenXRInterface_signal_cpu_level_changed:

.. rst-class:: classref-signal

**cpu_level_changed**\ (\ sub_domain\: :ref:`int<class_int>`, from_level\: :ref:`int<class_int>`, to_level\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRInterface_signal_cpu_level_changed>`

Повідомляє пристрій про зміну рівня продуктивності процесора у вказаному піддомені.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_gpu_level_changed:

.. rst-class:: classref-signal

**gpu_level_changed**\ (\ sub_domain\: :ref:`int<class_int>`, from_level\: :ref:`int<class_int>`, to_level\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRInterface_signal_gpu_level_changed>`

Повідомляє пристрій про зміну рівня продуктивності графічного процесора у вказаному піддомені.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_instance_exiting:

.. rst-class:: classref-signal

**instance_exiting**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_instance_exiting>`

У нашому екземплярі OpenXR є вихід.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_pose_recentered:

.. rst-class:: classref-signal

**pose_recentered**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_pose_recentered>`

Повідомляємо, що користувач чергав недавець позиції гравця.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_refresh_rate_changed:

.. rst-class:: classref-signal

**refresh_rate_changed**\ (\ refresh_rate\: :ref:`float<class_float>`\ ) :ref:`🔗<class_OpenXRInterface_signal_refresh_rate_changed>`

Змінюється швидкість оновлення HMD.

\ **Примітка:** Тільки емітовані, якщо XR runtime підтримує розширення швидкості оновлення.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_begun:

.. rst-class:: classref-signal

**session_begun**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_begun>`

Починалася наша сесія OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_focussed:

.. rst-class:: classref-signal

**session_focussed**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_focussed>`

Повідомляє, що наш сеанс OpenXR тепер у фокусі, наприклад, вихід надсилається на HMD, і ми отримуємо вхід XR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_loss_pending:

.. rst-class:: classref-signal

**session_loss_pending**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_loss_pending>`

У процесі втрати втраченої роботи ми використовуємо OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_stopping:

.. rst-class:: classref-signal

**session_stopping**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_stopping>`

Ми працюємо з OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_synchronized:

.. rst-class:: classref-signal

**session_synchronized**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_synchronized>`

Повідомляє, що наш сеанс OpenXR синхронізовано.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_visible:

.. rst-class:: classref-signal

**session_visible**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_visible>`

Повідомляє, що наш сеанс OpenXR тепер видимий, наприклад, вихідні дані надсилаються на HMD, але ми не отримуємо вхідних даних XR.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_OpenXRInterface_SessionState:

.. rst-class:: classref-enumeration

enum **SessionState**: :ref:`🔗<enum_OpenXRInterface_SessionState>`

.. _class_OpenXRInterface_constant_SESSION_STATE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_UNKNOWN** = ``0``

Стан сеансу невідомий, ми ще не пробували налаштувати OpenXR.

.. _class_OpenXRInterface_constant_SESSION_STATE_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_IDLE** = ``1``

Початковий стан після створення сеансу OpenXR або після його знищення.

.. _class_OpenXRInterface_constant_SESSION_STATE_READY:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_READY** = ``2``

OpenXR готовий розпочати наш сеанс. При переході в цей стан видається сигнал :ref:`session_begun<class_OpenXRInterface_signal_session_begun>`.

.. _class_OpenXRInterface_constant_SESSION_STATE_SYNCHRONIZED:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_SYNCHRONIZED** = ``3``

Програма синхронізувала свій цикл кадрів із середовищем виконання, але ми нічого не рендеримо. При переході в цей стан генерується сигнал :ref:`session_synchronized<class_OpenXRInterface_signal_session_synchronized>`.

.. _class_OpenXRInterface_constant_SESSION_STATE_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_VISIBLE** = ``4``

Програма синхронізувала свій цикл кадрів із середовищем виконання, і ми відтворюємо вивід для користувача, проте не отримуємо жодних вхідних даних від користувача. :ref:`session_visible<class_OpenXRInterface_signal_session_visible>` випромінюється, коли ми переходимо в цей стан.

\ **Примітка:** Це поточний стан безпосередньо перед тим, як ми отримуємо стан фокусування, щоразу, коли користувач відкриває системне меню, перемикається в іншу програму або знімає гарнітуру.

.. _class_OpenXRInterface_constant_SESSION_STATE_FOCUSED:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_FOCUSED** = ``5``

Програма синхронізувала свій цикл кадрів із середовищем виконання, ми виводимо вивід користувачеві та отримуємо вхідний сигнал XR. :ref:`session_focused<class_OpenXRInterface_signal_session_focused>` випромінюється, коли ми переходимо в цей стан.

\ **Примітка:** Це стан, у якому буде OpenXR, коли користувач зможе повноцінно взаємодіяти з вашою грою.

.. _class_OpenXRInterface_constant_SESSION_STATE_STOPPING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_STOPPING** = ``6``

Наш сеанс зупиняється. Коли ми переходимо в цей стан, видається сигнал :ref:`session_stopping<class_OpenXRInterface_signal_session_stopping>`.

.. _class_OpenXRInterface_constant_SESSION_STATE_LOSS_PENDING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_LOSS_PENDING** = ``7``

Сеанс ось-ось буде втрачено. При переході в цей стан видається сигнал :ref:`session_loss_pending<class_OpenXRInterface_signal_session_loss_pending>`.

.. _class_OpenXRInterface_constant_SESSION_STATE_EXITING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_EXITING** = ``8``

Екземпляр OpenXR ось-ось буде знищено, а ми існуємо. При переході до цього стану генерується сигнал :ref:`instance_exiting<class_OpenXRInterface_signal_instance_exiting>`.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_Hand:

.. rst-class:: classref-enumeration

enum **Hand**: :ref:`🔗<enum_OpenXRInterface_Hand>`

.. _class_OpenXRInterface_constant_HAND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_LEFT** = ``0``

Ліва рука.

.. _class_OpenXRInterface_constant_HAND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_RIGHT** = ``1``

Праворуч.

.. _class_OpenXRInterface_constant_HAND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_MAX** = ``2``

Максимальне значення для ручної роботи.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandMotionRange:

.. rst-class:: classref-enumeration

enum **HandMotionRange**: :ref:`🔗<enum_OpenXRInterface_HandMotionRange>`

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_UNOBSTRUCTED** = ``0``

Повна ручна дальність, якщо користувач закриває руки, ми робимо повноцінну кулак.

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_CONFORM_TO_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_CONFORM_TO_CONTROLLER** = ``1``

Конформувати контролера, якщо користувач закриває руки, відстежені дані відповідають формі контролера.

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_MAX** = ``2``

Максимальне значення для об’єму руху.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandTrackedSource:

.. rst-class:: classref-enumeration

enum **HandTrackedSource**: :ref:`🔗<enum_OpenXRInterface_HandTrackedSource>`

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_UNKNOWN** = ``0``

Джерело даних відстеження рук невідомо (подовження, ймовірно, не підтримується).

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_UNOBSTRUCTED** = ``1``

Джерело відстеження ручних відправлень необґрунтовано, це означає, що використовується точний метод відстеження рук, наприклад, оптичне відстеження ручних даних, рукавичок даних тощо.

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_CONTROLLER** = ``2``

Джерело ручного відстеження є контролером, кістковими позиціями, що посилаються з вхідних контролерів.

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_MAX** = ``3``

Представляє розмір переліку :ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>`.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandJoints:

.. rst-class:: classref-enumeration

enum **HandJoints**: :ref:`🔗<enum_OpenXRInterface_HandJoints>`

.. _class_OpenXRInterface_constant_HAND_JOINT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_PALM** = ``0``

Пальмовий суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_WRIST** = ``1``

Вристий суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_METACARPAL** = ``2``

Тумба метакарпатичний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_PROXIMAL** = ``3``

Тонкий проксимальний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_DISTAL** = ``4``

Тонкий дистальний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_TIP** = ``5``

Наконечник натяжний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_METACARPAL** = ``6``

Індекс пальцевий метакарпатичний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_PROXIMAL** = ``7``

Індекс пальця фаланкс проксимальний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_INTERMEDIATE** = ``8``

Індекс пальця фаланкс проміжний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_DISTAL** = ``9``

Індекс палець фаланкс дистальний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_TIP** = ``10``

Індекс кінчика пальця суглоба.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_METACARPAL** = ``11``

Середній палець метакарпатичний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_PROXIMAL** = ``12``

Середній палець фаланкс проксимальний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_INTERMEDIATE** = ``13``

Середній палець фаланкс проміжний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_DISTAL** = ``14``

Середній палець фаланкс дистальний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_TIP** = ``15``

Середній кінчик пальця суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_METACARPAL** = ``16``

Кільце пальця метакарпального суглоба.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_PROXIMAL** = ``17``

Кільце палець фаланкс проксимальний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_INTERMEDIATE** = ``18``

Кільце палець фаланкс проміжний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_DISTAL** = ``19``

Кільце палець фаланкс дистальний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_TIP** = ``20``

Кільце кінчика пальця суглоба.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_METACARPAL** = ``21``

Рожевий пальчик метакарпатичний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_PROXIMAL** = ``22``

Рожевий палець фаланкс проксимальний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_INTERMEDIATE** = ``23``

Рожевий палець фаланкс проміжний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_DISTAL** = ``24``

Рожевий палець фаланкс дистальний суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_TIP** = ``25``

Рожевий кінчик пальця суглоб.

.. _class_OpenXRInterface_constant_HAND_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MAX** = ``26``

Представляє розмір переліку :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsLevel:

.. rst-class:: classref-enumeration

enum **PerfSettingsLevel**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsLevel>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_POWER_SAVINGS:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_POWER_SAVINGS** = ``0``

Програма перейшла в режим не-XR (екран, заблокований з фокусом на голові / статичний екран), під час якого пріоритет має надаватися економії енергії.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_SUSTAINED_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_SUSTAINED_LOW** = ``1``

Додаток увійшов у розділ низької та стабільної складності, під час якого зниження потужності важливіше, ніж випадкові затримки кадрів рендерингу.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_SUSTAINED_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_SUSTAINED_HIGH** = ``2``

Програма перейшла в розділ високої або динамічної складності, під час якого середовище виконання XR прагне забезпечити послідовне композиційне зображення XR та рендеринг кадрів у межах термічно стійкого діапазону.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_BOOST:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_BOOST** = ``3``

Застосунок увійшов у розділ з дуже високою складністю, під час якого XR Runtime може вийти за межі термічно стійкого діапазону.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsSubDomain:

.. rst-class:: classref-enumeration

enum **PerfSettingsSubDomain**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsSubDomain>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_COMPOSITING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_COMPOSITING** = ``0``

Продуктивність композитингу під час виконання досягла нового рівня.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_RENDERING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_RENDERING** = ``1``

Продуктивність рендерингу застосунків досягла нового рівня.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_THERMAL:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_THERMAL** = ``2``

Температура пристрою досягла нового рівня.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsNotificationLevel:

.. rst-class:: classref-enumeration

enum **PerfSettingsNotificationLevel**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsNotificationLevel>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_NORMAL** = ``0``

Піддомен досяг рівня, де жодних подальших дій, окрім тих, що застосовуються наразі, не потрібно.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_WARNING** = ``1``

Піддомен досяг рівня раннього попередження, коли програма повинна розпочати проактивні дії щодо пом'якшення наслідків.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_IMPAIRED:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_IMPAIRED** = ``2``

Піддомен досяг критичного рівня, де застосунок має розпочати радикальні заходи щодо пом'якшення наслідків.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandJointFlags:

.. rst-class:: classref-enumeration

flags **HandJointFlags**: :ref:`🔗<enum_OpenXRInterface_HandJointFlags>`

.. _class_OpenXRInterface_constant_HAND_JOINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_NONE** = ``0``

Немає прапорів встановлюються.

.. _class_OpenXRInterface_constant_HAND_JOINT_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ORIENTATION_VALID** = ``1``

Якщо встановити, дані орієнтації діють, інакше дані орієнтації ненадійні і не повинні використовуватися.

.. _class_OpenXRInterface_constant_HAND_JOINT_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ORIENTATION_TRACKED** = ``2``

Якщо встановити, дані орієнтації надходять з даних відстеження, інакше дані орієнтації містять дані про прогнозування.

.. _class_OpenXRInterface_constant_HAND_JOINT_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_POSITION_VALID** = ``4``

Якщо встановити, дані позиціонування дійсні, інакше дані позиціонування ненадійні і не повинні використовуватися.

.. _class_OpenXRInterface_constant_HAND_JOINT_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_POSITION_TRACKED** = ``8``

Якщо встановлено, що дані позиціонування надходять з даних відстеження, в іншому випадку, дані позиціонування містить дані, що свідчать.

.. _class_OpenXRInterface_constant_HAND_JOINT_LINEAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_LINEAR_VELOCITY_VALID** = ``16``

Якщо встановити, наші лінійні дані швидкості діють, інакше лінійні дані швидкості ненадійні і не повинні використовуватися.

.. _class_OpenXRInterface_constant_HAND_JOINT_ANGULAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ANGULAR_VELOCITY_VALID** = ``32``

Якщо встановити, наші дані кутової швидкості діють, інакше, дані кутової швидкості ненадійні і не повинні використовуватися.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OpenXRInterface_property_display_refresh_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_refresh_rate** = ``0.0`` :ref:`🔗<class_OpenXRInterface_property_display_refresh_rate>`

.. rst-class:: classref-property-setget

- |void| **set_display_refresh_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_refresh_rate**\ (\ )

Відобразити частоту оновлення для поточного HMD. Тільки функціональна, якщо ця функція підтримується за допомогою OpenXR і після того, як інтерфейс був ініціалізований.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_foveation_dynamic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **foveation_dynamic** = ``false`` :ref:`🔗<class_OpenXRInterface_property_foveation_dynamic>`

.. rst-class:: classref-property-setget

- |void| **set_foveation_dynamic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_foveation_dynamic**\ (\ )

Увімкнути динамічне налаштування фовеації. Інтерфейс має бути ініціалізований, перш ніж це стане доступним. Якщо ввімкнено, фовеація автоматично налаштовуватиметься між низьким рівнем та :ref:`foveation_level<class_OpenXRInterface_property_foveation_level>`.

\ **Примітка:** Працює лише на рендерері сумісності.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_foveation_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **foveation_level** = ``0`` :ref:`🔗<class_OpenXRInterface_property_foveation_level>`

.. rst-class:: classref-property-setget

- |void| **set_foveation_level**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_foveation_level**\ (\ )

Встановіть рівень фовеації від 0 (вимкнено) до 3 (високий). Інтерфейс має бути ініціалізований, перш ніж це стане доступним.

\ **Примітка:** Працює лише на рендерері сумісності.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_render_target_size_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **render_target_size_multiplier** = ``1.0`` :ref:`🔗<class_OpenXRInterface_property_render_target_size_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_render_target_size_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_render_target_size_multiplier**\ (\ )

Множник розміру рендеру для поточного HMD. Необхідно встановити перед ініціалізацією інтерфейсу.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_OpenXRInterface_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

Мінімальний радіус навколо вогнища, де повна якість гарантована, якщо VRS використовується як відсоток розміру екрану.

\ **Примітка:** Мобільні та переадресні + рендерери тільки. Потрібні :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` бути встановленими на :ref:`Viewport. VRS_XR<class_Viewport_constant_ VRS_XR>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_OpenXRInterface_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

Потужність використовується для розрахунку карти щільності VRS. Чим більше це значення, тим більш помітні VRS. Це покращує продуктивність за вартістю якості.

\ **Примітка:** Мобільні та переадресні + рендерери тільки. Потрібні :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` бути встановленими на :ref:`Viewport. VRS_XR<class_Viewport_constant_ VRS_XR>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRInterface_method_get_action_sets:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_action_sets**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_action_sets>`

Повертає список наборів дій, зареєстрованих Godot (завантажено з карти дій на runtime).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_available_display_refresh_rates:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_available_display_refresh_rates**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_available_display_refresh_rates>`

Повертаємо ціни на оновлення, що підтримується струмом HMD. Після того, як інтерфейс був ініціалізований.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_angular_velocity**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_angular_velocity>`

**Застаріло:** Use :ref:`XRHandTracker.get_hand_joint_angular_velocity()<class_XRHandTracker_method_get_hand_joint_angular_velocity>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Якщо ввімкнено, повертає кутову швидкість суглоба (``Joint``) руки (``hand``) як передбачено OpenXR. :ref:`XROrigin3D<class_XROrigin3D>`!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>`\] **get_hand_joint_flags**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_flags>`

**Застаріло:** Use :ref:`XRHandTracker.get_hand_joint_flags()<class_XRHandTracker_method_get_hand_joint_flags>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Якщо увімкнено відстеження, повертає прапори, які повідомляють нам про дійсність даних відстеження.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_linear_velocity**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_linear_velocity>`

**Застаріло:** Use :ref:`XRHandTracker.get_hand_joint_linear_velocity()<class_XRHandTracker_method_get_hand_joint_linear_velocity>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Якщо ввімкнено, повертає лінійну швидкість суглоба (``Joint``) руки (``hand``) як передбачено OpenXR. Це відносно :ref:`XROrigin3D<class_XROrigin3D>` без застосування світового масштабу!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_position**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_position>`

**Застаріло:** Use :ref:`XRHandTracker.get_hand_joint_transform()<class_XRHandTracker_method_get_hand_joint_transform>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Якщо ввімкнено, повертає позицію суглоба (``Joint``) руки (``hand``) як передбачено OpenXR. Це відносно :ref:`XROrigin3D<class_XROrigin3D>` без застосування світового масштабу!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_radius:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hand_joint_radius**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_radius>`

**Застаріло:** Use :ref:`XRHandTracker.get_hand_joint_radius()<class_XRHandTracker_method_get_hand_joint_radius>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Якщо ввімкнено ручне відстеження, повертає радіус суглоба (``Joint``) руки (``hand``) як передбачено OpenXR. Це без використання світового масштабу!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_hand_joint_rotation**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_rotation>`

**Застаріло:** Use :ref:`XRHandTracker.get_hand_joint_transform()<class_XRHandTracker_method_get_hand_joint_transform>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Якщо ввімкнено ручний відстеження, повертає обертання суглоба (``Joint``) руки (``hand``) як передбачено OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_tracking_source:

.. rst-class:: classref-method

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **get_hand_tracking_source**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_tracking_source>`

**Застаріло:** Use :ref:`XRHandTracker.hand_tracking_source<class_XRHandTracker_property_hand_tracking_source>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Якщо підтримується вікно відстеження вручну, отримує джерело даних відстеження рук для ``hand``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_motion_range:

.. rst-class:: classref-method

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **get_motion_range**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_motion_range>`

Якщо підтриманий ручний відстеження і діапазон руху, отримує в даний час налаштований діапазон руху для ``hand``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_session_state:

.. rst-class:: classref-method

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **get_session_state**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_get_session_state>`

Повертає поточний стан нашого сеансу OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_action_set_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_set_active**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_action_set_active>`

Повертає ``true``, якщо надана дія встановлена активна.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_eye_gaze_interaction_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_eye_gaze_interaction_supported**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_is_eye_gaze_interaction_supported>`

Повертаємо можливості розширення взаємодії очей.

\ **Примітка:** Це тільки повертає дійсне значення після OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_foveation_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_foveation_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_foveation_supported>`

Повертає ``true``, якщо підтримується розширення foveation OpenXR, інтерфейс має бути ініціалізований, перш ніж це поверне дійсне значення.

\ **Примітка:** Ця функція доступна лише на рендерері сумісності та наразі доступна лише на деяких автономних гарнітурах. Для Vulkan встановіть :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` на ``VRS_XR`` на робочому столі.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_hand_interaction_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hand_interaction_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_hand_interaction_supported>`

Повернення ``true``, якщо Профіль ручної взаємодії OpenXR підтримується і ввімкнено.

\ **Примітка:** Це тільки повертає дійсне значення після OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_hand_tracking_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hand_tracking_supported**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_is_hand_tracking_supported>`

Повернення ``true``, якщо OpenXR підтримується і ввімкнено.

\ **Примітка:** Це тільки повертає дійсне значення після OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_action_set_active:

.. rst-class:: classref-method

|void| **set_action_set_active**\ (\ name\: :ref:`String<class_String>`, active\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_action_set_active>`

Налаштовує задану дію, як активний або неактивний.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_cpu_level:

.. rst-class:: classref-method

|void| **set_cpu_level**\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_cpu_level>`

Встановлює рівень продуктивності процесора пристрою OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_gpu_level:

.. rst-class:: classref-method

|void| **set_gpu_level**\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_gpu_level>`

Встановлює рівень продуктивності графічного процесора пристрою OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_motion_range:

.. rst-class:: classref-method

|void| **set_motion_range**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, motion_range\: :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_motion_range>`

Якщо підтримується ручний відстеження, налаштовує в даний момент налаштований діапазон руху ``hand`` до ``mode_range``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
