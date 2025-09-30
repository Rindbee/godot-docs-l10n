:github_url: hide

.. _class_PackedDataContainer:

PackedDataContainer
===================

**Устарело:** Use :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` or :ref:`FileAccess.store_var()<class_FileAccess_method_store_var>` instead. To enable data compression, use :ref:`PackedByteArray.compress()<class_PackedByteArray_method_compress>` or :ref:`FileAccess.open_compressed()<class_FileAccess_method_open_compressed>`.

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Эффективно упаковывает и сериализует :ref:`Array<class_Array>` или :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**PackedDataContainer** можно использовать для эффективного хранения данных из нетипизированных контейнеров. Данные упаковываются в необработанные байты и могут быть сохранены в файл. Только :ref:`Array<class_Array>` и :ref:`Dictionary<class_Dictionary>` можно хранить таким образом.

Вы можете извлечь данные, итерируя по контейнеру, что будет работать так же, как и итерация по самим упакованным данным. Если упакованный контейнер — это :ref:`Dictionary<class_Dictionary>`, данные можно извлечь по именам ключей (только :ref:`String<class_String>`/:ref:`StringName<class_StringName>`).

::

    var data = { "key": "value", "another_key": 123, "lock": Vector2() }
    var packed = PackedDataContainer.new()
    packed.pack(data)
    ResourceSaver.save(packed, "packed_data.res")

::

    var container = load("packed_data.res")
    for key in container:
        prints(key, container[key])

Prints:

.. code:: text

    key value
    lock (0, 0)
    another_key 123

Вложенные контейнеры будут упакованы рекурсивно. При итерации они будут возвращены как :ref:`PackedDataContainerRef<class_PackedDataContainerRef>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pack<class_PackedDataContainer_method_pack>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`size<class_PackedDataContainer_method_size>`\ (\ ) |const|                                |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PackedDataContainer_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_PackedDataContainer_method_pack>`

Упаковывает заданный контейнер в двоичное представление. ``value`` должно быть либо :ref:`Array<class_Array>`, либо :ref:`Dictionary<class_Dictionary>`, любой другой тип приведет к ошибке недопустимых данных.

\ **Примечание:** Последующие вызовы этого метода перезапишут существующие данные.

.. rst-class:: classref-item-separator

----

.. _class_PackedDataContainer_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedDataContainer_method_size>`

Возвращает размер упакованного контейнера (см. :ref:`Array.size()<class_Array_method_size>` и :ref:`Dictionary.size()<class_Dictionary_method_size>`).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
