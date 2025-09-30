:github_url: hide

.. _class_ResourcePreloader:

ResourcePreloader
=================

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, используемый для предварительной загрузки подресурсов внутри сцены, прикинь.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот узел используется для предварительной загрузки подресурсов внутри сцены, поэтому, когда сцена загружена, все ресурсы готовы к использованию и могут быть извлечены из предварительного загрузчика. Вы можете добавить ресурсы с помощью вкладки ResourcePreloader, когда выбран узел.

GDScript имеет упрощенный встроенный метод :ref:`@GDScript.preload()<class_@GDScript_method_preload>`, который можно использовать в большинстве ситуаций, оставляя использование **ResourcePreloader** для более сложных сценариев.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_resource<class_ResourcePreloader_method_add_resource>`\ (\ name\: :ref:`StringName<class_StringName>`, resource\: :ref:`Resource<class_Resource>`\ )          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                   | :ref:`get_resource<class_ResourcePreloader_method_get_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_resource_list<class_ResourcePreloader_method_get_resource_list>`\ (\ ) |const|                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_resource<class_ResourcePreloader_method_has_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_resource<class_ResourcePreloader_method_remove_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`rename_resource<class_ResourcePreloader_method_rename_resource>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ResourcePreloader_method_add_resource:

.. rst-class:: classref-method

|void| **add_resource**\ (\ name\: :ref:`StringName<class_StringName>`, resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ResourcePreloader_method_add_resource>`

Добавляет ресурс в предзагрузчик с указанным ``name``. Если ресурс с указанным ``name`` уже существует, новый ресурс будет переименован в "``name`` N", где N — это увеличивающееся число, начиная с 2.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_get_resource:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ResourcePreloader_method_get_resource>`

Возвращает ресурс, связанный с ``name``.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_get_resource_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_resource_list**\ (\ ) |const| :ref:`🔗<class_ResourcePreloader_method_get_resource_list>`

Возвращает список ресурсов внутри предварительного загрузчика.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_has_resource:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ResourcePreloader_method_has_resource>`

Возвращает ``true``, если предварительный загрузчик содержит ресурс, связанный с ``name``.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_remove_resource:

.. rst-class:: classref-method

|void| **remove_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ResourcePreloader_method_remove_resource>`

Удаляет ресурс, связанный с ``name``, из предварительного загрузчика.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_rename_resource:

.. rst-class:: classref-method

|void| **rename_resource**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ResourcePreloader_method_rename_resource>`

Переименовывает ресурс внутри предварительного загрузчика с ``name`` на ``newname``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
