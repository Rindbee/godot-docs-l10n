:github_url: hide

.. _class_GLTFAccessor:

GLTFAccessor
============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Représente un accesseur glTF.

.. rst-class:: classref-introduction-group

Description
-----------

GLTFAccessor est une structure de données représentant un ``accesseur`` glTF qui serait trouvé dans le tableau ``"accessors"``. Un buffeur est un blob de données binaires. Une vue de buffeur est une tranche d'un buffeur. Un accesseur est une interprétation typée des données dans une vue d'un buffeur.

La plupart des données personnalisées stockées en glTF n'ont pas besoin d'accesseurs, seulement des vues de buffeur (voir :ref:`GLTFBufferView<class_GLTFBufferView>`). Les accesseursont pour des cas d'utilisation plus avancés tels que les données de maillage entrelacées encodées pour le GPU.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Buffers, BufferViews et Accesseurs dans la spécification glTF Khronos <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__

- :doc:`Chargement et sauvegarde de fichiers durant l’exécution <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>`   | :ref:`accessor_type<class_GLTFAccessor_property_accessor_type>`                                 | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`buffer_view<class_GLTFAccessor_property_buffer_view>`                                     | ``-1``                   |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`byte_offset<class_GLTFAccessor_property_byte_offset>`                                     | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` | :ref:`component_type<class_GLTFAccessor_property_component_type>`                               | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`count<class_GLTFAccessor_property_count>`                                                 | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>`           | :ref:`max<class_GLTFAccessor_property_max>`                                                     | ``PackedFloat64Array()`` |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>`           | :ref:`min<class_GLTFAccessor_property_min>`                                                     | ``PackedFloat64Array()`` |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`normalized<class_GLTFAccessor_property_normalized>`                                       | ``false``                |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_count<class_GLTFAccessor_property_sparse_count>`                                   | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_indices_buffer_view<class_GLTFAccessor_property_sparse_indices_buffer_view>`       | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_indices_byte_offset<class_GLTFAccessor_property_sparse_indices_byte_offset>`       | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` | :ref:`sparse_indices_component_type<class_GLTFAccessor_property_sparse_indices_component_type>` | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_values_buffer_view<class_GLTFAccessor_property_sparse_values_buffer_view>`         | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_values_byte_offset<class_GLTFAccessor_property_sparse_values_byte_offset>`         | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`type<class_GLTFAccessor_property_type>`                                                   |                          |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_GLTFAccessor_GLTFAccessorType:

.. rst-class:: classref-enumeration

enum **GLTFAccessorType**: :ref:`🔗<enum_GLTFAccessor_GLTFAccessorType>`

.. _class_GLTFAccessor_constant_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_SCALAR** = ``0``

Type d'accesseur "SCALAR". Pour le modèle d'objet glTF, cela peut être utilisé pour associer avec une seule valeur de flottant, entier ou booléen, ou un tableau de flottants.

.. _class_GLTFAccessor_constant_TYPE_VEC2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC2** = ``1``

Type d'accesseur "VEC2". Pour le modèle d'objet glTF, cela est associé à "float2", représenté dans le JSON glTF comme un tableau de deux flottants.

.. _class_GLTFAccessor_constant_TYPE_VEC3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC3** = ``2``

Type d'accesseur "VEC3". Pour le modèle d'objet glTF, cela est associé à "float3", représenté dans le JSON glTF comme un tableau de trois flottants.

.. _class_GLTFAccessor_constant_TYPE_VEC4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC4** = ``3``

Type d'accesseur "VEC4". Pour le modèle d'objet glTF, cela est associé à "float4", représenté dans le JSON glTF comme un tableau de quatre flottants.

.. _class_GLTFAccessor_constant_TYPE_MAT2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT2** = ``4``

Type d'accesseur "MAT2". Pour le modèle d'objet glTF, cela est associé à "float2x2", représenté dans le JSON glTF comme un tableau de quatre flottants.

.. _class_GLTFAccessor_constant_TYPE_MAT3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT3** = ``5``

Type d'accesseur "MAT3". Pour le modèle d'objet glTF, cela est associé à "float3x3", représenté dans le JSON glTF comme un tableau de neuf flottants.

.. _class_GLTFAccessor_constant_TYPE_MAT4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT4** = ``6``

Type d'accesseur "MAT4". Pour le modèle d'objet glTF, cela est associé à "float4x4", représenté dans le JSON glTF comme un tableau de seize flottants.

.. rst-class:: classref-item-separator

----

.. _enum_GLTFAccessor_GLTFComponentType:

.. rst-class:: classref-enumeration

enum **GLTFComponentType**: :ref:`🔗<enum_GLTFAccessor_GLTFComponentType>`

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_NONE** = ``0``

Type d'accesseur "NONE". Ce n'est pas type de composant valide, et est utilisé pour indiquer que le type de composant n'est pas défini.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_BYTE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_BYTE** = ``5120``

Type de composant "BYTE". La valeur est de ``0x1400``, qui vient d'OpenGL. Cela indique que les données sont stockées dans des entiers signés d'1 octet ou de 8 bits. Il s'agit d'une partie essentielle de la spécification glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_BYTE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_BYTE** = ``5121``

Type de composante "UNSIGNED_BYTE". La valeur est ``0x1401`` qui vient d'OpenGL. Cela indique que les données sont stockées dans des entiers non signés de 1 octet ou de 8 bits. Il s'agit d'une partie essentielle de la spécification glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_SHORT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_SHORT** = ``5122``

Type de composante "SHORT". La valeur est ``0x1402`` qui vient d'OpenGL. Cela indique que les données sont stockées dans des entiers signés de 2 octets ou de 16 bits. Il s'agit d'une partie essentielle de la spécification glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_SHORT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_SHORT** = ``5123``

Type de composante "UNSIGNED_SHORT". La valeur est ``0x1403`` qui vient d'OpenGL. Cela indique que les données sont stockées dans des entiers non signés de 2 octets ou de 16 bits. Il s'agit d'une partie essentielle de la spécification glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_INT** = ``5124``

Type de composant "INT". La valeur est de ``0x1404``, qui vient d'OpenGL. Cela indique que les données sont stockées dans des entiers signés de 4 octets ou de 32 bits. Il ne s'agit PAS d'une partie essentielle de la spécification glTF, et peut ne pas être supporté par tous les importeurs glTF. Peut être utilisé par certaines extensions dont ``KHR_interactivity``.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_INT** = ``5125``

Type de composante "UNSIGNED_INT". La valeur est ``0x1405`` qui vient d'OpenGL. Cela indique que les données sont stockées dans des entiers non signés de 4 octets ou de 32 bits. Il s'agit d'une partie essentielle de la spécification glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SINGLE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SINGLE_FLOAT** = ``5126``

Type de composante "FLOAT". La valeur est ``0x1406`` qui vient d'OpenGL. Cela indique que les données sont stockées en flottants de 4 octets ou 32 bits. Il s'agit d'une partie essentielle de la spécification glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_DOUBLE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_DOUBLE_FLOAT** = ``5130``

Type de composant "DOUBLE". La valeur est de ``0x140A``, qui vient d'OpenGL. Cela indique que les données sont stockées dans des entiers signés de 8 octets ou de 64 bits. Il ne s'agit PAS d'une partie essentielle de la spécification glTF, et peut ne pas être supporté par tous les importeurs glTF. Peut être utilisé par certaines extensions dont ``KHR_interactivity``.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_HALF_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_HALF_FLOAT** = ``5131``

Type de composant "HALF_FLOAT". La valeur est de ``0x140B``, qui vient d'OpenGL. Cela indique que les données sont stockées dans des flottants de 2 octets ou 16 bits. Il ne s'agit PAS d'une partie essentielle de la spécification glTF, et peut ne pas être supporté par tous les importeurs glTF. Peut être utilisé par certaines extensions dont ``KHR_interactivity``.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_LONG** = ``5134``

Type de composant "LONG". La valeur est de ``0x140E``, qui vient d'OpenGL. Cela indique que les données sont stockées dans des flottants de 8 octets ou 64 bits. Il ne s'agit PAS d'une partie essentielle de la spécification glTF, et peut ne pas être supporté par tous les importeurs glTF. Peut être utilisé par certaines extensions dont ``KHR_interactivity``.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_LONG** = ``5135``

Type de composant "UNSIGNED_LONG". La valeur est de ``0x140F``, qui vient d'OpenGL. Cela indique que les données sont stockées dans des entiers non signés de 8 octets ou 64 bits. Il ne s'agit PAS d'une partie essentielle de la spécification glTF, et peut ne pas être supporté par tous les importeurs glTF. Peut être utilisé par certaines extensions dont ``KHR_interactivity``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GLTFAccessor_property_accessor_type:

.. rst-class:: classref-property

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **accessor_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_accessor_type>`

