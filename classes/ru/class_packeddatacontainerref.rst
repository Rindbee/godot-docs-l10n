:github_url: hide

.. _class_PackedDataContainerRef:

PackedDataContainerRef
======================

**Устарело:** Use :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` or :ref:`FileAccess.store_var()<class_FileAccess_method_store_var>` instead. To enable data compression, use :ref:`PackedByteArray.compress()<class_PackedByteArray_method_compress>` or :ref:`FileAccess.open_compressed()<class_FileAccess_method_open_compressed>`.

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Внутренний класс, используемый :ref:`PackedDataContainer<class_PackedDataContainer>` для упаковки вложенных массивов и словарей.

.. rst-class:: classref-introduction-group

Описание
----------------

При упаковке вложенных контейнеров с помощью :ref:`PackedDataContainer<class_PackedDataContainer>` они рекурсивно упаковываются в **PackedDataContainerRef** (применимо только к :ref:`Array<class_Array>` и :ref:`Dictionary<class_Dictionary>`). Их данные могут быть извлечены так же, как и из :ref:`PackedDataContainer<class_PackedDataContainer>`.

::

    var packed = PackedDataContainer.new()
    packed.pack([1, 2, 3, ["nested1", "nested2"], 4, 5, 6])

    for element in packed:
        if element is PackedDataContainerRef:
            for subelement in element:
                print("::", subelement)
        else:
            print(element)

Prints:

.. code:: text

    1
    2
    3
    ::nested1
    ::nested2
    4
    5
    6

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`size<class_PackedDataContainerRef_method_size>`\ (\ ) |const| |
   +-----------------------+---------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PackedDataContainerRef_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedDataContainerRef_method_size>`

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
