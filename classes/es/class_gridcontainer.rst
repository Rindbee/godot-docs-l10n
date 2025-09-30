:github_url: hide

.. _class_GridContainer:

GridContainer
=============

**Hereda:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contenedor que organiza sus controles secundarios en un diseño de cuadrícula.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**GridContainer** organiza sus controles secundarios en un diseño de cuadrícula. El número de columnas se especifica mediante la propiedad :ref:`columns<class_GridContainer_property_columns>`, mientras que el número de filas depende de cuántas se necesiten para los controles secundarios. El número de filas y columnas se conserva para cada tamaño del contenedor.

\ **Nota:** **GridContainer** solo funciona con nodos secundarios que heredan de :ref:`Control<class_Control>`. No reorganizará los nodos secundarios que heredan de :ref:`Node2D<class_Node2D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar Contenedores <../tutorials/ui/gui_containers>`

- `Demo de Prueba de Sistema Operativo <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`columns<class_GridContainer_property_columns>` | ``1`` |
   +-----------------------+------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`h_separation<class_GridContainer_theme_constant_h_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`v_separation<class_GridContainer_theme_constant_v_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GridContainer_property_columns:

.. rst-class:: classref-property

:ref:`int<class_int>` **columns** = ``1`` :ref:`🔗<class_GridContainer_property_columns>`

.. rst-class:: classref-property-setget

- |void| **set_columns**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_columns**\ (\ )

El número de columnas en el **GridContainer**. Si se modifica, el **GridContainer** reordena sus hijos derivados de Control para adaptarse al nuevo diseño.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_GridContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_GridContainer_theme_constant_h_separation>`

La separación horizontal de los nodos hijos.

.. rst-class:: classref-item-separator

----

.. _class_GridContainer_theme_constant_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **v_separation** = ``4`` :ref:`🔗<class_GridContainer_theme_constant_v_separation>`

La separación vertical de los nodos hijos.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