.. rst-class:: classref-property-setget

- |void| **set_accessor_type**\ (\ value\: :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>`\ )
- :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **get_accessor_type**\ (\ )

Le type d'accesseur glTF, en tant qu’énumération.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffer_view** = ``-1`` :ref:`🔗<class_GLTFAccessor_property_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffer_view**\ (\ )

L'index de la vue de buffer à laquelle cet accesseur se réfère. Si ``-1``, cet accesseur ne renvoie aucune vue de buffer.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_offset**\ (\ )

Le décalage par rapport au début de la vue de buffer en octets.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_component_type:

.. rst-class:: classref-property

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **component_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_component_type>`

.. rst-class:: classref-property-setget

- |void| **set_component_type**\ (\ value\: :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>`\ )
- :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **get_component_type**\ (\ )

Le type de composant glTF comme énumération. Voir :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` pour les valeurs possibles. Dans la spécification glTF de base, une valeur de 5125 ou « UNSIGNED_INT» ne doit pas être utilisée pour tout accesseur qui n'est pas référencé par mesh.primitive.indices.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **count** = ``0`` :ref:`🔗<class_GLTFAccessor_property_count>`

.. rst-class:: classref-property-setget

- |void| **set_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_count**\ (\ )

Le nombre d'éléments référencés par cet accesseur.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_max:

.. rst-class:: classref-property

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **max** = ``PackedFloat64Array()`` :ref:`🔗<class_GLTFAccessor_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )
- :ref:`PackedFloat64Array<class_PackedFloat64Array>` **get_max**\ (\ )

