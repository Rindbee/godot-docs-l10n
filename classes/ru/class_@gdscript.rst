:github_url: hide

.. _class_@GDScript:

@GDScript
=========

Встроенные в GDScript константы, функции и аннотации.

.. rst-class:: classref-introduction-group

Описание
----------------

Список служебных функций и аннотаций, доступных из любого скрипта, написанного на GDScript.

Список глобальных функций и констант, к которым можно обращаться в любом скриптовом языке, см. в :ref:`@GlobalScope<class_@GlobalScope>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Экспорт GDScript <../tutorials/scripting/gdscript/gdscript_exports>`

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`           | :ref:`Color8<class_@GDScript_method_Color8>`\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`assert<class_@GDScript_method_assert>`\ (\ condition\: :ref:`bool<class_bool>`, message\: :ref:`String<class_String>` = ""\ )                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`char<class_@GDScript_method_char>`\ (\ code\: :ref:`int<class_int>`\ )                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`convert<class_@GDScript_method_convert>`\ (\ what\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ )                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`dict_to_inst<class_@GDScript_method_dict_to_inst>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ )                                                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_stack<class_@GDScript_method_get_stack>`\ (\ )                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`inst_to_dict<class_@GDScript_method_inst_to_dict>`\ (\ instance\: :ref:`Object<class_Object>`\ )                                                                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_instance_of<class_@GDScript_method_is_instance_of>`\ (\ value\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant<class_Variant>`\ )                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`len<class_@GDScript_method_len>`\ (\ var\: :ref:`Variant<class_Variant>`\ )                                                                                        |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`     | :ref:`load<class_@GDScript_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`ord<class_@GDScript_method_ord>`\ (\ char\: :ref:`String<class_String>`\ )                                                                                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`     | :ref:`preload<class_@GDScript_method_preload>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`print_debug<class_@GDScript_method_print_debug>`\ (\ ...\ ) |vararg|                                                                                               |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`print_stack<class_@GDScript_method_print_stack>`\ (\ )                                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`range<class_@GDScript_method_range>`\ (\ ...\ ) |vararg|                                                                                                           |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`type_exists<class_@GDScript_method_type_exists>`\ (\ type\: :ref:`StringName<class_StringName>`\ )                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_@GDScript_constant_PI:

.. rst-class:: classref-constant

**PI** = ``3.14159265358979`` :ref:`🔗<class_@GDScript_constant_PI>`

Константа, которая показывает, сколько раз диаметр окружности укладывается вокруг её периметра. Это эквивалентно ``TAU / 2``, или повороту на 180 градусов.

.. _class_@GDScript_constant_TAU:

.. rst-class:: classref-constant

**TAU** = ``6.28318530717959`` :ref:`🔗<class_@GDScript_constant_TAU>`

Константа окружности, длина окружности круга в радианах. Это эквивалентно числу ``PI * 2``, или повороту в 360 градусов.

.. _class_@GDScript_constant_INF:

.. rst-class:: classref-constant

**INF** = ``inf`` :ref:`🔗<class_@GDScript_constant_INF>`

Положительная бесконечность с плавающей точкой. Это результат деления с плавающей точкой, когда делитель равен ``0.0``. Для отрицательной бесконечности, используйте ``-INF``. Деление на ``-0.0`` приведет к отрицательной бесконечности, если числитель положительный, поэтому деление на ``0.0`` не то же самое, что деление на ``-0.0`` (несмотря на то, что ``0.0 == -0.0`` возвращает ``true``).

\ **Внимание:** Числовая бесконечность является понятием только для чисел с плавающей точкой и не имеет эквивалента для целых чисел. Деление целого числа на ``0`` не приведет к :ref:`INF<class_@GDScript_constant_INF>` и вместо этого приведет к ошибке времени выполнения.

.. _class_@GDScript_constant_NAN:

.. rst-class:: classref-constant

**NAN** = ``nan`` :ref:`🔗<class_@GDScript_constant_NAN>`

"Не число" (или NaN), недопустимое значение с плавающей точкой. Его возвращают некоторые некорректные операции, такие как деление числа с плавающей точкой ``0.0`` на ``0.0``.

\ :ref:`NAN<class_@GDScript_constant_NAN>` обладает особыми свойствами, включая то, что ``!=`` всегда возвращает ``true``, пока другие операторы сравнения всегда возвращают ``false``. Это справедливо даже при сравнении самой константы с собой (``NAN == NAN`` возвращает ``false`` и ``NAN != NAN`` возвращает ``true``). Из-за этой особенности необходимо использовать :ref:`@GlobalScope.is_nan()<class_@GlobalScope_method_is_nan>`, чтобы проверить, что число равно :ref:`NAN<class_@GDScript_constant_NAN>`.

\ **Внимание:** "Не число" (или NaN) является понятием только для чисел с плавающей точкой и не имеет эквивалента для целых чисел. Деление целого числа ``0`` на ``0`` не приведет к :ref:`NAN<class_@GDScript_constant_NAN>` и вместо этого приведет к ошибке времени выполнения.

.. rst-class:: classref-section-separator

----

Аннотации
------------------

.. _class_@GDScript_annotation_@abstract:

.. rst-class:: classref-annotation

**@abstract**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@abstract>`

Помечает класс или метод как абстрактный.

Абстрактный класс — это класс, экземпляр которого невозможно создать напрямую. Вместо этого он предназначен для наследования другими классами. Попытка создать экземпляр абстрактного класса приведёт к ошибке.

Абстрактный метод — это метод, не имеющий реализации. Поэтому после заголовка функции ожидается символ новой строки или точка с запятой. Это определяет соглашение, которому должны соответствовать наследующие классы, поскольку сигнатура метода должна быть совместима при переопределении.

Наследующие классы должны либо предоставлять реализации для всех абстрактных методов, либо наследующий класс должен быть помечен как абстрактный. Если у класса есть хотя бы один абстрактный метод (собственный или нереализованный унаследованный), то он также должен быть помечен как абстрактный. Однако обратное неверно: абстрактный класс может не иметь абстрактных методов.

::

    @abstract class Shape:
        @abstract func draw()

    class Circle extends Shape:
        func draw():
            print("Рисование круга.")

    class Square extends Shape:
        func draw():
            print("Рисование квадрата.")

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export:

.. rst-class:: classref-annotation

**@export**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export>`

Отметьте следующее свойство как экспортированное (его можно редактировать в панели инспектора и сохранить на диске). Для управления типом экспортируемого свойства используйте нотацию подсказки типа.

::

    extends Node

    enum Direction {LEFT, RIGHT, UP, DOWN}

    # встроенные типы.
    @export var string = ""
    @export var int_number = 5
    @export var float_number: float = 5

    # Перечисления
    @export var type: Variant.Type
    @export var format: Image.Format
    @export var direction: Direction

    # Ресурсы.
    @export var image: Image
    @export var custom_resource: CustomResource

    # Узлы.
    @export var node: Node
    @export var custom_node: CustomNode

    # Типизированные массивы.
    @export var int_array: Array[int]
    @export var direction_array: Array[Direction]
    @export var image_array: Array[Image]
    @export var node_array: Array[Node]

\ **Примечание.** Пользовательские ресурсы и узлы должны быть зарегистрированы как глобальные классы с использованием ``class_name``.

\ **Примечание:** Экспорт узлов поддерживается только в классах, производных от :ref:`Node<class_Node>`, и имеет ряд других ограничений.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_category:

.. rst-class:: classref-annotation

**@export_category**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_category>`

Определяет новую категорию для следующих экспортируемых свойств. Помогает организовать свойства в Инспекторском доке.

Также просмотрите :ref:`@GlobalScope.PROPERTY_USAGE_CATEGORY<class_@GlobalScope_constant_PROPERTY_USAGE_CATEGORY>`.

::

    @export_category("Statistics")
    @export var hp = 30
    @export var speed = 1.25

\ **Примечание:** Категории в листе Инспекторского дока обычно разделяют свойства с других классов (Node, Node2D, Sprite, и др.). Для лучшего понимания, вместо этого рекомендуется использовать :ref:`@export_group<class_@GDScript_annotation_@export_group>` и :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_color_no_alpha:

.. rst-class:: classref-annotation

**@export_color_no_alpha**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_color_no_alpha>`

Экспорт свойства :ref:`Color<class_Color>` без разрешения редактирования его прозрачности (:ref:`Color.a<class_Color_property_a>`)

См. также :ref:`@GlobalScope.PROPERTY_HINT_COLOR_NO_ALPHA<class_@GlobalScope_constant_PROPERTY_HINT_COLOR_NO_ALPHA>`.

::

    @export_color_no_alpha var dye_color: Color
    @export_color_no_alpha var dye_colors: Array[Color]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_custom:

.. rst-class:: classref-annotation

**@export_custom**\ (\ hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\] = 6\ ) :ref:`🔗<class_@GDScript_annotation_@export_custom>`

Позволяет устанавливать пользовательскую подсказку, строку подсказки и флаги использования для экспортируемого свойства. Обратите внимание, что в GDScript нет проверки, он просто передает параметры в редактор.

::

    @export_custom(PROPERTY_HINT_NODE, "suffix:m") var suffix: Vector3

\ **Примечание:** Независимо от значения ``usage`` флаг :ref:`@GlobalScope.PROPERTY_USAGE_SCRIPT_VARIABLE<class_@GlobalScope_constant_PROPERTY_USAGE_SCRIPT_VARIABLE>` всегда добавляется, как и в случае с любой, явно объявленной переменной скрипта.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_dir:

.. rst-class:: classref-annotation

**@export_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_dir>`

Экспортируйте свойство :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] или :ref:`PackedStringArray<class_PackedStringArray>` как путь к каталогу. Путь будет ограничен папкой проекта и ее подпапками. См. :ref:`@export_global_dir<class_@GDScript_annotation_@export_global_dir>`, чтобы разрешить выбор из всей файловой системы.

