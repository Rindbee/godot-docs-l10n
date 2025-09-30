:github_url: hide

.. _class_InstancePlaceholder:

InstancePlaceholder
===================

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Marcador de posición para la raíz :ref:`Node<class_Node>` de una :ref:`PackedScene<class_PackedScene>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Turning on the option **Load As Placeholder** for an instantiated scene in the editor causes it to be replaced by an **InstancePlaceholder** when running the game, this will not replace the node in the editor. This makes it possible to delay actually loading the scene until calling :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>`. This is useful to avoid loading large scenes all at once by loading parts of it selectively.

\ **Note:** Like :ref:`Node<class_Node>`, **InstancePlaceholder** does not have a transform. This causes any child nodes to be positioned relatively to the :ref:`Viewport<class_Viewport>` origin, rather than their parent as displayed in the editor. Replacing the placeholder with a scene with a transform will transform children relatively to their parent again.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`             | :ref:`create_instance<class_InstancePlaceholder_method_create_instance>`\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_instance_path<class_InstancePlaceholder_method_get_instance_path>`\ (\ ) |const|                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_stored_values<class_InstancePlaceholder_method_get_stored_values>`\ (\ with_order\: :ref:`bool<class_bool>` = false\ )                                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_InstancePlaceholder_method_create_instance:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **create_instance**\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) :ref:`🔗<class_InstancePlaceholder_method_create_instance>`

Llama a este método para cargar el nodo. El nodo creado será colocado como un hermano *por encima* del **InstancePlaceholder** en el árbol de la escena. La referencia del :ref:`Node<class_Node>` también se devuelve por conveniencia.

\ **Nota:** :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` no es seguro para hilos. Usa :ref:`Object.call_deferred()<class_Object_method_call_deferred>` si se llama desde un hilo.

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_instance_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_instance_path**\ (\ ) |const| :ref:`🔗<class_InstancePlaceholder_method_get_instance_path>`

Obtiene la ruta del archivo de recursos :ref:`PackedScene<class_PackedScene>` que se carga por defecto al llamar a :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>`. No es seguro para hilos. Usa :ref:`Object.call_deferred()<class_Object_method_call_deferred>` si se llama desde un hilo.

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_stored_values:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_stored_values**\ (\ with_order\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_InstancePlaceholder_method_get_stored_values>`

Devuelve la lista de propiedades que se aplicarán al nodo cuando se llame a :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>`.

Si ``with_order`` es ``true``, se añade al diccionario una clave llamada ``.order`` (nótese el punto inicial). Esta clave ``.order`` es un :ref:`Array<class_Array>` de :ref:`String<class_String>`\ s que contiene los nombres de las propiedades, especificando el orden en que se aplicarán (siendo el índice 0 el primero).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