Valeur maximale de chaque composant dans cet accesseur.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat64Array<class_PackedFloat64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_min:

.. rst-class:: classref-property

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **min** = ``PackedFloat64Array()`` :ref:`🔗<class_GLTFAccessor_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )
- :ref:`PackedFloat64Array<class_PackedFloat64Array>` **get_min**\ (\ )

Valeur minimale de chaque composant dans cet accesseur.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat64Array<class_PackedFloat64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_normalized:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalized** = ``false`` :ref:`🔗<class_GLTFAccessor_property_normalized>`

.. rst-class:: classref-property-setget

- |void| **set_normalized**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_normalized**\ (\ )

Spécifie si les valeurs de données d'entier sont normalisées avant utilisation.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_count** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_count>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_count**\ (\ )

Number of deviating accessor values stored in the sparse array.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_indices_buffer_view** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_indices_buffer_view**\ (\ )

The index of the buffer view with sparse indices. The referenced buffer view MUST NOT have its target or byteStride properties defined. The buffer view and the optional byteOffset MUST be aligned to the componentType byte length.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_indices_byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_indices_byte_offset**\ (\ )

Le décalage par rapport au début de la vue de buffer en octets.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_component_type:

.. rst-class:: classref-property

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **sparse_indices_component_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_component_type>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_component_type**\ (\ value\: :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>`\ )
- :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **get_sparse_indices_component_type**\ (\ )

Le type de données des indices en tant qu'énumération. Les valeurs possibles sont 5121 pour "UNSIGNED_BYTE", 5123 pour "UNSIGNED_SHORT", et 5125 pour "UNSIGNED_INT".

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_values_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_values_buffer_view** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_values_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_values_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_values_buffer_view**\ (\ )

L'index du bufferView avec des valeurs creuses. La vue du buffeur référencé NE DOIT PAS avoir ses propriétés cible ou byteStride définies.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_values_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_values_byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_values_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_values_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_values_byte_offset**\ (\ )

Le décalage par rapport au début du bufferView en octets.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **type** :ref:`🔗<class_GLTFAccessor_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_type**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_type**\ (\ )

**Obsolète :** Use :ref:`accessor_type<class_GLTFAccessor_property_accessor_type>` instead.

Le type d'accesseur glTF, en tant qu':ref:`int<class_int>`. Les valeurs possibles sont ``0`` pour "SCALAR", ``1`` pour "VEC2", ``2`` pour "VEC3", ``3`` pour "VEC4", ``4`` pour "MAT2", ``5`` pour "MAT3", et ``6`` pour "MAT4".

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
