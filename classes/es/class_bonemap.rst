:github_url: hide

.. _class_BoneMap:

BoneMap
=======

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Describes a mapping of bone names for retargeting :ref:`Skeleton3D<class_Skeleton3D>` into common names defined by a :ref:`SkeletonProfile<class_SkeletonProfile>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This class contains a dictionary that uses a list of bone names in :ref:`SkeletonProfile<class_SkeletonProfile>` as key names.

By assigning the actual :ref:`Skeleton3D<class_Skeleton3D>` bone name as the key value, it maps the :ref:`Skeleton3D<class_Skeleton3D>` to the :ref:`SkeletonProfile<class_SkeletonProfile>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Reorientación de esqueletos 3D <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------+
   | :ref:`SkeletonProfile<class_SkeletonProfile>` | :ref:`profile<class_BoneMap_property_profile>` |
   +-----------------------------------------------+------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`find_profile_bone_name<class_BoneMap_method_find_profile_bone_name>`\ (\ skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_skeleton_bone_name<class_BoneMap_method_get_skeleton_bone_name>`\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                   |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_skeleton_bone_name<class_BoneMap_method_set_skeleton_bone_name>`\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`, skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_BoneMap_signal_bone_map_updated:

.. rst-class:: classref-signal

**bone_map_updated**\ (\ ) :ref:`🔗<class_BoneMap_signal_bone_map_updated>`

This signal is emitted when change the key value in the **BoneMap**. This is used to validate mapping and to update **BoneMap** editor.

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_signal_profile_updated:

.. rst-class:: classref-signal

**profile_updated**\ (\ ) :ref:`🔗<class_BoneMap_signal_profile_updated>`

This signal is emitted when change the value in profile or change the reference of profile. This is used to update key names in the **BoneMap** and to redraw the **BoneMap** editor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_BoneMap_property_profile:

.. rst-class:: classref-property

:ref:`SkeletonProfile<class_SkeletonProfile>` **profile** :ref:`🔗<class_BoneMap_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_profile**\ (\ value\: :ref:`SkeletonProfile<class_SkeletonProfile>`\ )
- :ref:`SkeletonProfile<class_SkeletonProfile>` **get_profile**\ (\ )

A :ref:`SkeletonProfile<class_SkeletonProfile>` of the mapping target. Key names in the **BoneMap** are synchronized with it.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_BoneMap_method_find_profile_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_profile_bone_name**\ (\ skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_BoneMap_method_find_profile_bone_name>`

Returns a profile bone name having ``skeleton_bone_name``. If not found, an empty :ref:`StringName<class_StringName>` will be returned.

In the retargeting process, the returned bone name is the bone name of the target skeleton.

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_method_get_skeleton_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_skeleton_bone_name**\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_BoneMap_method_get_skeleton_bone_name>`

Returns a skeleton bone name is mapped to ``profile_bone_name``.

In the retargeting process, the returned bone name is the bone name of the source skeleton.

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_method_set_skeleton_bone_name:

.. rst-class:: classref-method

|void| **set_skeleton_bone_name**\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`, skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_BoneMap_method_set_skeleton_bone_name>`

Maps a skeleton bone name to ``profile_bone_name``.

In the retargeting process, the setting bone name is the bone name of the source skeleton.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