См. также :ref:`@GlobalScope.PROPERTY_HINT_DIR<class_@GlobalScope_constant_PROPERTY_HINT_DIR>`\ 

::

    @export_dir var sprite_folder_path: String
    @export_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_enum:

.. rst-class:: classref-annotation

**@export_enum**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_enum>`

Экспортируйте свойство :ref:`int<class_int>`, :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, :ref:`PackedInt64Array<class_PackedInt64Array>` или :ref:`PackedStringArray<class_PackedStringArray>` как перечисленный список параметров (или массив параметров). Если свойство имеет тип :ref:`int<class_int>`, то индекс значения сохраняется в том же порядке, в котором указаны значения. Вы можете добавлять явные значения с помощью двоеточия. Если свойство имеет тип :ref:`String<class_String>`, то значение сохраняется.

См. также :ref:`@GlobalScope.PROPERTY_HINT_ENUM<class_@GlobalScope_constant_PROPERTY_HINT_ENUM>`.

::

    @export_enum("Warrior", "Magician", "Thief") var character_class: int
    @export_enum("Slow:30", "Average:60", "Very Fast:200") var character_speed: int
    @export_enum("Rebecca", "Mary", "Leah") var character_name: String

    @export_enum("Sword", "Spear", "Mace") var character_items: Array[int]
    @export_enum("double_jump", "climb", "dash") var character_skills: Array[String]

Если вы хотите задать начальное значение, вы должны указать его явно:

::

    @export_enum("Rebecca", "Mary", "Leah") var character_name: String = "Rebecca"

Если вы хотите использовать именованные перечисления GDScript, то вместо этого используйте :ref:`@export<class_@GDScript_annotation_@export>`:

::

    enum CharacterName {REBECCA, MARY, LEAH}
    @export var character_name: CharacterName

    enum CharacterItem {SWORD, SPEAR, MACE}
    @export var character_items: Array[CharacterItem]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_exp_easing:

.. rst-class:: classref-annotation

**@export_exp_easing**\ (\ hints\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_exp_easing>`

Экспортирует свойство с плавающей точкой с помощью виджета редактора плавности. Дополнительные подсказки могут быть предоставлены, чтобы подкорректировать действия виджета. ``"attenuation"`` ("затухание") переворачивает ломаную, что делает её более интуитивной для редактирования свойств затухания. ``"positive_only"`` ("только_положительные") ограничивает диапазон значений до 0, тем самым оставляя только 0 и числа больше 0.

Также просмотрите :ref:`@GlobalScope.PROPERTY_HINT_EXP_EASING<class_@GlobalScope_constant_PROPERTY_HINT_EXP_EASING>`.

::

    @export_exp_easing var transition_speed
    @export_exp_easing("attenuation") var fading_attenuation
    @export_exp_easing("positive_only") var effect_power
    @export_exp_easing var speeds: Array[float]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_file:

.. rst-class:: classref-annotation

**@export_file**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_file>`

Экспортируйте свойство :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] или :ref:`PackedStringArray<class_PackedStringArray>` как путь к файлу. Путь будет ограничен папкой проекта и её подпапками. См. :ref:`@export_global_file<class_@GDScript_annotation_@export_global_file>`, чтобы разрешить выбор из всей файловой системы.

Если указан ``filter``, для выбора будут доступны только соответствующие файлы.

См. также :ref:`@GlobalScope.PROPERTY_HINT_FILE<class_@GlobalScope_constant_PROPERTY_HINT_FILE>`.

::

    @export_file var sound_effect_path: String
    @export_file("*.txt") var notes_path: String
    @export_file var level_paths: Array[String]

\ **Примечание:** Файл будет сохранён и будет указан как UID, если он доступен. Это гарантирует корректность ссылки даже при перемещении файла. Вы можете преобразовать её в путь, используя методы :ref:`ResourceUID<class_ResourceUID>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_file_path:

