:github_url: hide

.. _class_Node3DGizmo:

Node3DGizmo
===========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`

Clase abstracta para exponer gizmos de editor para :ref:`Node3D<class_Node3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This abstract class helps connect the :ref:`Node3D<class_Node3D>` scene with the editor-specific :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` class.

\ **Node3DGizmo** by itself has no exposed API, refer to :ref:`Node3D.add_gizmo()<class_Node3D_method_add_gizmo>` and pass it an :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` instance.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
