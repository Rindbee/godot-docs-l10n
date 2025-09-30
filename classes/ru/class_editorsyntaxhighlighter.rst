:github_url: hide

.. _class_EditorSyntaxHighlighter:

EditorSyntaxHighlighter
=======================

**Наследует:** :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`GDScriptSyntaxHighlighter<class_GDScriptSyntaxHighlighter>`

Базовый класс для :ref:`SyntaxHighlighter<class_SyntaxHighlighter>`, используемый :ref:`ScriptEditor<class_ScriptEditor>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый класс, от которого расширяются все :ref:`SyntaxHighlighter<class_SyntaxHighlighter>`, используемые :ref:`ScriptEditor<class_ScriptEditor>`.

Добавьте подсветку синтаксиса в отдельный скрипт, вызвав :ref:`ScriptEditorBase.add_syntax_highlighter()<class_ScriptEditorBase_method_add_syntax_highlighter>`. Чтобы применить ко всем скриптам при открытии, вызовите :ref:`ScriptEditor.register_syntax_highlighter()<class_ScriptEditor_method_register_syntax_highlighter>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` | :ref:`_create<class_EditorSyntaxHighlighter_private_method__create>`\ (\ ) |virtual| |const|                                   |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                   | :ref:`_get_name<class_EditorSyntaxHighlighter_private_method__get_name>`\ (\ ) |virtual| |const|                               |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`_get_supported_languages<class_EditorSyntaxHighlighter_private_method__get_supported_languages>`\ (\ ) |virtual| |const| |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorSyntaxHighlighter_private_method__create:

.. rst-class:: classref-method

:ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` **_create**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__create>`

Виртуальный метод, который создает новый экземпляр подсветки синтаксиса.

.. rst-class:: classref-item-separator

----

.. _class_EditorSyntaxHighlighter_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__get_name>`

Виртуальный метод, который можно переопределить для возврата имени подсветки синтаксиса.

.. rst-class:: classref-item-separator

----

.. _class_EditorSyntaxHighlighter_private_method__get_supported_languages:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_languages**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__get_supported_languages>`

Виртуальный метод, который можно переопределить для возврата имен поддерживаемых языков.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
