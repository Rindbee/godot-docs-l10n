:github_url: hide

.. meta::
	:keywords: ragdoll

.. _class_PhysicalBone2D:

PhysicalBone2D
==============

**Hereda:** :ref:`RigidBody2D<class_RigidBody2D>` **<** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo derivado de :ref:`RigidBody2D<class_RigidBody2D>` utilizado para hacer que los :ref:`Bone2D<class_Bone2D>`\ s en un :ref:`Skeleton2D<class_Skeleton2D>` reaccionen a la física.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El nodo **PhysicalBone2D** es un nodo basado en :ref:`RigidBody2D<class_RigidBody2D>` que puede ser utilizado para hacer que los :ref:`Bone2D<class_Bone2D>`\ s en un :ref:`Skeleton2D<class_Skeleton2D>` reaccionen a la física.

\ **Nota:** Para hacer que los :ref:`Bone2D<class_Bone2D>`\ s sigan visualmente el nodo **PhysicalBone2D**, utiliza una modificación de :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` en el :ref:`Skeleton2D<class_Skeleton2D>` padre.

\ **Nota:** El nodo **PhysicalBone2D** no crea automáticamente un nodo :ref:`Joint2D<class_Joint2D>` para mantener los nodos **PhysicalBone2D** juntos. Deben ser creados manualmente. En la mayoría de los casos, querrás utilizar un nodo :ref:`PinJoint2D<class_PinJoint2D>`. El nodo **PhysicalBone2D** configurará automáticamente el nodo :ref:`Joint2D<class_Joint2D>` una vez que haya sido añadido como un nodo hijo.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`auto_configure_joint<class_PhysicalBone2D_property_auto_configure_joint>`               | ``true``         |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`bone2d_index<class_PhysicalBone2D_property_bone2d_index>`                               | ``-1``           |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`bone2d_nodepath<class_PhysicalBone2D_property_bone2d_nodepath>`                         | ``NodePath("")`` |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`follow_bone_when_simulating<class_PhysicalBone2D_property_follow_bone_when_simulating>` | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`simulate_physics<class_PhysicalBone2D_property_simulate_physics>`                       | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Joint2D<class_Joint2D>` | :ref:`get_joint<class_PhysicalBone2D_method_get_joint>`\ (\ ) |const|                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_simulating_physics<class_PhysicalBone2D_method_is_simulating_physics>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PhysicalBone2D_property_auto_configure_joint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_configure_joint** = ``true`` :ref:`🔗<class_PhysicalBone2D_property_auto_configure_joint>`

.. rst-class:: classref-property-setget

- |void| **set_auto_configure_joint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_auto_configure_joint**\ (\ )

Si es ``true``, el **PhysicalBone2D** configurará automáticamente el primer nodo hijo :ref:`Joint2D<class_Joint2D>`. La configuración automática se limita a establecer las propiedades del nodo y a posicionar el :ref:`Joint2D<class_Joint2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone2d_index** = ``-1`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_index>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone2d_index**\ (\ )

El índice del :ref:`Bone2D<class_Bone2D>` que este **PhysicalBone2D** debe simular.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **bone2d_nodepath** = ``NodePath("")`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_nodepath**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_bone2d_nodepath**\ (\ )

El :ref:`NodePath<class_NodePath>` al :ref:`Bone2D<class_Bone2D>` que este **PhysicalBone2D** debe simular.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_follow_bone_when_simulating:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_bone_when_simulating** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_follow_bone_when_simulating>`

.. rst-class:: classref-property-setget

- |void| **set_follow_bone_when_simulating**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_follow_bone_when_simulating**\ (\ )

Si es ``true``, el **PhysicalBone2D** mantendrá la transformación del hueso al que está enlazado al simular la física.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_simulate_physics:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simulate_physics** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_simulate_physics>`

.. rst-class:: classref-property-setget

- |void| **set_simulate_physics**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simulate_physics**\ (\ )

Si es ``true``, el **PhysicalBone2D** comenzará a simular usando la física. Si es ``false``, el **PhysicalBone2D** seguirá la transformación del nodo :ref:`Bone2D<class_Bone2D>`.

\ **Nota:** Para que los :ref:`Bone2D<class_Bone2D>` sigan visualmente al **PhysicalBone2D**, usa una modificación :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` en el nodo :ref:`Skeleton2D<class_Skeleton2D>` con los nodos :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PhysicalBone2D_method_get_joint:

.. rst-class:: classref-method

:ref:`Joint2D<class_Joint2D>` **get_joint**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_get_joint>`

Devuelve el primer nodo hijo :ref:`Joint2D<class_Joint2D>`, si existe uno. Esta es principalmente una función auxiliar para hacer que sea más fácil obtener el :ref:`Joint2D<class_Joint2D>` que el **PhysicalBone2D** está autoconfigurando.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_is_simulating_physics>`

Devuelve un booleano que indica si el **PhysicalBone2D** está funcionando y simulando usando el motor de física 2D de Godot. Cuando ``true``, el nodo PhysicalBone2D está usando física.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