.. rst-class:: classref-annotation

**@export_file_path**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_file_path>`

То же, что и :ref:`@export_file<class_@GDScript_annotation_@export_file>`, но файл будет сохранён как необработанный путь. Это означает, что он может стать недействительным при перемещении файла. Если вы экспортируете путь :ref:`Resource<class_Resource>`, рассмотрите возможность использования :ref:`@export_file<class_@GDScript_annotation_@export_file>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags:

.. rst-class:: classref-annotation

**@export_flags**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_flags>`

Экспортировать целочисленное свойство как поле битового флага. Это позволяет хранить несколько значений "checked" или ``true`` с одним свойством и удобно выбирать их из панели инспектора.

См. также :ref:`@GlobalScope.PROPERTY_HINT_FLAGS<class_@GlobalScope_constant_PROPERTY_HINT_FLAGS>`.

::

    @export_flags("Fire", "Water", "Earth", "Wind") var spell_elements = 0

Вы можете добавлять явные значения, используя двоеточие:

::

    @export_flags("Self:4", "Allies:8", "Foes:16") var spell_targets = 0

Вы также можете объединить несколько флагов:

::

    @export_flags("Self:4", "Allies:8", "Self and Allies:12", "Foes:16")
    var spell_targets = 0

\ **Примечание:** Значение флага должно быть не менее ``1`` и не более ``2 ** 32 - 1``.

\ **Примечание:** В отличие от :ref:`@export_enum<class_@GDScript_annotation_@export_enum>`, предыдущее явное значение не учитывается. В следующем примере A равно 16, B равно 2, C равно 4.

::

    @export_flags("A:16", "B", "C") var x

Вы также можете использовать аннотацию на :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, и :ref:`PackedInt64Array<class_PackedInt64Array>`\ 

::

    @export_flags("Fire", "Water", "Earth", "Wind") var phase_elements: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_navigation:

.. rst-class:: classref-annotation

**@export_flags_2d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_navigation>`

Экспортирует свойство целого числа как поле битового флага для 2D слоев навигации. Виджет в вкладке инспектора будет использовать имена слоев, определённых в :ref:`ProjectSettings.layer_names/2d_navigation/layer_1<class_ProjectSettings_property_layer_names/2d_navigation/layer_1>`.

Также просмотрите :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_NAVIGATION>`.

::

    @export_flags_2d_navigation var navigation_layers: int
    @export_flags_2d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_physics:

.. rst-class:: classref-annotation

**@export_flags_2d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_physics>`

Экспортирует свойство целого числа как поле битового флага для 2D физики слоев. Виджет в окне Инспектора будет использовать имена слоев, определённых в :ref:`ProjectSettings.layer_names/2d_physics/layer_1<class_ProjectSettings_property_layer_names/2d_physics/layer_1>`.

Также просмотрите :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_PHYSICS>`.

::

    @export_flags_2d_physics var physics_layers: int
    @export_flags_2d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_render:

.. rst-class:: classref-annotation

**@export_flags_2d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_render>`

Экспортирует свойство целого числа как поле битового флага для рендеринга 2D слоев. Виджет в окне Инспектора будет использовать имена слоев, указанных в :ref:`ProjectSettings.layer_names/2d_render/layer_1<class_ProjectSettings_property_layer_names/2d_render/layer_1>`.

Также просмотрите :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_RENDER>`.

::

    @export_flags_2d_render var render_layers: int
    @export_flags_2d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_navigation:

.. rst-class:: classref-annotation

**@export_flags_3d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_navigation>`

Экспортирует свойство целого числа как поле битового флага для 3D слоёв навигации. Виджет в Инспекторском доке будет использовать имена слоёв, указанных в :ref:`ProjectSettings.layer_names/3d_navigation/layer_1<class_ProjectSettings_property_layer_names/3d_navigation/layer_1>`.

Также просмотрите :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_NAVIGATION>`.

::

    @export_flags_3d_navigation var navigation_layers: int
    @export_flags_3d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_physics:

.. rst-class:: classref-annotation

**@export_flags_3d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_physics>`

Экспортирует свойство целого числа как поле битового флага для 3D физических слоев. Виджет в Инспекторском доке будет использовать имена слоёв, указанных в :ref:`ProjectSettings.layer_names/3d_physics/layer_1<class_ProjectSettings_property_layer_names/3d_physics/layer_1>`.

Также посмотрите :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_PHYSICS>`.

::

    @export_flags_3d_physics var physics_layers: int
    @export_flags_3d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_render:

.. rst-class:: classref-annotation

**@export_flags_3d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_render>`

Экспортирует свойство целого числа как поле битового флага для рендеринга 3D слоев. Виджет в Инспекторском доке будет использовать имена слоёв, указанных в :ref:`ProjectSettings.layer_names/3d_render/layer_1<class_ProjectSettings_property_layer_names/3d_render/layer_1>`.

Также посмотрите :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_RENDER>`.

::

    @export_flags_3d_render var render_layers: int
    @export_flags_3d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_avoidance:

.. rst-class:: classref-annotation

**@export_flags_avoidance**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_avoidance>`

Экспортирует целочисленное свойство как поле битового флага для слоев избегания навигации. Виджет в Инспекторском доке будет использовать имена слоёв, объявленных в :ref:`ProjectSettings.layer_names/avoidance/layer_1<class_ProjectSettings_property_layer_names/avoidance/layer_1>`.

Также посмотрите :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_AVOIDANCE<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_AVOIDANCE>`.

::

    @export_flags_avoidance var avoidance_layers: int
    @export_flags_avoidance var avoidance_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_dir:

.. rst-class:: classref-annotation

**@export_global_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_global_dir>`

Экспортирует свойство :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] или :ref:`PackedStringArray<class_PackedStringArray>` как абсолютный путь к каталогу. Путь может быть взят из всей файловой системы. Чтобы ограничиться папкой проекта и ее вложенными папками, смотрите :ref:`@export_dir<class_@GDScript_annotation_@export_dir>`.

Также просмотрите :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_DIR<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_DIR>`.

::

    @export_global_dir var sprite_folder_path: String
    @export_global_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_file:

.. rst-class:: classref-annotation

**@export_global_file**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_global_file>`

Экспортируйте свойство :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] или :ref:`PackedStringArray<class_PackedStringArray>` как абсолютный путь к файлу. Путь может быть взят из всей файловой системы. Используйте :ref:`@export_file<class_@GDScript_annotation_@export_file>`, чтобы ограничить его до папок проекта или его подпапок.

Если указан ``filter``, то для выборки будут доступны только совпадающие файлы.

