:github_url: hide

.. _class_LightmapProbe:

LightmapProbe
=============

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Representa una sola sonda colocada manualmente para la iluminación de objetos dinámicos con :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**LightmapProbe** representa la posición de una sola sonda colocada manualmente para la iluminación de objetos dinámicos con :ref:`LightmapGI<class_LightmapGI>`. Las sondas Lightmap afectan la iluminación de los nodos derivados de :ref:`GeometryInstance3D<class_GeometryInstance3D>` que tienen su :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` establecido en :ref:`GeometryInstance3D.GI_MODE_DYNAMIC<class_GeometryInstance3D_constant_GI_MODE_DYNAMIC>`.

Por lo general, las sondas :ref:`LightmapGI<class_LightmapGI>` se colocan automáticamente configurando :ref:`LightmapGI.generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` a un valor diferente de :ref:`LightmapGI.GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>`. Al crear nodos **LightmapProbe** antes de procesar lightmaps, puedes agregar más sondas en áreas específicas para obtener mayor detalle, o deshabilitar la generación automática y confiar solo en las sondas colocadas manualmente en su lugar.

\ **Nota:** Los nodos **LightmapProbe** que se colocan después de procesar lightmaps son ignorados por los objetos dinámicos. Debes procesar lightmaps nuevamente después de crear o modificar **LightmapProbe**\ s para que las sondas sean efectivas.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
