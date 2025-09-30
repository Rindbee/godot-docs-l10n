:github_url: hide

.. _class_Marshalls:

Marshalls
=========

**Наследует:** :ref:`Object<class_Object>`

Помощники по преобразованию (маршалингу) и кодированию данных.

.. rst-class:: classref-introduction-group

Описание
----------------

Предоставляет служебные функции преобразования и кодирования данных.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`base64_to_raw<class_Marshalls_method_base64_to_raw>`\ (\ base64_str\: :ref:`String<class_String>`\ )                                                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`base64_to_utf8<class_Marshalls_method_base64_to_utf8>`\ (\ base64_str\: :ref:`String<class_String>`\ )                                                        |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                 | :ref:`base64_to_variant<class_Marshalls_method_base64_to_variant>`\ (\ base64_str\: :ref:`String<class_String>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`raw_to_base64<class_Marshalls_method_raw_to_base64>`\ (\ array\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`utf8_to_base64<class_Marshalls_method_utf8_to_base64>`\ (\ utf8_str\: :ref:`String<class_String>`\ )                                                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`variant_to_base64<class_Marshalls_method_variant_to_base64>`\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ )   |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Marshalls_method_base64_to_raw:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **base64_to_raw**\ (\ base64_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_base64_to_raw>`

Возвращает декодированный :ref:`PackedByteArray<class_PackedByteArray>`, соответствующий закодированной в Base64 строке ``base64_str``.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_base64_to_utf8:

.. rst-class:: classref-method

:ref:`String<class_String>` **base64_to_utf8**\ (\ base64_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_base64_to_utf8>`

Возвращает декодированную строку, соответствующую строке в кодировке Base64 ``base64_str``.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_base64_to_variant:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **base64_to_variant**\ (\ base64_str\: :ref:`String<class_String>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Marshalls_method_base64_to_variant>`

Возвращает декодированный :ref:`Variant<class_Variant>`, соответствующий закодированной в Base64 строке ``base64_str``. Если ``allow_objects`` равен ``true``, декодирование объектов разрешено.

Внутренне это использует тот же механизм декодирования, что и метод :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>`.

\ **Предупреждение:** Десериализованные объекты могут содержать код, который выполняется. Не используйте эту опцию, если сериализованный объект поступает из ненадежных источников, чтобы избежать потенциальных угроз безопасности, таких как удаленное выполнение кода.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_raw_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **raw_to_base64**\ (\ array\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Marshalls_method_raw_to_base64>`

Возвращает строку заданного :ref:`PackedByteArray<class_PackedByteArray>` в кодировке Base64.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_utf8_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **utf8_to_base64**\ (\ utf8_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_utf8_to_base64>`

Возвращает строку UTF-8 ``utf8_str`` в кодировке Base64.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_variant_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **variant_to_base64**\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Marshalls_method_variant_to_base64>`

Возвращает строку :ref:`Variant<class_Variant>` ``variation`` в кодировке Base64. Если ``full_objects`` равно ``true``, кодирование объектов разрешено (и потенциально может включать код).

Внутри это использует тот же механизм кодирования, что и метод :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
