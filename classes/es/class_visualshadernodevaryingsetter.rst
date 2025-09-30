:github_url: hide

.. _class_VisualShaderNodeVaryingSetter:

VisualShaderNodeVaryingSetter
=============================

**Hereda:** :ref:`VisualShaderNodeVarying<class_VisualShaderNodeVarying>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo sombreador visual que establece el valor de una varying.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Introduce un valor a un varying definido en el shader. Primero debes crear un varying que se pueda usar en la función dada, p. ej. el setter de varying en el shader de Fragmento requiere un varying con el modo establecido en :ref:`VisualShader.VARYING_MODE_FRAG_TO_LIGHT<class_VisualShader_constant_VARYING_MODE_FRAG_TO_LIGHT>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
