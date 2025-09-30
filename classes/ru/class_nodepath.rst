:github_url: hide

.. _class_NodePath:

NodePath
========

Предварительно проанализированный путь дерева сцены.

.. rst-class:: classref-introduction-group

Описание
----------------

Встроенный тип :ref:`Variant<class_Variant>` **NodePath** представляет собой путь к узлу или свойству в иерархии узлов. Он разработан для эффективной передачи во многие встроенные методы (такие как :ref:`Node.get_node()<class_Node_method_get_node>`, :ref:`Object.set_indexed()<class_Object_method_set_indexed>`, :ref:`Tween.tween_property()<class_Tween_method_tween_property>` и т. д.) без жесткой зависимости от узла или свойства, на которые они указывают.

Путь к узлу представлен как :ref:`String<class_String>`, состоящий из разделенных косой чертой (``/``) имен узлов и разделенных двоеточием (``:``) имен свойств (также называемых «подименами»). Подобно пути файловой системы, ``".."`` и ``"."`` являются специальными именами узлов. Они ссылаются на родительский узел и текущий узел соответственно.

Следующие примеры являются путями относительно текущего узла:

::

    ^"A"     # Указывает на прямого потомка А.
    ^"A/B"   # Указывает на дочерний элемент А — B.
    ^"."     # Указывает на текущий узел.
    ^".."    # Указывает на родительский узел.
    ^"../C"  # Указывает на родственный узел C.
    ^"../.." # Указывает на прародительский узел.

Начальная косая черта означает, что путь абсолютный и начинается с :ref:`SceneTree<class_SceneTree>`:

::

    ^"/root"            # Указывает на корневое окно SceneTree.
    ^"/root/Title"      # Может указывать на корневой узел основной сцены с именем «Title».
    ^"/root/Global"     # Может указывать на автоматически загруженный узел или сцену с именем «Global».

Несмотря на свое название, пути узлов также могут указывать на свойство:

::

    ^":position"           # Указывает на положение этого объекта.
    ^":position:x"         # Указывает на положение данного объекта по оси x.
    ^"Camera3D:rotation:y" # Указывает на дочернюю камеру Camera3D и ее вращение по оси Y.
    ^"/root:size:x"        # Указывает на корневое окно и его ширину.

В некоторых ситуациях можно опустить ведущий ``:`` при указании на свойство объекта. Например, это касается :ref:`Object.set_indexed()<class_Object_method_set_indexed>` и :ref:`Tween.tween_property()<class_Tween_method_tween_property>`, поскольку эти методы вызывают :ref:`get_as_property_path()<class_NodePath_method_get_as_property_path>` под капотом. Однако обычно рекомендуется сохранять префикс ``:``.

Пути узлов не могут проверять, являются ли они допустимыми, и могут указывать на узлы или свойства, которые не существуют. Их значение полностью зависит от контекста, в котором они используются.

Обычно вам не нужно беспокоиться о типе **NodePath**, поскольку строки автоматически преобразуются в этот тип при необходимости. Бывают случаи, когда определение путей узлов полезно. Например, экспортированные свойства **NodePath** позволяют вам легко выбирать любой узел в текущей редактируемой сцене. Они также автоматически обновляются при перемещении, переименовании или удалении узлов в редакторе дерева сцены. См. также :ref:`@GDScript.@export_node_path<class_@GDScript_annotation_@export_node_path>`.

См. также :ref:`StringName<class_StringName>`, который является похожим типом, разработанным для оптимизированных строк.

