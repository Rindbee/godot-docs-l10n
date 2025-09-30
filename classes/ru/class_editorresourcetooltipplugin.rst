:github_url: hide

.. _class_EditorResourceTooltipPlugin:

EditorResourceTooltipPlugin
===========================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Плагин, который расширяет подсказки для обрабатываемого типа ресурса.

.. rst-class:: classref-introduction-group

Описание
----------------

Плагины подсказок ресурсов используются :ref:`FileSystemDock<class_FileSystemDock>` для создания настраиваемых подсказок для определенных ресурсов. Например, подсказка для :ref:`Texture2D<class_Texture2D>` отображает увеличенный предварительный просмотр и размеры текстуры.

Плагин должен быть сначала зарегистрирован с помощью :ref:`FileSystemDock.add_resource_tooltip_plugin()<class_FileSystemDock_method_add_resource_tooltip_plugin>`. Когда пользователь наводит курсор на ресурс в доке файловой системы, который обрабатывается плагином, вызывается :ref:`_make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` для создания подсказки. Он работает аналогично :ref:`Control._make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_handles<class_EditorResourceTooltipPlugin_private_method__handles>`\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                   |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`_make_tooltip_for_path<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>`\ (\ path\: :ref:`String<class_String>`, metadata\: :ref:`Dictionary<class_Dictionary>`, base\: :ref:`Control<class_Control>`\ ) |virtual| |const| |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`request_thumbnail<class_EditorResourceTooltipPlugin_method_request_thumbnail>`\ (\ path\: :ref:`String<class_String>`, control\: :ref:`TextureRect<class_TextureRect>`\ ) |const|                                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorResourceTooltipPlugin_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceTooltipPlugin_private_method__handles>`

Верните ``true``, если плагин будет обрабатывать заданный :ref:`Resource<class_Resource>` ``type``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **_make_tooltip_for_path**\ (\ path\: :ref:`String<class_String>`, metadata\: :ref:`Dictionary<class_Dictionary>`, base\: :ref:`Control<class_Control>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>`

Создайте и верните подсказку, которая будет отображаться, когда пользователь наводит курсор на ресурс под указанным ``path`` в доке файловой системы. 

Словарь ``metadata`` предоставляется генератором предварительного просмотра (см. :ref:`EditorResourcePreviewGenerator._generate()<class_EditorResourcePreviewGenerator_private_method__generate>`).

\ ``base`` — это базовая подсказка по умолчанию, которая представляет собой :ref:`VBoxContainer<class_VBoxContainer>` с метками имени файла, типа и размера. Если другой плагин обработал тот же тип файла, ``base`` будет выведено из предыдущего плагина. Для достижения наилучшего результата убедитесь, что базовая подсказка является частью возвращаемого :ref:`Control<class_Control>`.

\ **Примечание:** Не рекомендуется использовать :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`, особенно с тяжелыми ресурсами, такими как модели или текстуры, поскольку это приведет к тому, что редактор перестанет реагировать при создании подсказки. Вы можете использовать :ref:`request_thumbnail()<class_EditorResourceTooltipPlugin_method_request_thumbnail>`, если хотите отобразить предварительный просмотр в подсказке.

\ **Примечание:** Если вы решили отказаться от ``base``, обязательно вызовите :ref:`Node.queue_free()<class_Node_method_queue_free>`, поскольку он не освобождается автоматически.

::

    func _make_tooltip_for_path(path, metadata, base):
        var t_rect = TextureRect.new()
        request_thumbnail(path, t_rect)
        base.add_child(t_rect) # TextureRect появится в нижней части подсказки.
        return base

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceTooltipPlugin_method_request_thumbnail:

.. rst-class:: classref-method

|void| **request_thumbnail**\ (\ path\: :ref:`String<class_String>`, control\: :ref:`TextureRect<class_TextureRect>`\ ) |const| :ref:`🔗<class_EditorResourceTooltipPlugin_method_request_thumbnail>`

Запрашивает миниатюру для указанного :ref:`TextureRect<class_TextureRect>`. Миниатюра создается асинхронно :ref:`EditorResourcePreview<class_EditorResourcePreview>` и автоматически устанавливается, когда доступна.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
