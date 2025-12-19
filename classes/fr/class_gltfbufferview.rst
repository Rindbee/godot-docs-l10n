:github_url: hide

.. _class_GLTFBufferView:

GLTFBufferView
==============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Représente une vue de buffer glTF.

.. rst-class:: classref-introduction-group

Description
-----------

GLTFBufferView est une structure de données représentant un ``bufferView`` glTF qui serait trouvé dans le tableau ``"bufferViews"``. Un buffer est un blob de données binaires. Une vue de buffer est une tranche d'un buffer qui peut être utilisée pour identifier et extraire les données du buffer.

La plupart des utilisations personnalisées des buffer ont seulement besoin d'utiliser le :ref:`buffer<class_GLTFBufferView_property_buffer>`, :ref:`byte_length<class_GLTFBufferView_property_byte_length>`, et :ref:`byte_offset<class_GLTFBufferView_property_byte_offset>`. Les propriétés :ref:`byte_stride<class_GLTFBufferView_property_byte_stride>` et :ref:`indices<class_GLTFBufferView_property_indices>` sont pour des cas d'utilisation plus avancés tels que les données de maillage entrelacées encodées pour le GPU.

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

   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`buffer<class_GLTFBufferView_property_buffer>`                       | ``-1``    |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_length<class_GLTFBufferView_property_byte_length>`             | ``0``     |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_offset<class_GLTFBufferView_property_byte_offset>`             | ``0``     |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_stride<class_GLTFBufferView_property_byte_stride>`             | ``-1``    |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`indices<class_GLTFBufferView_property_indices>`                     | ``false`` |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`vertex_attributes<class_GLTFBufferView_property_vertex_attributes>` | ``false`` |
   +-------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFBufferView<class_GLTFBufferView>`   | :ref:`from_dictionary<class_GLTFBufferView_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static|     |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`load_buffer_view_data<class_GLTFBufferView_method_load_buffer_view_data>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |const| |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`           | :ref:`to_dictionary<class_GLTFBufferView_method_to_dictionary>`\ (\ ) |const|                                                            |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GLTFBufferView_property_buffer:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffer** = ``-1`` :ref:`🔗<class_GLTFBufferView_property_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_buffer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffer**\ (\ )

L'index du buffer que cette vue de buffer référence. Si ``-1``, cette vue de buffer ne référence aucun buffer.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_length** = ``0`` :ref:`🔗<class_GLTFBufferView_property_byte_length>`

.. rst-class:: classref-property-setget

- |void| **set_byte_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_length**\ (\ )

La longueur, en octets, de cette vue de buffer. Si ``0``, cette vue de buffer est vide.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_offset** = ``0`` :ref:`🔗<class_GLTFBufferView_property_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_offset**\ (\ )

Le décalage, en octets, entre le début du buffer et le début de cette vue de buffer.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_stride:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_stride** = ``-1`` :ref:`🔗<class_GLTFBufferView_property_byte_stride>`

.. rst-class:: classref-property-setget

- |void| **set_byte_stride**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_stride**\ (\ )

The stride, in bytes, between interleaved data. If ``-1``, this buffer view is not interleaved.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_indices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **indices** = ``false`` :ref:`🔗<class_GLTFBufferView_property_indices>`

.. rst-class:: classref-property-setget

- |void| **set_indices**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_indices**\ (\ )

``true`` si le type de buffer GPU OpenGL du GLTFBufferView est un ``ELEMENT_ARRAY_BUFFER`` utilisé pour les index de sommets (constante entière ``34963``). ``false`` si le type de buffer est n'importe quelle autre valeur. Voir ` Buffers, BufferViews, et Accesseurs <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__ pour les valeurs possibles. Cette propriété est définie lors de l'import et utilisée lors de l'export.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_vertex_attributes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertex_attributes** = ``false`` :ref:`🔗<class_GLTFBufferView_property_vertex_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_attributes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_vertex_attributes**\ (\ )

``true`` si le type de buffer GPU OpenGL du GLTFBufferView est un ``ARRAY_BUFFER`` utilisé pour les attributs de sommets (constante entière ``34962``). ``false`` si le type de buffer est n'importe quelle autre valeur. Voir ` Buffers, BufferViews, et Accesseurs <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__ pour les valeurs possibles. Cette propriété est définie lors de l'import et utilisée lors de l'export.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GLTFBufferView_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFBufferView<class_GLTFBufferView>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFBufferView_method_from_dictionary>`

Creates a new GLTFBufferView instance by parsing the given :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_method_load_buffer_view_data:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **load_buffer_view_data**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |const| :ref:`🔗<class_GLTFBufferView_method_load_buffer_view_data>`

Loads the buffer view data from the buffer referenced by this buffer view in the given :ref:`GLTFState<class_GLTFState>`. Interleaved data with a byte stride is not yet supported by this method. The data is returned as a :ref:`PackedByteArray<class_PackedByteArray>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFBufferView_method_to_dictionary>`

Serializes this GLTFBufferView instance into a :ref:`Dictionary<class_Dictionary>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