\ **Примечание:** В булевом контексте **NodePath** будет оцениваться как ``false``, если он пуст (``NodePath("")``). В противном случае **NodePath** всегда будет оцениваться как ``true``.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демо 2D ролевой игры (РПГ) <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ )                                         |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`String<class_String>`\ )     |
   +---------------------------------+----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`get_as_property_path<class_NodePath_method_get_as_property_path>`\ (\ ) |const|                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_names<class_NodePath_method_get_concatenated_names>`\ (\ ) |const|                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_subnames<class_NodePath_method_get_concatenated_subnames>`\ (\ ) |const|                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_name<class_NodePath_method_get_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_name_count<class_NodePath_method_get_name_count>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_subname<class_NodePath_method_get_subname>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_subname_count<class_NodePath_method_get_subname_count>`\ (\ ) |const|                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_NodePath_method_hash>`\ (\ ) |const|                                                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_absolute<class_NodePath_method_is_absolute>`\ (\ ) |const|                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_empty<class_NodePath_method_is_empty>`\ (\ ) |const|                                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`slice<class_NodePath_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_NodePath_operator_neq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_NodePath_operator_eq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ )  |
   +-------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_NodePath_constructor_NodePath:

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ ) :ref:`🔗<class_NodePath_constructor_NodePath>`

Создает пустой **NodePath**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`NodePath<class_NodePath>`\ )

Создает **NodePath** как копию заданного **NodePath**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`String<class_String>`\ )

Создает **NodePath** из :ref:`String<class_String>`. Созданный путь является абсолютным, если предваряется косой чертой (см. :ref:`is_absolute()<class_NodePath_method_is_absolute>`).

"Подимена", необязательно включаемые после пути к целевому узлу, могут указывать на свойства, а также могут быть вложенными.

Следующие строки могут быть допустимыми путями узлов:

::

    # Указывает на узел Sprite2D.
    "Level/RigidBody2D/Sprite2D"

    # Указывает на узел Sprite2D и его ресурс «texture».
    # get_node() извлечет Sprite2D, в то время как get_node_and_resource()
    # извлечет как узел Sprite2D, так и ресурс «texture».
    "Level/RigidBody2D/Sprite2D:texture"

    # Указывает на узел Sprite2D и его свойство «position».
    "Level/RigidBody2D/Sprite2D:position"

    # Указывает на узел Sprite2D и компонент «x» его свойства «position».
    "Level/RigidBody2D/Sprite2D:position:x"

    # Указывает на узел RigidBody2D как на абсолютный путь, начинающийся от SceneTree.
    "/root/Level/RigidBody2D"

\ **Примечание:** В GDScript также можно преобразовать постоянную строку в путь к узлу, добавив к ней префикс ``^``. ``^"path/to/node"`` эквивалентно ``NodePath("path/to/node")``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_NodePath_method_get_as_property_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_as_property_path**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_as_property_path>`

Возвращает копию этого пути узла с префиксом двоеточия (``:``), преобразуя его в чистый путь свойства без имен узлов (относительно текущего узла).


.. tabs::

 .. code-tab:: gdscript

    # node_path указывает на свойство «x» дочернего узла с именем «position».
    var node_path = ^"position:x"

    # property_path указывает на «position» по оси «x» этого узла.
    var property_path = node_path.get_as_property_path()
    print(property_path) # Выводит ":position:x"

 .. code-tab:: csharp

    // node_path указывает на свойство «x» дочернего узла с именем «position».
    var nodePath = new NodePath("position:x");

    // property_path указывает на «position» по оси «x» этого узла.
    NodePath propertyPath = nodePath.GetAsPropertyPath();
    GD.Print(propertyPath); // Выводит ":position:x"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_names:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_names**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_names>`

Возвращает все имена узлов, объединенные с помощью символа косой черты (``/``) как единое :ref:`StringName<class_StringName>`.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_subnames:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_subnames**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_subnames>`

Возвращает все подимена свойств, объединенные символом двоеточия (``:``) как единое :ref:`StringName<class_StringName>`.


.. tabs::

 .. code-tab:: gdscript

    var node_path = ^"Sprite2D:texture:resource_name"
    print(node_path.get_concatenated_subnames()) # Выводит "texture:resource_name"

 .. code-tab:: csharp

    var nodePath = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(nodePath.GetConcatenatedSubnames()); // Выводит "texture:resource_name"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_name>`

