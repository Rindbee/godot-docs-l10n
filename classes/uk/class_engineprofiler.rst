:github_url: hide

.. _class_EngineProfiler:

EngineProfiler
==============

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Базовий клас для створення індивідуальних профілів.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас може використовуватися для реалізації користувацьких профільників, які здатні взаємодіяти з двигуном та дебугером.

\ :ref:`EngineDebugger<class_EngineDebugger>` і :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>` для отримання додаткової інформації.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_add_frame<class_EngineProfiler_private_method__add_frame>`\ (\ data\: :ref:`Array<class_Array>`\ ) |virtual|                                                                                                                                 |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_tick<class_EngineProfiler_private_method__tick>`\ (\ frame_time\: :ref:`float<class_float>`, process_time\: :ref:`float<class_float>`, physics_time\: :ref:`float<class_float>`, physics_frame_time\: :ref:`float<class_float>`\ ) |virtual| |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_toggle<class_EngineProfiler_private_method__toggle>`\ (\ enable\: :ref:`bool<class_bool>`, options\: :ref:`Array<class_Array>`\ ) |virtual|                                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EngineProfiler_private_method__add_frame:

.. rst-class:: classref-method

|void| **_add_frame**\ (\ data\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_EngineProfiler_private_method__add_frame>`

Зателефонуйте, коли дані додано до профілювання за допомогою :ref:`EngineDebugger.profiler_add_frame_data()<class_EngineDebugger_method_profiler_add_frame_data>`.

.. rst-class:: classref-item-separator

----

.. _class_EngineProfiler_private_method__tick:

.. rst-class:: classref-method

|void| **_tick**\ (\ frame_time\: :ref:`float<class_float>`, process_time\: :ref:`float<class_float>`, physics_time\: :ref:`float<class_float>`, physics_frame_time\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_EngineProfiler_private_method__tick>`

Зателефонувавши один раз, коли профільник працює з інформацією про поточний кадр. Всі значення часу в секундах. Низькі значення є більш швидкими часами обробки і тому краще.

.. rst-class:: classref-item-separator

----

.. _class_EngineProfiler_private_method__toggle:

.. rst-class:: classref-method

|void| **_toggle**\ (\ enable\: :ref:`bool<class_bool>`, options\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_EngineProfiler_private_method__toggle>`

Викликається при включенні профілювача/вимкненому, поряд з набором ``options``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
