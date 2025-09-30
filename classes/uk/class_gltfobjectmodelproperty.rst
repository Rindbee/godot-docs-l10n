:github_url: hide

.. _class_GLTFObjectModelProperty:

GLTFObjectModelProperty
=======================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Описує, як отримати доступ до властивості, визначеної в об’єктній моделі glTF.

.. rst-class:: classref-introduction-group

Опис
--------

GLTFObjectModelProperty визначає відображення між властивістю в об’єктній моделі glTF і NodePath у дереві сцени Godot. Це можна використовувати для анімації властивостей у файлі glTF за допомогою розширення ``KHR_animation_pointer`` або для доступу до них через сценарій, що не залежить від механізму, наприклад графік поведінки, як визначено розширенням ``KHR_interactivity``. 

Властивість glTF ідентифікується покажчиком(-ами) JSON, що зберігається в :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>`, тоді як властивість Godot, на яку вона відображається, визначається :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`. У більшості випадків :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` і :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` матимуть лише один елемент, але в деяких випадках один вказівник glTF JSON буде зіставлено з декількома властивостями Godot, або одна властивість Godot буде зіставлена з кількома покажчиками glTF JSON, або це може бути зв’язок «багато-до-багатьох». 

Об’єкти :ref:`Expression<class_Expression>` можна використовувати для визначення перетворень між даними, наприклад, коли glTF визначає кут у радіанах, а Godot використовує градуси. Властивість :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` визначає тип даних, що зберігаються у файлі glTF, як визначено об’єктною моделлю, перегляньте можливі значення :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Об'єктна модель GLTF <https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/ObjectModel.adoc>`__

