:github_url: hide

.. _class_EditorResourcePreview:

EditorResourcePreview
=====================

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, используемый для создания предварительных просмотров ресурсов или файлов.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот узел используется для генерации предпросмотров ресурсов или файлов.

\ **Примечание:** Этот класс не следует создавать напрямую. Вместо этого обратитесь к синглтону с помощью :ref:`EditorInterface.get_resource_previewer()<class_EditorInterface_method_get_resource_previewer>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_preview_generator<class_EditorResourcePreview_method_add_preview_generator>`\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ )                                                                                                           |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`check_for_invalidation<class_EditorResourcePreview_method_check_for_invalidation>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                              |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`queue_edited_resource_preview<class_EditorResourcePreview_method_queue_edited_resource_preview>`\ (\ resource\: :ref:`Resource<class_Resource>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`queue_resource_preview<class_EditorResourcePreview_method_queue_resource_preview>`\ (\ path\: :ref:`String<class_String>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ )                       |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_preview_generator<class_EditorResourcePreview_method_remove_preview_generator>`\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ )                                                                                                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_EditorResourcePreview_signal_preview_invalidated:

.. rst-class:: classref-signal

**preview_invalidated**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorResourcePreview_signal_preview_invalidated>`

Выдается, если предварительный просмотр был признан недействительным (изменен). ``path`` соответствует пути к предварительному просмотру.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorResourcePreview_method_add_preview_generator:

.. rst-class:: classref-method

|void| **add_preview_generator**\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ ) :ref:`🔗<class_EditorResourcePreview_method_add_preview_generator>`

Создайте собственный, настраиваемый генератор предварительного просмотра.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_check_for_invalidation:

.. rst-class:: classref-method

|void| **check_for_invalidation**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorResourcePreview_method_check_for_invalidation>`

Проверьте, изменился ли ресурс. Если это так, он будет признан недействительным и будет подан соответствующий сигнал.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_queue_edited_resource_preview:

.. rst-class:: classref-method

|void| **queue_edited_resource_preview**\ (\ resource\: :ref:`Resource<class_Resource>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorResourcePreview_method_queue_edited_resource_preview>`

Поставьте в очередь редактируемый ``resource`` для предварительного просмотра. После того, как предварительный просмотр будет готов, будет вызван ``receiveer`` ``receiveer``. ``receiveer_func`` должен принимать следующие четыре аргумента: :ref:`String<class_String>` path, :ref:`Texture2D<class_Texture2D>` preview, :ref:`Texture2D<class_Texture2D>` thumbnail_preview, :ref:`Variant<class_Variant>` userdata. ``userdata`` может быть любым и будет возвращен при вызове ``receiveer_func``.

\ **Примечание:** Если не удалось создать предварительный просмотр, ``receiveer_func`` все равно будет вызван, но предварительный просмотр будет ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_queue_resource_preview:

.. rst-class:: classref-method

|void| **queue_resource_preview**\ (\ path\: :ref:`String<class_String>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorResourcePreview_method_queue_resource_preview>`

Поставьте в очередь файл ресурсов, расположенный в ``path``, для предварительного просмотра. После того, как предварительный просмотр будет готов, будет вызван ``receiveer`` ``receiveer_func``. ``receiveer_func`` должен принимать следующие четыре аргумента: :ref:`String<class_String>` path, :ref:`Texture2D<class_Texture2D>` preview, :ref:`Texture2D<class_Texture2D>` thumbnail_preview, :ref:`Variant<class_Variant>` userdata. ``userdata`` может быть любым и будет возвращен при вызове ``receiveer_func``.

\ **Примечание:** Если предварительный просмотр создать не удалось, ``receiveer_func`` все равно будет вызван, но предварительный просмотр будет ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_remove_preview_generator:

.. rst-class:: classref-method

|void| **remove_preview_generator**\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ ) :ref:`🔗<class_EditorResourcePreview_method_remove_preview_generator>`

Удаляет пользовательский генератор предварительного просмотра.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
