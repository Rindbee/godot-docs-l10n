:github_url: hide

.. _class_SkeletonModification2DStackHolder:

SkeletonModification2DStackHolder
=================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una modificación que contiene y ejecuta un :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este :ref:`SkeletonModification2D<class_SkeletonModification2D>` contiene una referencia a un :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, lo que te permite usar múltiples pilas de modificación en un solo :ref:`Skeleton2D<class_Skeleton2D>`.

\ **Nota:** Las modificaciones en el :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` contenido solo se ejecutarán si su modo de ejecución coincide con el modo de ejecución del SkeletonModification2DStackHolder.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_held_modification_stack<class_SkeletonModification2DStackHolder_method_get_held_modification_stack>`\ (\ ) |const|                                                                                          |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_held_modification_stack<class_SkeletonModification2DStackHolder_method_set_held_modification_stack>`\ (\ held_modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SkeletonModification2DStackHolder_method_get_held_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_held_modification_stack**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DStackHolder_method_get_held_modification_stack>`

Devuelve el :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` que esta modificación está conteniendo.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DStackHolder_method_set_held_modification_stack:

.. rst-class:: classref-method

|void| **set_held_modification_stack**\ (\ held_modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) :ref:`🔗<class_SkeletonModification2DStackHolder_method_set_held_modification_stack>`

Establece el :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` que esta modificación está conteniendo. Esta pila de modificación se ejecutará cuando se ejecute esta modificación.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