Также просмотрите :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_FILE<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_FILE>`.

::

    @export_global_file var sound_effect_path: String
    @export_global_file("*.txt") var notes_path: String
    @export_global_file var multiple_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_group:

.. rst-class:: classref-annotation

**@export_group**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_group>`

Определите новую группу для следующих экспортированных свойств. Это поможет упорядочить свойства в доке Инспектора. Группы могут быть добавлены с необязательным префиксом ``prefix``, который заставит группу учитывать только те свойства, которые имеют этот префикс. Группировка прервется на первом свойстве, не имеющем префикса. Префикс также будет удален из имени свойства в доке Инспектора.

Если префикс ``prefix`` не указан, то каждое следующее свойство будет добавлено в группу. Группа заканчивается, когда определяется следующая группа или категория. Вы также можете принудительно завершить группу, используя эту аннотацию с пустыми строками в качестве параметров, ``@export_group("", "")``.

Группы не могут быть вложенными, используйте :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>` для добавления подгрупп внутри групп.

См. также :ref:`@GlobalScope.PROPERTY_USAGE_GROUP<class_@GlobalScope_constant_PROPERTY_USAGE_GROUP>`.

::

    @export_group("Racer Properties")
    @export var nickname = "Nick"
    @export var age = 26

    @export_group("Car Properties", "car_")
    @export var car_label = "Speedy"
    @export var car_number = 3

    @export_group("", "")
    @export var ungrouped_number = 3

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_multiline:

.. rst-class:: classref-annotation

**@export_multiline**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_multiline>`

Экспортирует свойство :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], :ref:`PackedStringArray<class_PackedStringArray>`, :ref:`Dictionary<class_Dictionary>` или :ref:`Array<class_Array>`\ \[:ref:`Dictionary<class_Dictionary>`\ \] с большим виджетом :ref:`TextEdit<class_TextEdit>` вместо :ref:`LineEdit<class_LineEdit>`. Это добавляет поддержку многострочного содержимого и упрощает редактирование большого объема текста, хранящегося в свойстве.

См. также :ref:`@GlobalScope.PROPERTY_HINT_MULTILINE_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_MULTILINE_TEXT>`.

::

    @export_multiline var character_biography
    @export_multiline var npc_dialogs: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_node_path:

.. rst-class:: classref-annotation