- `Розширення KHR_animation_pointer GLTF <https://github.com/KhronosGroup/glTF/tree/main/extensions/2.0/Khronos/KHR_animation_pointer>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Expression<class_Expression>`                                            | :ref:`gltf_to_godot_expression<class_GLTFObjectModelProperty_property_gltf_to_godot_expression>` |        |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Expression<class_Expression>`                                            | :ref:`godot_to_gltf_expression<class_GLTFObjectModelProperty_property_godot_to_gltf_expression>` |        |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] | :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>`                       | ``[]`` |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]                   | :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`                             | ``[]`` |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`   | :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>`               | ``0``  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`                            | :ref:`variant_type<class_GLTFObjectModelProperty_property_variant_type>`                         | ``0``  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`append_node_path<class_GLTFObjectModelProperty_method_append_node_path>`\ (\ node_path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                         |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`append_path_to_property<class_GLTFObjectModelProperty_method_append_path_to_property>`\ (\ node_path\: :ref:`NodePath<class_NodePath>`, prop_name\: :ref:`StringName<class_StringName>`\ )                                          |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` | :ref:`get_accessor_type<class_GLTFObjectModelProperty_method_get_accessor_type>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`has_json_pointers<class_GLTFObjectModelProperty_method_has_json_pointers>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`has_node_paths<class_GLTFObjectModelProperty_method_has_node_paths>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_types<class_GLTFObjectModelProperty_method_set_types>`\ (\ variant_type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, obj_model_type\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_GLTFObjectModelProperty_GLTFObjectModelType:

.. rst-class:: classref-enumeration

enum **GLTFObjectModelType**: :ref:`🔗<enum_GLTFObjectModelProperty_GLTFObjectModelType>`

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_UNKNOWN** = ``0``

Невідомий або не встановлений тип моделі об’єкта. Якщо для типу об’єктної моделі встановлено це значення, реальний тип ще потрібно визначити.

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_BOOL:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_BOOL** = ``1``

Об'єктна модель типу "bool". Представлено в glTF JSON як логічне значення та закодовано в :ref:`GLTFAccessor<class_GLTFAccessor>` як "SCALAR". Коли кодується в аксесорі, значення ``0`` є ``false``, а будь-яке інше значення є ``true``.

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT** = ``2``

Об'єктна модель типу "float". Представлено в glTF JSON як число та закодовано в :ref:`GLTFAccessor<class_GLTFAccessor>` як "SCALAR".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT_ARRAY** = ``3``

Тип об'єктної моделі "float\[\]". Представлено в glTF JSON у вигляді масиву чисел і закодовано в :ref:`GLTFAccessor<class_GLTFAccessor>` як "SCALAR".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT2** = ``4``

Об'єктна модель типу "float2". Представлено в glTF JSON у вигляді масиву з двох чисел і закодовано в :ref:`GLTFAccessor<class_GLTFAccessor>` як "VEC2".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT3** = ``5``

Об'єктна модель типу "float3". Представлено в glTF JSON у вигляді масиву з трьох чисел і закодовано в :ref:`GLTFAccessor<class_GLTFAccessor>` як "VEC3".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT4** = ``6``

Об'єктна модель типу "float4". Представлено в glTF JSON у вигляді масиву з чотирьох чисел і закодовано в :ref:`GLTFAccessor<class_GLTFAccessor>` як "VEC4".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT2X2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT2X2** = ``7``

Об'єктна модель типу "float2x2". Представлено в glTF JSON у вигляді масиву з чотирьох чисел і закодовано в :ref:`GLTFAccessor<class_GLTFAccessor>` як "MAT2".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT3X3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT3X3** = ``8``

Об'єктна модель типу "float3x3". Представлено в glTF JSON у вигляді масиву з дев’яти чисел і закодовано в :ref:`GLTFAccessor<class_GLTFAccessor>` як «MAT3».

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT4X4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT4X4** = ``9``

Об'єктна модель типу "float4x4". Представлено в glTF JSON у вигляді масиву з шістнадцяти чисел і закодовано в :ref:`GLTFAccessor<class_GLTFAccessor>` як "MAT4".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_INT** = ``10``

Об'єктна модель типу "int". Представлено в glTF JSON як число та закодовано в :ref:`GLTFAccessor<class_GLTFAccessor>` як "SCALAR". Діапазон значень обмежений цілими числами зі знаком. Для ``KHR_interactivity`` підтримуються лише 32-розрядні цілі числа.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GLTFObjectModelProperty_property_gltf_to_godot_expression:

.. rst-class:: classref-property

:ref:`Expression<class_Expression>` **gltf_to_godot_expression** :ref:`🔗<class_GLTFObjectModelProperty_property_gltf_to_godot_expression>`

.. rst-class:: classref-property-setget

- |void| **set_gltf_to_godot_expression**\ (\ value\: :ref:`Expression<class_Expression>`\ )
- :ref:`Expression<class_Expression>` **get_gltf_to_godot_expression**\ (\ )

Якщо встановлено, цей :ref:`Expression<class_Expression>` використовуватиметься для перетворення значення властивості з об’єктної моделі glTF у значення, очікуване властивістю Godot. Це корисно, коли об’єктна модель glTF використовує іншу систему одиниць вимірювання або коли дані потрібно якимось чином трансформувати. Якщо ``null``, значення буде скопійовано як є.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_godot_to_gltf_expression:

.. rst-class:: classref-property

:ref:`Expression<class_Expression>` **godot_to_gltf_expression** :ref:`🔗<class_GLTFObjectModelProperty_property_godot_to_gltf_expression>`

.. rst-class:: classref-property-setget

- |void| **set_godot_to_gltf_expression**\ (\ value\: :ref:`Expression<class_Expression>`\ )
- :ref:`Expression<class_Expression>` **get_godot_to_gltf_expression**\ (\ )

Якщо встановлено, цей :ref:`Expression<class_Expression>` використовуватиметься для перетворення значення властивості з властивості Godot у значення, очікуване об’єктною моделлю glTF. Це корисно, коли об’єктна модель glTF використовує іншу систему одиниць вимірювання або коли дані потрібно якимось чином трансформувати. Якщо ``null``, значення буде скопійовано як є.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_json_pointers:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **json_pointers** = ``[]`` :ref:`🔗<class_GLTFObjectModelProperty_property_json_pointers>`

.. rst-class:: classref-property-setget

- |void| **set_json_pointers**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **get_json_pointers**\ (\ )

Вказівники JSON об'єктної моделі glTF, що використовуються для ідентифікації властивості в об'єктній моделі glTF. У більшості випадків у цьому масиві буде лише один елемент, але в окремих випадках може знадобитися кілька вказівників. Елементи самі по собі є масивами, які представляють вказівник JSON, розділений на його компоненти.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_node_paths:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **node_paths** = ``[]`` :ref:`🔗<class_GLTFObjectModelProperty_property_node_paths>`

.. rst-class:: classref-property-setget

- |void| **set_node_paths**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_node_paths**\ (\ )

Масив :ref:`NodePath<class_NodePath>`, який вказує на властивість або кілька властивостей у дереві сцени Godot. Під час імпорту це буде встановлено :ref:`GLTFDocument<class_GLTFDocument>` або класом :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`. У простих випадках використовуйте :ref:`append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>`, щоб додати властивості до цього масиву. 

У більшості випадків :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` матиме лише один елемент, але в деяких випадках один вказівник glTF JSON буде зіставлятися з кількома властивостями Godot. Наприклад, :ref:`GLTFCamera<class_GLTFCamera>` або :ref:`GLTFLight<class_GLTFLight>`, які використовуються на кількох вузлах glTF, будуть представлені кількома вузлами Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_object_model_type:

.. rst-class:: classref-property

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **object_model_type** = ``0`` :ref:`🔗<class_GLTFObjectModelProperty_property_object_model_type>`

.. rst-class:: classref-property-setget

- |void| **set_object_model_type**\ (\ value\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ )
- :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **get_object_model_type**\ (\ )

Тип даних, що зберігаються у файлі glTF, як визначено об'єктною моделлю. Це надмножина доступних типів аксессорів, яка визначає тип аксессора.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_variant_type:

.. rst-class:: classref-property

:ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` **variant_type** = ``0`` :ref:`🔗<class_GLTFObjectModelProperty_property_variant_type>`

.. rst-class:: classref-property-setget

- |void| **set_variant_type**\ (\ value\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ )
- :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` **get_variant_type**\ (\ )

Тип даних, що зберігаються у властивості Godot. Це тип властивості, на який вказує :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GLTFObjectModelProperty_method_append_node_path:

.. rst-class:: classref-method

|void| **append_node_path**\ (\ node_path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_append_node_path>`

Додає :ref:`NodePath<class_NodePath>` до :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`. Це може використовуватися класами :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, щоб визначити, як властивість об’єктної моделі glTF зіставляється з властивістю Godot або кількома властивостями Godot. Надавайте перевагу використанню :ref:`append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` для простих випадків. Не забудьте також один раз викликати :ref:`set_types()<class_GLTFObjectModelProperty_method_set_types>` (порядок не має значення).

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_append_path_to_property:

.. rst-class:: classref-method

|void| **append_path_to_property**\ (\ node_path\: :ref:`NodePath<class_NodePath>`, prop_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_append_path_to_property>`

Високорівнева оболонка над :ref:`append_node_path()<class_GLTFObjectModelProperty_method_append_node_path>`, яка обробляє найпоширеніші випадки. Він створює новий :ref:`NodePath<class_NodePath>`, використовуючи ``node_path`` як основу, і додає ``prop_name`` до підшляху. Не забудьте також один раз викликати :ref:`set_types()<class_GLTFObjectModelProperty_method_set_types>` (порядок не має значення).

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_get_accessor_type:

.. rst-class:: classref-method

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **get_accessor_type**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_get_accessor_type>`

Тип засобу доступу GLTF, пов’язаний із :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` цієї властивості. Дивіться :ref:`GLTFAccessor.accessor_type<class_GLTFAccessor_property_accessor_type>`, щоб дізнатися про можливі значення, і див. :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`, щоб дізнатися, як тип об’єктної моделі зіставляється з типами засобів доступу.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_has_json_pointers:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_json_pointers**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_has_json_pointers>`

Повертає ``true``, якщо :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` не порожній. Це використовується під час експорту, щоб визначити, чи може **GLTFObjectModelProperty** обробляти перетворення властивості Godot у властивість об’єктної моделі glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_has_node_paths:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node_paths**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_has_node_paths>`

Повертає ``true``, якщо :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` не порожній. Це використовується під час імпорту, щоб визначити, чи може **GLTFObjectModelProperty** обробляти перетворення властивості об’єктної моделі glTF на властивість Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_set_types:

.. rst-class:: classref-method

|void| **set_types**\ (\ variant_type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, obj_model_type\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_set_types>`

Встановлює властивості :ref:`variant_type<class_GLTFObjectModelProperty_property_variant_type>` і :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>`. Це зручний метод встановлення обох властивостей одночасно, оскільки вони майже завжди відомі одночасно. Цей метод слід викликати один раз. Повторний виклик із тими самими значеннями не матиме ефекту.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
