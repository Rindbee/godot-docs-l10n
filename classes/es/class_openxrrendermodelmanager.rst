:github_url: hide

.. _class_OpenXRRenderModelManager:

OpenXRRenderModelManager
========================

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo de ayuda que gestionará automáticamente la visualización de modelos de renderizado.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este nodo de ayuda gestionará automáticamente la visualización de modelos de renderizado. Creará nuevos nodos :ref:`OpenXRRenderModel<class_OpenXRRenderModel>` a medida que se detecten los mandos y otros dispositivos de mano, y eliminará esos nodos cuando se desactiven.

\ **Nota:** Si quieres tener más control sobre esta lógica, puedes llamar alternativamente a :ref:`OpenXRRenderModelExtension.render_model_get_all()<class_OpenXRRenderModelExtension_method_render_model_get_all>` para obtener una lista de ID de modelos de renderizado activos y crear instancias de :ref:`OpenXRRenderModel<class_OpenXRRenderModel>` para cada ID de modelo de renderizado proporcionado.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                                 | :ref:`make_local_to_pose<class_OpenXRRenderModelManager_property_make_local_to_pose>` | ``""`` |
   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+
   | :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` | :ref:`tracker<class_OpenXRRenderModelManager_property_tracker>`                       | ``0``  |
   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_OpenXRRenderModelManager_signal_render_model_added:

.. rst-class:: classref-signal

**render_model_added**\ (\ render_model\: :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`\ ) :ref:`🔗<class_OpenXRRenderModelManager_signal_render_model_added>`

Emitida cuando se añade un nodo de modelo de renderizado como hijo a este nodo.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelManager_signal_render_model_removed:

.. rst-class:: classref-signal

**render_model_removed**\ (\ render_model\: :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`\ ) :ref:`🔗<class_OpenXRRenderModelManager_signal_render_model_removed>`

Emitida cuando un nodo hijo de modelo de renderizado está a punto de ser eliminado de este nodo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_OpenXRRenderModelManager_RenderModelTracker:

.. rst-class:: classref-enumeration

enum **RenderModelTracker**: :ref:`🔗<enum_OpenXRRenderModelManager_RenderModelTracker>`

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_ANY** = ``0``

Todos los modelos de renderizado activos se muestran independientemente del rastreador al que estén relacionados.

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_NONE_SET:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_NONE_SET** = ``1``

Solo se muestran los modelos de renderizado activos que no están relacionados con ningún rastreador que gestionemos.

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_LEFT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_LEFT_HAND** = ``2``

Solo se muestran los modelos de renderizado activos que están relacionados con el rastreador de la mano izquierda.

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_RIGHT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_RIGHT_HAND** = ``3``

Solo se muestran los modelos de renderizado activos que están relacionados con el rastreador de la mano derecha.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OpenXRRenderModelManager_property_make_local_to_pose:

.. rst-class:: classref-property

:ref:`String<class_String>` **make_local_to_pose** = ``""`` :ref:`🔗<class_OpenXRRenderModelManager_property_make_local_to_pose>`

.. rst-class:: classref-property-setget

- |void| **set_make_local_to_pose**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_make_local_to_pose**\ (\ )

Posiciona los modelos de renderizado locales a esta pose (esto ajustará la posición del nodo contenedor de los modelos de renderizado).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelManager_property_tracker:

.. rst-class:: classref-property

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **tracker** = ``0`` :ref:`🔗<class_OpenXRRenderModelManager_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>`\ )
- :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **get_tracker**\ (\ )

Limita los modelos de renderizado al rastreador especificado. Incluye: 0 = Todos los modelos de renderizado, 1 = Modelos de renderizado no relacionados con un rastreador, 2 = Modelos de renderizado relacionados con el rastreador de la mano izquierda, 3 = Modelos de renderizado relacionados con el rastreador de la mano derecha.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