**@export_node_path**\ (\ type\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_node_path>`

Экспортирует свойство :ref:`NodePath<class_NodePath>` или :ref:`Array<class_Array>`\ \[:ref:`NodePath<class_NodePath>`\ \] с фильтром для разрешенных типов узлов.

См. также :ref:`@GlobalScope.PROPERTY_HINT_NODE_PATH_VALID_TYPES<class_@GlobalScope_constant_PROPERTY_HINT_NODE_PATH_VALID_TYPES>`.

::

    @export_node_path("Button", "TouchScreenButton") var some_button
    @export_node_path("Button", "TouchScreenButton") var many_buttons: Array[NodePath]

\ **Примечание:** Тип должен быть собственным классом или глобально зарегистрированным скриптом (с помощью ключевого слова ``class_name``), который наследует :ref:`Node<class_Node>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_placeholder:

.. rst-class:: classref-annotation

**@export_placeholder**\ (\ placeholder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_placeholder>`

Экспортируйте свойство :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \] или :ref:`PackedStringArray<class_PackedStringArray>` с текстом-заполнителем, отображаемым в виджете редактора, если значение отсутствует.

См. также :ref:`@GlobalScope.PROPERTY_HINT_PLACEHOLDER_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_PLACEHOLDER_TEXT>`.

::

    @export_placeholder("Name in lowercase") var character_id: String
    @export_placeholder("Name in lowercase") var friend_ids: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_range:

.. rst-class:: classref-annotation

**@export_range**\ (\ min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, step\: :ref:`float<class_float>` = 1.0, extra_hints\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_range>`

Экспортирует свойство :ref:`int<class_int>`, :ref:`float<class_float>`, :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`Array<class_Array>`\ \[:ref:`float<class_float>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, :ref:`PackedInt64Array<class_PackedInt64Array>`, :ref:`PackedFloat32Array<class_PackedFloat32Array>` или :ref:`PackedFloat64Array<class_PackedFloat64Array>` как значение диапазона. Диапазон должен быть определен ``min`` и ``max``, а также необязательным ``step`` и различными дополнительными подсказками. ``step`` по умолчанию равен ``1`` для целочисленных свойств. Для чисел с плавающей точкой это значение зависит от настройки :ref:`EditorSettings.interface/inspector/default_float_step<class_EditorSettings_property_interface/inspector/default_float_step>`.

Если указаны подсказки ``"or_greater"`` и ``"or_less"``, виджет редактора не будет ограничивать значение на границах диапазона. Подсказка ``"exp"`` заставит редактируемые значения в диапазоне изменяться экспоненциально. Подсказка ``"hide_slider"`` скроет элемент ползунка виджета редактора.

Подсказки также позволяют указать единицы измерения для редактируемого значения. С помощью ``"radians_as_degrees"`` вы можете указать, что фактическое значение находится в радианах, но должно отображаться в градусах в доке инспектора (значения диапазона также должны быть в градусах). ``"degrees"`` позволяет добавить знак градуса в качестве суффикса единицы измерения (значение при этом не изменяется). Наконец, пользовательский суффикс может быть задан с помощью ``"suffix:unit"``, где "unit" может быть любой строкой.

См. также :ref:`@GlobalScope.PROPERTY_HINT_RANGE<class_@GlobalScope_constant_PROPERTY_HINT_RANGE>`.

::

    @export_range(0, 20) var number
    @export_range(-10, 20) var number
    @export_range(-10, 20, 0.2) var number: float
    @export_range(0, 20) var numbers: Array[float]

    @export_range(0, 100, 1, "or_greater") var power_percent
    @export_range(0, 100, 1, "or_greater", "or_less") var health_delta

    @export_range(-180, 180, 0.001, "radians_as_degrees") var angle_radians
    @export_range(0, 360, 1, "degrees") var angle_degrees
    @export_range(-8, 8, 2, "suffix:px") var target_offset

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_storage:

.. rst-class:: classref-annotation

**@export_storage**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_storage>`

Экспорт свойства с :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` флажком. Свойство не отображается в редакторе, но оно сериализуется и сохраняется в сцене или файле ресурсов. Это может быть полезно для :ref:`@tool<class_@GDScript_annotation_@tool>` скриптов. Так же значение свойства копируется, когда :ref:`Resource.duplicate()<class_Resource_method_duplicate>` или :ref:`Node.duplicate()<class_Node_method_duplicate>` вызывается, в отличии от не экспортируемых переменных

::

    var a # Не хранится в файле, не отображается в редакторе .
    @export_storage var b # Хранится в файле, не отображается в редакторе.
    @export var c: int # Хранится в файле, отображается в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_subgroup:

.. rst-class:: classref-annotation

**@export_subgroup**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_subgroup>`

Определите новую подгруппу для следующих экспортируемых свойств. Это помогает организовать свойства в доке инспектора. Подгруппы работают точно так же, как группы, за исключением того, что для них нужна родительская группа. См. :ref:`@export_group<class_@GDScript_annotation_@export_group>`.

См. также :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>`.

::

    @export_group("Racer Properties")
    @export var nickname = "Nick"
    @export var age = 26

    @export_subgroup("Car Properties", "car_")
    @export var car_label = "Speedy"
    @export var car_number = 3

\ **Примечание:** Подгруппы не могут быть вложенными, но вы можете использовать разделитель слеш (``/``) для достижения желаемого эффекта:

::

    @export_group("Car Properties")
    @export_subgroup("Wheels", "wheel_")
    @export_subgroup("Wheels/Front", "front_wheel_")
    @export var front_wheel_strength = 10
    @export var front_wheel_mobility = 5
    @export_subgroup("Wheels/Rear", "rear_wheel_")
    @export var rear_wheel_strength = 8
    @export var rear_wheel_mobility = 3
    @export_subgroup("Wheels", "wheel_")
    @export var wheel_material: PhysicsMaterial

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_tool_button:

.. rst-class:: classref-annotation

**@export_tool_button**\ (\ text\: :ref:`String<class_String>`, icon\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_tool_button>`

Экспортируйте свойство :ref:`Callable<class_Callable>` как нажимаемую кнопку с меткой ``text``. При нажатии кнопки вызывается вызываемое свойство.

Если указан ``icon``, он используется для получения значка для кнопки через :ref:`Control.get_theme_icon()<class_Control_method_get_theme_icon>` из типа темы ``"EditorIcons"``. Если ``icon`` опущен, вместо него используется значок по умолчанию ``"Callable"``.

Рассмотрите возможность использования :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`, чтобы обеспечить безопасную отмену действия.

Смотрите также :ref:`@GlobalScope.PROPERTY_HINT_TOOL_BUTTON<class_@GlobalScope_constant_PROPERTY_HINT_TOOL_BUTTON>`.

::

    @tool
    extends Sprite2D

    @export_tool_button("Hello") var hello_action = hello
    @export_tool_button("Randomize the color!", "ColorRect")
    var randomize_color_action = randomize_color

    func hello():
        print("Hello world!")

    func randomize_color():
        var undo_redo = EditorInterface.get_editor_undo_redo()
        undo_redo.create_action("Randomized Sprite2D Color")
        undo_redo.add_do_property(self, &"self_modulate", Color(randf(), randf(), randf()))
        undo_redo.add_undo_property(self, &"self_modulate", self_modulate)
        undo_redo.commit_action()

\ **Примечание:** Свойство экспортируется без флага :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>`, поскольку :ref:`Callable<class_Callable>` не может быть правильно сериализован и сохранен в файле.

\ **Примечание:** В экспортированном проекте нет ни :ref:`EditorInterface<class_EditorInterface>`, ни :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`, что может привести к поломке некоторых скриптов. Чтобы предотвратить это, можно использовать :ref:`Engine.get_singleton()<class_Engine_method_get_singleton>` и опустить статический тип из объявления переменной:

::

    var undo_redo = Engine.get_singleton(&"EditorInterface").get_editor_undo_redo()

\ **Примечание:** Избегайте хранения вызываемых лямбда-функций в переменных-членах классов на основе :ref:`RefCounted<class_RefCounted>` (например, ресурсов), так как это может привести к утечкам памяти. Используйте только вызываемые методы и, по желанию, :ref:`Callable.bind()<class_Callable_method_bind>` или :ref:`Callable.unbind()<class_Callable_method_unbind>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@icon:

.. rst-class:: classref-annotation

**@icon**\ (\ icon_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@icon>`

Добавить пользовательский значок в текущий скрипт. Значок, указанный в ``icon_path``, отображается в доке сцены для каждого узла этого класса, а также в различных диалоговых окнах редактора.

::

    @icon("res://path/to/class/icon.svg")

\ **Примечание:** Только скрипт может иметь свой значок. Внутренние классы не поддерживаются.

\ **Примечание:** Поскольку аннотации описывают свой предмет, аннотация :ref:`@icon<class_@GDScript_annotation_@icon>` должна быть размещена перед определением класса и наследованием.

\ **Примечание:** В отличие от большинства других аннотаций, аргумент аннотации :ref:`@icon<class_@GDScript_annotation_@icon>` должен быть строковым литералом (константные выражения не поддерживаются).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@onready:

.. rst-class:: classref-annotation

**@onready**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@onready>`

Отметьте следующее свойство как назначенное, когда :ref:`Node<class_Node>` готов. Значения для этих свойств не назначаются немедленно при инициализации узла (:ref:`Object._init()<class_Object_private_method__init>`), а вместо этого вычисляются и сохраняются непосредственно перед :ref:`Node._ready()<class_Node_private_method__ready>`.

::

    @onready var character_name: Label = $Label

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@rpc:

.. rst-class:: classref-annotation

**@rpc**\ (\ mode\: :ref:`String<class_String>` = "authority", sync\: :ref:`String<class_String>` = "call_remote", transfer_mode\: :ref:`String<class_String>` = "unreliable", transfer_channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_@GDScript_annotation_@rpc>`

Отметьте следующий метод для удалённого вызова процедур. См. :doc:`High-level multiplayer <../tutorials/networking/high_level_multiplayer>`.

Если ``mode`` задан как ``"any_peer"``, любой пир может вызывать эту RPC-функцию. В противном случае, только авторизованный пир может её вызывать, и ``mode`` следует оставить как ``"authority"``. При настройке функций как RPC с помощью :ref:`Node.rpc_config()<class_Node_method_rpc_config>` каждый из этих режимов соответственно соответствует режимам RPC :ref:`MultiplayerAPI.RPC_MODE_AUTHORITY<class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY>` и :ref:`MultiplayerAPI.RPC_MODE_ANY_PEER<class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER>`. См. :ref:`RPCMode<enum_MultiplayerAPI_RPCMode>`. Если одноранговый узел, не имеющий полномочий, попытается вызвать функцию, разрешенную только для этого полномочия, функция не будет выполнена. Если ошибка может быть обнаружена локально (при согласованности конфигурации RPC на локальном и удалённом узлах), на отправителе будет отображено сообщение об ошибке. В противном случае удалённый узел обнаружит ошибку и выведет сообщение об ошибке на свой сервер.

Если ``sync`` задан как ``"call_remote"``, функция будет выполнена только на удалённом пире, но не локально. Чтобы запустить эту функцию локально, задайте ``sync`` как ``"call_local"``. При настройке функций как RPC с помощью :ref:`Node.rpc_config()<class_Node_method_rpc_config>` это эквивалентно заданию ``call_local`` как ``true``.

Допустимые значения ``transfer_mode``: ``"unreliable"``, ``"unreliable_ordered"`` или ``"reliable"``. Он задаёт режим передачи для базового :ref:`MultiplayerPeer<class_MultiplayerPeer>`. См. :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`.

Параметр ``transfer_channel`` определяет канал базового :ref:`MultiplayerPeer<class_MultiplayerPeer>`. См. :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`.

Порядок ``mode``, ``sync`` и ``transfer_mode`` не имеет значения, но значения, относящиеся к одному и тому же аргументу, не должны использоваться более одного раза. ``transfer_channel`` всегда должен быть 4-м аргументом (необходимо указать 3 предыдущих аргумента).

::

    @rpc
    func fn(): pass

    @rpc("any_peer", "unreliable_ordered")
    func fn_update_pos(): pass

    @rpc("authority", "call_remote", "unreliable", 0) # Эквивалентно @rpc
    func fn_default(): pass

\ **Примечание:** Методы, аннотированные :ref:`@rpc<class_@GDScript_annotation_@rpc>`, не могут принимать объекты, в которых определены обязательные параметры в :ref:`Object._init()<class_Object_private_method__init>`. Подробнее см. в :ref:`Object._init()<class_Object_private_method__init>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@static_unload:

.. rst-class:: classref-annotation

**@static_unload**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@static_unload>`

Делает так, чтобы скрипт со статическими переменными не сохранялся после потери всех ссылок. При повторной загрузке скрипта статическим переменным будут установлены значения по умолчанию.

\ **Примечание: ** Поскольку аннотации описывают собственный предмет, аннотация :ref:`@static_unload<class_@GDScript_annotation_@static_unload>` должна быть помещена перед объявлением класса и наследованием.

\ **Предупреждение:** В настоящее время, из-за ошибки скрипты никогда не освобождаются, даже если используется аннотация :ref:`@static_unload<class_@GDScript_annotation_@static_unload>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@tool:

.. rst-class:: classref-annotation

**@tool**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@tool>`

Отметьте текущий скрипт как скрипт-инструмент, позволяя редактору загружать и выполнять его. См. :doc:`Запуск кода в редакторе <../tutorials/plugins/running_code_in_the_editor>`\ 

::

    @tool
    extends Node

\ **Примечание:** Поскольку аннотации описывают свой предмет, аннотация :ref:`@tool<class_@GDScript_annotation_@tool>` должна быть помещена перед определением и наследованием класса.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore:

.. rst-class:: classref-annotation

**@warning_ignore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore>`

Отметьте следующее утверждение, чтобы игнорировать указанное ``warning``. См. :doc:`Система предупреждений GDScript <../tutorials/scripting/gdscript/warning_system>`.

::

    func test():
        print("hello")
        return
        @warning_ignore("unreachable_code")
        print("unreachable")

См. также :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` и :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_restore:

.. rst-class:: classref-annotation

**@warning_ignore_restore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_restore>`

Прекращает игнорировать перечисленные типы предупреждений после :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>`. Игнорирование указанных типов предупреждений будет сброшено до настроек проекта. Эту аннотацию можно опустить, чтобы игнорировать типы предупреждений до конца файла.

\ **Примечание:** В отличие от большинства других аннотаций, аргументы аннотации :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` должны быть строковыми литералами (константные выражения не поддерживаются).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_start:

.. rst-class:: classref-annotation

**@warning_ignore_start**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_start>`

Начинает игнорировать перечисленные типы предупреждений до конца файла или аннотации :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` с указанным типом предупреждения.

::

    func test():
        var a = 1 # Warning (if enabled in the Project Settings).
        @warning_ignore_start("unused_variable")
        var b = 2 # No warning.
        var c = 3 # No warning.
        @warning_ignore_restore("unused_variable")
        var d = 4 # Warning (if enabled in the Project Settings).

\ **Примечание:** Чтобы подавить одно предупреждение, используйте вместо этого :ref:`@warning_ignore<class_@GDScript_annotation_@warning_ignore>`.

\ **Примечание:** В отличие от большинства других аннотаций, аргументы аннотации :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` должны быть строковыми литералами (константные выражения не поддерживаются).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_@GDScript_method_Color8:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **Color8**\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) :ref:`🔗<class_@GDScript_method_Color8>`

**Устарело:** Use :ref:`Color.from_rgba8()<class_Color_method_from_rgba8>` instead.

Возвращает :ref:`Color<class_Color>`, построенный из красного (``r8``), зеленого (``g8``), синего (``b8``) и, по желанию, альфа (``a8``) целочисленных каналов, каждый делится на ``255.0`` для получения конечного значения. Использование :ref:`Color8()<class_@GDScript_method_Color8>` вместо стандартного конструктора :ref:`Color<class_Color>` полезно когда нужно точно соответствовать значения цвета в :ref:`Image<class_Image>`.

::
.
    var red = Color8(255, 0, 0)                            # То же самое, что Color(1, 0, 0).
    var dark_blue = Color8(0, 0, 51)                # То же, что Color(0, 0, 0.2).
    var my_color = Color8(306, 255, 0, 102) # То же, что Color(1.2, 1, 0, 0.4)..

\ **Примечание:** Из-за меньшей точности :ref:`Color8()<class_@GDScript_method_Color8>` по сравнению со стандартным конструктором :ref:`Color<class_Color>`, цвет созданный с :ref:`Color8()<class_@GDScript_method_Color8>` обычно не будет равен тому же цвету созданному с помощью стандартного конструктора :ref:`Color<class_Color>`. Используйте :ref:`Color.is_equal_approx()<class_Color_method_is_equal_approx>` для сравнений чтобы избежать проблем с ошибкой точности плавающей точки.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_assert:

.. rst-class:: classref-method

|void| **assert**\ (\ condition\: :ref:`bool<class_bool>`, message\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_method_assert>`

Проверяет, что ``condition`` равно ``true``. Если ``condition`` равно ``false``, будет сгенерирована ошибка. Если запущено из редактора, запущенный проект также будет приостановлен, пока вы не возобновите его. Это может быть использовано как более сильная форма :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` для сообщения об ошибках разработчикам проекта или пользователям дополнений.

Необязательное ``message`` может быть показано в добавление к универсальному сообщению "Assertion failed". Вы можете предоставить дополнительные детали о том, почему ваше утверждение не удалось.

\ **Примечание:** В целях оптимизации, код внутри :ref:`assert()<class_@GDScript_method_assert>` исполняется только в отладочных сборках, или когда вы запускаете проект из редактора . Не добавляйте дополнительный код, у которого есть побочные эффекты в вызове :ref:`assert()<class_@GDScript_method_assert>`. В противном случае, проект будет вести себя по-другому при экспорте в режиме релиза.

::

    # Предположим, вы хотите, чтобы скорость (speed) была между 0 и 20.
    var speed = -10
    assert(speed < 20) # True, программа продолжит выполнение.
    assert(speed >= 0) # False, программа будет остановлена.
    assert(speed >= 0 and speed < 20) # Вы также можете комбинировать два условных выражения в одной проверке.
    assert(speed < 20, "лимит скорости равен 20") # Показывает сообщение.

\ **Примечание:** :ref:`assert()<class_@GDScript_method_assert>` это ключевое слово, а не функция. Поэтому вы не можете обращаться к нему как к :ref:`Callable<class_Callable>` или использовать внутри выражений.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_char:

.. rst-class:: classref-method

:ref:`String<class_String>` **char**\ (\ code\: :ref:`int<class_int>`\ ) :ref:`🔗<class_@GDScript_method_char>`

Возвращает один символ (в виде :ref:`String<class_String>` длиной 1) заданной кодовой точки Unicode ``code``.

::

    print(char(65))     # Выводит "A"
    print(char(129302)) # Выводит "🤖" (эмодзи с лицом робота)

Это метод, обратный методу :ref:`ord()<class_@GDScript_method_ord>`. См. также :ref:`String.chr()<class_String_method_chr>` и :ref:`String.unicode_at()<class_String_method_unicode_at>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_convert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **convert**\ (\ what\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ) :ref:`🔗<class_@GDScript_method_convert>`

**Устарело:** Use :ref:`@GlobalScope.type_convert()<class_@GlobalScope_method_type_convert>` instead.

Преобразует ``what`` в ``type`` наилучшим образом. Тип ``type`` использует значения :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`.

::
.
    var a = [4, 2.5, 1.2]
    print(a is Array) # Выводит true

    var b = convert(a, TYPE_PACKED_BYTE_ARRAY)
    print(b)                 # Выводит [4, 2, 1]
    print(b is Array) # Выводит false

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_dict_to_inst:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **dict_to_inst**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_@GDScript_method_dict_to_inst>`

**Устарело:** Consider using :ref:`JSON.to_native()<class_JSON_method_to_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

Преобразует словарь ``dictionary`` (ранее созданный с помощью :ref:`inst_to_dict()<class_@GDScript_method_inst_to_dict>`) обратно в экземпляр объекта. Полезно для десериализации.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_get_stack:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_get_stack>`

Возвращает массив словарей, представляющих текущий стек вызовов.

::

    func _ready():
        foo()

    func foo():
        bar()

    func bar():
        print(get_stack())

Начиная с ``_ready()``, ``bar()`` выведет:

.. code:: text

    [{function:bar, line:12, source:res://script.gd}, {function:foo, line:9, source:res://script.gd}, {function:_ready, line:6, source:res://script.gd}]

См. также :ref:`print_debug()<class_@GDScript_method_print_debug>`, :ref:`print_stack()<class_@GDScript_method_print_stack>` и :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Примечание:** По умолчанию обратные трассировки доступны только в редакторских и отладочных сборках. Чтобы включить их и в релизных сборках, необходимо включить :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_inst_to_dict:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **inst_to_dict**\ (\ instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_@GDScript_method_inst_to_dict>`

**Устарело:** Consider using :ref:`JSON.from_native()<class_JSON_method_from_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

Возвращает переданный ``instance``, преобразованный в словарь. Может быть полезен для сериализации.

::
.
    var foo = «bar»
    func _ready():
        var d = inst_to_dict(self)
        print(d.keys())
        print(d.values()).

Выводит:

.. code:: text

    [@subpath, @path, foo]
    [, res://test.gd, bar]

\ **Примечание:** Эта функция может быть использована только для сериализации объектов с вложенным :ref:`GDScript<class_GDScript>`, хранящимся в отдельном файле. Объекты без пользовательского скрипта, со скриптом на другом языке, или со встроенным скриптом не поддерживаются.

\ **Примечание:** Эта функция не является рекурсивной, что означает, что вложенные объекты не будут представлены в виде словарей. Кроме того, свойства, передаваемые по ссылке (:ref:`Object<class_Object>`, :ref:`Dictionary<class_Dictionary>`, :ref:`Array<class_Array>` и упакованные массивы) копируются по ссылке, а не дублируются.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_is_instance_of:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_instance_of**\ (\ value\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_is_instance_of>`

Возвращает ``true`` если ``value`` является экземпляром ``type``. Значение ``type`` должно быть одним из следующих:

- Константа из :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` перечисляемого, например :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>`.

- :ref:`Object<class_Object>`-производный класс, который существует в :ref:`ClassDB<class_ClassDB>`, например :ref:`Node<class_Node>`.

- :ref:`Script<class_Script>` (Вы можете использовать любой класс, включая внутренний).

В отличии от правильного операнда оператора ``is``, ``type`` может быть изменяемым значением. Оператор ``is`` поддерживает больше функций (такие как типизированные массивы). Используйте оператор вместо этого метода если Вам не нужна динамическая проверка типов.

\ **Примеры:**\ 

::

    print(is_instance_of(a, TYPE_INT))
    print(is_instance_of(a, Node))
    print(is_instance_of(a, MyClass))
    print(is_instance_of(a, MyClass.InnerClass))

\ **Примечание:** Если ``value`` и/или ``type`` освобожденные объекты (смотри :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`), или ``type`` не из опций сверху, этот метод вызовет ошибку во время исполнения.

Смотрите также :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>`, :ref:`type_exists()<class_@GDScript_method_type_exists>`, :ref:`Array.is_same_typed()<class_Array_method_is_same_typed>` (И другие методы :ref:`Array<class_Array>`).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **len**\ (\ var\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_len>`

Возвращает длину указанного Variant ``var``. Длина может быть количеством символов :ref:`String<class_String>` или :ref:`StringName<class_StringName>`, количеством элементов любого типа массива или размером :ref:`Dictionary<class_Dictionary>`. Для любого другого типа Variant генерируется ошибка времени выполнения и выполнение останавливается.

::

    a = [1, 2, 3, 4]
    len(a) # Вернёт 4

    b = "Hello!"
    len(b) # Вернёт 6

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_load>`

Возвращает данные вида :ref:`Resource<class_Resource>` из файловой системы, расположенный по абсолютному адресу ``path``. Если на ресурс уже присутствуют ссылки в другом месте (например, в другом скрипте или сцене), он загружается с диска при вызове функции, что может вызвать небольшую задержку, особенно при загрузке больших сцен. Чтобы избежать ненужных задержек при многократной загрузке, храните ресурс в переменной, либо используйте :ref:`preload()<class_@GDScript_method_preload>`. Этот способ является эквивалентом :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` с параметром :ref:`ResourceLoader.CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`.

\ **Примечание:** Пути к ресурсам можно получить, щелкнув правой кнопкой мыши на нужном ресурсе в окне файлов проекта и выбрав опцию "Скопировать путь", или перетащив файл из окна файлов проекта в текущий сценарий.

::

    # Загрузите сцену с наименованием "main", расположенную в корне каталога проекта, и кэшируйте ее в переменную.
    var main = load("res://main.tscn") # main будет содержать ресурс типа "Сжатая сцена".

\ **Важно:** Относительные пути * не * относятся к скрипту, вызывающему этот метод, вместо этого он имеет префикс ``"res://"``. Загрузка из относительных путей может работать не так, как ожидалось.

Данная функция является упрощенной версией :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`, которую можно использовать для более сложных сценариев.

\ **Примечание:** Для загрузки файлов с помощью этой функции, их необходимо предварительно импортировать в движок. Если требуется загрузить :ref:`Image<class_Image>` во время выполнения, можно использовать :ref:`Image.load()<class_Image_method_load>`. Если вам необходимо импортировать аудиофайлы, вы можете воспользоваться фрагментом, описанным в :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>`.

\ **Примечание:** Если параметр :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` имеет значение ``true``, то :ref:`load()<class_@GDScript_method_load>` не сможет прочитать преобразованные файлы в экспортируемом проекте. Если вы полагаетесь на подгрузку по ходу работы проекта файлов, присутствующих в пакете "PCK", во время выполнения проекта, установите параметр :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` как ``false``.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_ord:

.. rst-class:: classref-method

:ref:`int<class_int>` **ord**\ (\ char\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_ord>`

Возвращает целое число, представляющее кодовую точку Unicode заданного символа ``char``, которая должна быть строкой длиной 1.

::

    print(ord("A")) # Выводит 65
    print(ord("🤖")) # Выводит 129302

Это метод, обратный методу :ref:`char()<class_@GDScript_method_char>`. См. также :ref:`String.chr()<class_String_method_chr>` и :ref:`String.unicode_at()<class_String_method_unicode_at>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_preload:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **preload**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_preload>`

Возвращает ресурс :ref:`Resource<class_Resource>` из файловой системы, расположенной по адресу ``path``. Во время выполнения скрипта ресурс загружается при разборе скрипта. Эта функция фактически выступает в качестве ссылки на этот ресурс. Обратите внимание, что данная функция требует, чтобы ``path`` был константой :ref:`String<class_String>`. Если необходимо загрузить ресурс из динамического/переменного пути, используйте :ref:`load()<class_@GDScript_method_load>`.

\ **Примечание:** Пути к ресурсам можно получить, щелкнув правой кнопкой мыши на ресурсе в панели активов и выбрав "Copy Path", или перетащив файл из дока FileSystem в текущий скрипт.

::

    # Создаем экземпляр сцены.
    var diamond = preload("res://diamond.tscn").instantiate()

\ **Примечание:** :ref:`preload()<class_@GDScript_method_preload>` - это ключевое слово, а не функция. Поэтому вы не можете получить к нему доступ как к :ref:`Callable<class_Callable>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_debug:

.. rst-class:: classref-method

|void| **print_debug**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_print_debug>`

Аналогично :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`, но при запуске с включённым отладчиком включает текущий кадр стека.

Вывод в консоли может выглядеть следующим образом:

.. code:: text

    Test print
    At: res://test.gd:15:_process()

См. также :ref:`print_stack()<class_@GDScript_method_print_stack>`, :ref:`get_stack()<class_@GDScript_method_get_stack>` и :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Примечание:** По умолчанию обратные трассировки доступны только в редакторских и отладочных сборках. Чтобы включить их и в релизных сборках, необходимо включить :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_stack:

.. rst-class:: classref-method

|void| **print_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_print_stack>`

Выводит трассировку стека в текущем месте кода.

Вывод в консоли может выглядеть следующим образом:

.. code:: text

    Frame 0 - res://test.gd:16 in function '_process'

См. также :ref:`print_debug()<class_@GDScript_method_print_debug>`, :ref:`get_stack()<class_@GDScript_method_get_stack>` и :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Примечание:** По умолчанию обратные трассировки доступны только в редакторских и отладочных сборках. Чтобы включить их и в релизных сборках, необходимо включить :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_range:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **range**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_range>`

Возвращает массив с указанным диапазоном. :ref:`range()<class_@GDScript_method_range>` можно вызвать тремя способами:

\ ``range(n: int)``: Начинается с 0, увеличивается с шагом 1 и останавливается *перед* ``n``. Аргумент ``n`` является **исключающим**.

\ ``range(b: int, n: int)``: начинается с ``b``, увеличивается с шагом 1 и останавливается *перед* ``n``. Аргументы ``b`` и ``n`` являются **включающими** и **исключающими** соответственно.

\ ``range(b: int, n: int, s: int)``: Начинается с ``b``, увеличивается/уменьшается с шагом ``s`` и останавливается *перед* ``n``. Аргументы ``b`` и ``n`` являются **включающими** и **исключающими** соответственно. Аргумент ``s`` **может** быть отрицательным, но не ``0``. Если ``s`` равен ``0``, выводится сообщение об ошибке.

\ :ref:`range()<class_@GDScript_method_range>` преобразует все аргументы в :ref:`int<class_int>` перед обработкой.

\ **Примечание:** Возвращает пустой массив, если ни одно значение не соответствует ограничению значения (например, ``range(2, 5, -1)`` или ``range(5, 5, 1)``).

\ **Примеры:**\ 

::

    print(range(4))        # Выводит [0, 1, 2, 3]
    print(range(2, 5))     # Выводит [2, 3, 4]
    print(range(0, 6, 2))  # Выводит [0, 2, 4]
    print(range(4, 1, -1)) # Выводит [4, 3, 2]

Чтобы выполнить итерацию по :ref:`Array<class_Array>` в обратном направлении, используйте:

::

    var array = [3, 6, 9]
    for i in range(array.size() - 1, -1, -1):
        print(array[i])

Получаем на выходе:

.. code:: text

    9
    6
    3

Чтобы выполнить итерацию по :ref:`float<class_float>`, преобразуйте их в цикле.

::

    for i in range (3, 0, -1):
        print(i / 10.0)

Получаем на выходе:

.. code:: text

    0.3
    0.2
    0.1

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_type_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **type_exists**\ (\ type\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_@GDScript_method_type_exists>`

Возвращает ``true``, если данный :ref:`Object<class_Object>`-производный класс существует в :ref:`ClassDB<class_ClassDB>`. Учитывайте, что :ref:`Variant<class_Variant>` типы данных не зарегестрированны в :ref:`ClassDB<class_ClassDB>`.

::

    type_exists("Sprite2D") # Возвращает true
    type_exists("NonExistentClass") # Возвращает false

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
