:github_url: hide

.. _class_SkeletonModification2DLookAt:

SkeletonModification2DLookAt
============================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una modificación que rota un nodo :ref:`Bone2D<class_Bone2D>` para mirar a un objetivo.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este :ref:`SkeletonModification2D<class_SkeletonModification2D>` rota un hueso para mirar a un objetivo. Esto es extremadamente útil para mover la cabeza del personaje para mirar al jugador, rotar una torreta para mirar a un objetivo, o cualquier otro caso en el que quieras hacer que un hueso rote hacia algo rápida y fácilmente.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`bone2d_node<class_SkeletonModification2DLookAt_property_bone2d_node>`         | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`bone_index<class_SkeletonModification2DLookAt_property_bone_index>`           | ``-1``           |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DLookAt_property_target_nodepath>` | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_additional_rotation<class_SkeletonModification2DLookAt_method_get_additional_rotation>`\ (\ ) |const|                                   |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_constraint_angle_invert<class_SkeletonModification2DLookAt_method_get_constraint_angle_invert>`\ (\ ) |const|                           |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_constraint_angle_max<class_SkeletonModification2DLookAt_method_get_constraint_angle_max>`\ (\ ) |const|                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_constraint_angle_min<class_SkeletonModification2DLookAt_method_get_constraint_angle_min>`\ (\ ) |const|                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_enable_constraint<class_SkeletonModification2DLookAt_method_get_enable_constraint>`\ (\ ) |const|                                       |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_additional_rotation<class_SkeletonModification2DLookAt_method_set_additional_rotation>`\ (\ rotation\: :ref:`float<class_float>`\ )     |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_invert<class_SkeletonModification2DLookAt_method_set_constraint_angle_invert>`\ (\ invert\: :ref:`bool<class_bool>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_max<class_SkeletonModification2DLookAt_method_set_constraint_angle_max>`\ (\ angle_max\: :ref:`float<class_float>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_min<class_SkeletonModification2DLookAt_method_set_constraint_angle_min>`\ (\ angle_min\: :ref:`float<class_float>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_enable_constraint<class_SkeletonModification2DLookAt_method_set_enable_constraint>`\ (\ enable_constraint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SkeletonModification2DLookAt_property_bone2d_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **bone2d_node** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DLookAt_property_bone2d_node>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_bone2d_node**\ (\ )

El nodo :ref:`Bone2D<class_Bone2D>` sobre el que operará la modificación.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_property_bone_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_index** = ``-1`` :ref:`🔗<class_SkeletonModification2DLookAt_property_bone_index>`

.. rst-class:: classref-property-setget

- |void| **set_bone_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_index**\ (\ )

El índice del nodo :ref:`Bone2D<class_Bone2D>` sobre el que operará la modificación.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DLookAt_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

El NodePath al nodo que es el objetivo de la modificación LookAt. Este nodo es hacia el que la modificación rotará el :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SkeletonModification2DLookAt_method_get_additional_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_additional_rotation**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_additional_rotation>`

Devuelve la cantidad de rotación adicional que se aplica después de que la modificación LookAt se ejecuta.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_invert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_constraint_angle_invert**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_invert>`

Devuelve si las restricciones de esta modificación están invertidas o no.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constraint_angle_max**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_max>`

Devuelve el ángulo máximo permitido de la restricción.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constraint_angle_min**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_min>`

Devuelve el ángulo mínimo permitido de la restricción.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_enable_constraint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_enable_constraint**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_enable_constraint>`

Devuelve ``true`` si la modificación LookAt está usando restricciones.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_additional_rotation:

.. rst-class:: classref-method

|void| **set_additional_rotation**\ (\ rotation\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_additional_rotation>`

Establece la cantidad de rotación adicional que se aplicará después de ejecutar la modificación. Esto permite compensar los resultados por la cantidad de rotación introducida.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_invert:

.. rst-class:: classref-method

|void| **set_constraint_angle_invert**\ (\ invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_invert>`

Cuando es ``true``, la modificación utilizará una restricción de articulación invertida.

Una restricción de articulación invertida solo restringe el :ref:`Bone2D<class_Bone2D>` a los ángulos *fuera de* los ángulos mínimo y máximo introducidos. Por esta razón, se denomina restricción de articulación invertida, ya que restringe la articulación al exterior de los valores introducidos.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_max:

.. rst-class:: classref-method

|void| **set_constraint_angle_max**\ (\ angle_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_max>`

Establece el ángulo máximo permitido de la restricción.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_min:

.. rst-class:: classref-method

|void| **set_constraint_angle_min**\ (\ angle_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_min>`

Establece el ángulo mínimo permitido de la restricción.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_enable_constraint:

.. rst-class:: classref-method

|void| **set_enable_constraint**\ (\ enable_constraint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_enable_constraint>`

Establece si esta modificación utilizará restricciones o no. Cuando es ``true``, se aplicarán restricciones al resolver la modificación LookAt.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