Возвращает имя узла, указанное ``idx``, начиная с 0. Если ``idx`` выходит за пределы, генерируется ошибка. См. также :ref:`get_subname_count()<class_NodePath_method_get_subname_count>` и :ref:`get_name_count()<class_NodePath_method_get_name_count>`.


.. tabs::

 .. code-tab:: gdscript

    var sprite_path = NodePath("../RigidBody2D/Sprite2D")
    print(sprite_path.get_name(0)) # Выводит ".."
    print(sprite_path.get_name(1)) # Выводит "RigidBody2D"
    print(sprite_path.get_name(2)) # Выводит "Sprite"

 .. code-tab:: csharp

    var spritePath = new NodePath("../RigidBody2D/Sprite2D");
    GD.Print(spritePath.GetName(0)); // Выводит ".."
    GD.Print(spritePath.GetName(1)); // Выводит "PathFollow2D"
    GD.Print(spritePath.GetName(2)); // Выводит "Sprite"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_name_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_name_count>`

Возвращает количество имен узлов в пути. Подимена свойств не включены.

Например, ``"../RigidBody2D/Sprite2D:texture"`` содержит 3 имени узлов.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_subname**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_subname>`

Возвращает имя свойства, указанное ``idx``, начиная с 0. Если ``idx`` выходит за пределы, генерируется ошибка. См. также :ref:`get_subname_count()<class_NodePath_method_get_subname_count>`.


.. tabs::

 .. code-tab:: gdscript

    var path_to_name = NodePath("Sprite2D:texture:resource_name")
    print(path_to_name.get_subname(0)) # Выводит "texture"
    print(path_to_name.get_subname(1)) # Выводит "resource_name"

 .. code-tab:: csharp

    var pathToName = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(pathToName.GetSubname(0)); // Выводит "texture"
    GD.Print(pathToName.GetSubname(1)); // Выводит "resource_name"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_subname_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_subname_count>`

Возвращает количество имен свойств («подимен») в пути. Каждое подимя в пути узла указывается после символа двоеточия (``:``).

Например, ``"Level/RigidBody2D/Sprite2D:texture:resource_name"`` содержит 2 подимени.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_NodePath_method_hash>`

Возвращает 32-битное хэш-значение, представляющее содержимое пути узла.

\ **Примечание:** Пути узлов с одинаковыми значениями хэша *не* гарантированно будут одинаковыми из-за коллизий хэшей. Пути узлов с разными значениями хэшей гарантированно будут разными.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_absolute**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_absolute>`

Возвращает ``true``, если путь к узлу абсолютный. В отличие от относительного пути, абсолютный путь представлен начальным символом косой черты (``/``) и всегда начинается с :ref:`SceneTree<class_SceneTree>`. Его можно использовать для надежного доступа к узлам из корневого узла (например, ``"/root/Global"``, если существует автозагрузка с именем "Global").

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_empty>`

Возвращает ``true``, если путь к узлу был создан из пустой :ref:`String<class_String>` (``""``).

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_slice:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_NodePath_method_slice>`

Возвращает срез **NodePath** от ``begin`` (включительно) до ``end`` (исключительно) как новый **NodePath**.

Абсолютное значение ``begin`` и ``end`` будет ограничено суммой :ref:`get_name_count()<class_NodePath_method_get_name_count>` и :ref:`get_subname_count()<class_NodePath_method_get_subname_count>`, поэтому значение по умолчанию для ``end`` делает его срезом до конца **NodePath** по умолчанию (т. е. ``path.slice(1)`` является сокращением для ``path.slice(1, path.get_name_count() + path.get_subname_count())``).

Если ``begin`` или ``end`` отрицательны, они будут относительными к концу **NodePath** (т. е. ``path.slice(0, -2)`` является сокращением для ``path.slice(0, path.get_name_count() + path.get_subname_count() - 2)``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_NodePath_operator_neq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_neq_NodePath>`

Возвращает ``true``, если пути двух узлов не равны.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_operator_eq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_eq_NodePath>`

Возвращает ``true``, если два пути узлов равны, то есть они состоят из одинаковых имен узлов и подимен в одинаковом порядке.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
