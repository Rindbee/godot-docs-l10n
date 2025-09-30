:github_url: hide

.. _class_AudioEffectEQ:

AudioEffectEQ
=============

**Наследует:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AudioEffectEQ10<class_AudioEffectEQ10>`, :ref:`AudioEffectEQ21<class_AudioEffectEQ21>`, :ref:`AudioEffectEQ6<class_AudioEffectEQ6>`

Базовый класс для аудиоэквалайзеров. Дает вам контроль над частотами.

Используйте его для создания собственного эквалайзера, если :ref:`AudioEffectEQ6<class_AudioEffectEQ6>`, :ref:`AudioEffectEQ10<class_AudioEffectEQ10>` или :ref:`AudioEffectEQ21<class_AudioEffectEQ21>` не соответствуют вашим потребностям.

.. rst-class:: classref-introduction-group

Описание
----------------

AudioEffectEQ дает вам контроль над частотами. Используйте его для компенсации существующих недостатков звука. AudioEffectEQ полезны на шине Master для полного мастеринга микса и придания ему большего характера. Они также полезны, когда игра запущена на мобильном устройстве, для настройки микса под этот тип динамиков (его можно добавить, но отключить, если подключены наушники).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиошины <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_band_count<class_AudioEffectEQ_method_get_band_count>`\ (\ ) |const|                                                                      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_band_gain_db<class_AudioEffectEQ_method_get_band_gain_db>`\ (\ band_idx\: :ref:`int<class_int>`\ ) |const|                                |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_band_gain_db<class_AudioEffectEQ_method_set_band_gain_db>`\ (\ band_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioEffectEQ_method_get_band_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_band_count**\ (\ ) |const| :ref:`🔗<class_AudioEffectEQ_method_get_band_count>`

Возвращает количество полос эквалайзера.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectEQ_method_get_band_gain_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_band_gain_db**\ (\ band_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectEQ_method_get_band_gain_db>`

Возвращает усиление полосы по указанному индексу в дБ.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectEQ_method_set_band_gain_db:

.. rst-class:: classref-method

|void| **set_band_gain_db**\ (\ band_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectEQ_method_set_band_gain_db>`

Устанавливает усиление полосы по указанному индексу в дБ.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
