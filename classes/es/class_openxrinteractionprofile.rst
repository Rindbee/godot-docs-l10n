:github_url: hide

.. _class_OpenXRInteractionProfile:

OpenXRInteractionProfile
========================

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Objeto de enlaces sugeridos para OpenXR.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este objeto almacena enlaces sugeridos para un perfil de interacción. Los perfiles de interacción definen los metadatos para un dispositivo XR rastreado, como un controlador XR.

Para más información, consulta la `información de los perfiles de interacción en la especificación de OpenXR <https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-interaction-profiles>`__.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`binding_modifiers<class_OpenXRInteractionProfile_property_binding_modifiers>`               | ``[]`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`bindings<class_OpenXRInteractionProfile_property_bindings>`                                 | ``[]`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`interaction_profile_path<class_OpenXRInteractionProfile_property_interaction_profile_path>` | ``""`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRIPBinding<class_OpenXRIPBinding>`                 | :ref:`get_binding<class_OpenXRInteractionProfile_method_get_binding>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_binding_count<class_OpenXRInteractionProfile_method_get_binding_count>`\ (\ ) |const|                                      |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRInteractionProfile_method_get_binding_modifier>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_binding_modifier_count<class_OpenXRInteractionProfile_method_get_binding_modifier_count>`\ (\ ) |const|                    |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OpenXRInteractionProfile_property_binding_modifiers:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **binding_modifiers** = ``[]`` :ref:`🔗<class_OpenXRInteractionProfile_property_binding_modifiers>`

.. rst-class:: classref-property-setget

- |void| **set_binding_modifiers**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_binding_modifiers**\ (\ )

Modificadores de vinculación para este perfil de interacción.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_property_bindings:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **bindings** = ``[]`` :ref:`🔗<class_OpenXRInteractionProfile_property_bindings>`

.. rst-class:: classref-property-setget

- |void| **set_bindings**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_bindings**\ (\ )

Vinculaciones de acción para este perfil de interacción.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_property_interaction_profile_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **interaction_profile_path** = ``""`` :ref:`🔗<class_OpenXRInteractionProfile_property_interaction_profile_path>`

.. rst-class:: classref-property-setget

- |void| **set_interaction_profile_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_interaction_profile_path**\ (\ )

La ruta del perfil de interacción que identifica el dispositivo XR.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRInteractionProfile_method_get_binding:

.. rst-class:: classref-method

:ref:`OpenXRIPBinding<class_OpenXRIPBinding>` **get_binding**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding>`

Recupera el enlace en esta vinculación.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_count**\ (\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_count>`

Obtiene el número de vinculaciones en este perfil de interacción.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` **get_binding_modifier**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_modifier>`

Obtiene el :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` en este índice.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_modifier_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_modifier_count**\ (\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_modifier_count>`

Obtiene el número de modificadores de vinculación en este perfil de interacción.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
