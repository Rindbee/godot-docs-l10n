:github_url: hide

.. _class_AnimationLibrary:

AnimationLibrary
================

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contenedor para recursos de :ref:`Animation<class_Animation>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una biblioteca de animación almacena un conjunto de animaciones accesibles a través de claves :ref:`StringName<class_StringName>`, para su uso con los nodos :ref:`AnimationPlayer<class_AnimationPlayer>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de tutoriales de animación <../tutorials/animation/index>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`add_animation<class_AnimationLibrary_method_add_animation>`\ (\ name\: :ref:`StringName<class_StringName>`, animation\: :ref:`Animation<class_Animation>`\ )       |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Animation<class_Animation>`                                | :ref:`get_animation<class_AnimationLibrary_method_get_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_animation_list<class_AnimationLibrary_method_get_animation_list>`\ (\ ) |const|                                                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_animation_list_size<class_AnimationLibrary_method_get_animation_list_size>`\ (\ ) |const|                                                                      |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation<class_AnimationLibrary_method_has_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_animation<class_AnimationLibrary_method_remove_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_animation<class_AnimationLibrary_method_rename_animation>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_AnimationLibrary_signal_animation_added:

.. rst-class:: classref-signal

**animation_added**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_added>`

Emitida cuando se agrega una :ref:`Animation<class_Animation>`, bajo la clave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_changed:

.. rst-class:: classref-signal

**animation_changed**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_changed>`

Emitted when there's a change in one of the animations, e.g. tracks are added, moved or have changed paths. ``name`` is the key of the animation that was changed.

See also :ref:`Resource.changed<class_Resource_signal_changed>`, which this acts as a relay for.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_removed:

.. rst-class:: classref-signal

**animation_removed**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_removed>`

Emitida cuando se elimina una :ref:`Animation<class_Animation>` almacenada con la clave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_renamed:

.. rst-class:: classref-signal

**animation_renamed**\ (\ name\: :ref:`StringName<class_StringName>`, to_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_renamed>`

Emitida cuando se cambia la clave de una :ref:`Animation<class_Animation>`, de ``name`` a ``to_name``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AnimationLibrary_method_add_animation:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_animation**\ (\ name\: :ref:`StringName<class_StringName>`, animation\: :ref:`Animation<class_Animation>`\ ) :ref:`🔗<class_AnimationLibrary_method_add_animation>`

Añade la animación ``animation`` a la biblioteca, accesible por la clave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation:

.. rst-class:: classref-method

:ref:`Animation<class_Animation>` **get_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation>`

Devuelve la :ref:`Animation<class_Animation>` con la clave ``name``. Si la animación no existe, se devuelve ``null`` y se registra un error.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_animation_list**\ (\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation_list>`

Devuelve las claves de las :ref:`Animation<class_Animation>`\ s almacenadas en la biblioteca.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation_list_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_animation_list_size**\ (\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation_list_size>`

Devuelve el número de claves de las :ref:`Animation<class_Animation>`\ s almacenadas en la biblioteca.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationLibrary_method_has_animation>`

Devuelve ``true`` si la biblioteca almacena una :ref:`Animation<class_Animation>` con ``name`` como clave.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_remove_animation:

.. rst-class:: classref-method

|void| **remove_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_method_remove_animation>`

Elimina la :ref:`Animation<class_Animation>` con la clave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_rename_animation:

.. rst-class:: classref-method

|void| **rename_animation**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_method_rename_animation>`

Cambia la clave de la :ref:`Animation<class_Animation>` asociada a la clave ``name`` a ``newname``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
