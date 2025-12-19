:github_url: hide

.. _class_NavigationPathQueryResult2D:

NavigationPathQueryResult2D
===========================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa el resultado de una consulta de búsqueda de ruta 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase almacena el resultado de una consulta de ruta de navegación 2D de :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar NavigationPathQueryObjects <../tutorials/navigation/navigation_using_navigationpathqueryobjects>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`path<class_NavigationPathQueryResult2D_property_path>`                     | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`path_length<class_NavigationPathQueryResult2D_property_path_length>`       | ``0.0``                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`path_owner_ids<class_NavigationPathQueryResult2D_property_path_owner_ids>` | ``PackedInt64Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]  | :ref:`path_rids<class_NavigationPathQueryResult2D_property_path_rids>`           | ``[]``                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`path_types<class_NavigationPathQueryResult2D_property_path_types>`         | ``PackedInt32Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------+
   | |void| | :ref:`reset<class_NavigationPathQueryResult2D_method_reset>`\ (\ ) |
   +--------+--------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_NavigationPathQueryResult2D_PathSegmentType:

.. rst-class:: classref-enumeration

enum **PathSegmentType**: :ref:`🔗<enum_NavigationPathQueryResult2D_PathSegmentType>`

.. _class_NavigationPathQueryResult2D_constant_PATH_SEGMENT_TYPE_REGION:

.. rst-class:: classref-enumeration-constant

:ref:`PathSegmentType<enum_NavigationPathQueryResult2D_PathSegmentType>` **PATH_SEGMENT_TYPE_REGION** = ``0``

Este segmento de la ruta pasa por una región.

.. _class_NavigationPathQueryResult2D_constant_PATH_SEGMENT_TYPE_LINK:

.. rst-class:: classref-enumeration-constant

:ref:`PathSegmentType<enum_NavigationPathQueryResult2D_PathSegmentType>` **PATH_SEGMENT_TYPE_LINK** = ``1``

Este segmento de la ruta pasa por un enlace.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_NavigationPathQueryResult2D_property_path:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **path** = ``PackedVector2Array()`` :ref:`🔗<class_NavigationPathQueryResult2D_property_path>`

.. rst-class:: classref-property-setget

- |void| **set_path**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_path**\ (\ )

El array de ruta resultante de la consulta de navegación. Todas las posiciones del array de ruta están en coordenadas globales. Sin parámetros de consulta personalizados, esta es la misma ruta que la devuelta por :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult2D_property_path_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_length** = ``0.0`` :ref:`🔗<class_NavigationPathQueryResult2D_property_path_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_length**\ (\ )

Devuelve la longitud de la ruta.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult2D_property_path_owner_ids:

.. rst-class:: classref-property

:ref:`PackedInt64Array<class_PackedInt64Array>` **path_owner_ids** = ``PackedInt64Array()`` :ref:`🔗<class_NavigationPathQueryResult2D_property_path_owner_ids>`

.. rst-class:: classref-property-setget

- |void| **set_path_owner_ids**\ (\ value\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )
- :ref:`PackedInt64Array<class_PackedInt64Array>` **get_path_owner_ids**\ (\ )

Los ``ObjectID``\ s de los :ref:`Object<class_Object>`\ s que gestionan las regiones y los enlaces por los que pasa cada punto de la ruta.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt64Array<class_PackedInt64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult2D_property_path_rids:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **path_rids** = ``[]`` :ref:`🔗<class_NavigationPathQueryResult2D_property_path_rids>`

.. rst-class:: classref-property-setget

- |void| **set_path_rids**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_path_rids**\ (\ )

Los :ref:`RID<class_RID>`\ s de las regiones y los enlaces por los que pasa cada punto de la ruta.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult2D_property_path_types:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **path_types** = ``PackedInt32Array()`` :ref:`🔗<class_NavigationPathQueryResult2D_property_path_types>`

.. rst-class:: classref-property-setget

- |void| **set_path_types**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_path_types**\ (\ )

El tipo de primitiva de navegación (región o enlace) por la que pasa cada punto de la ruta.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_NavigationPathQueryResult2D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_NavigationPathQueryResult2D_method_reset>`

Restablece el objeto de resultado a su estado inicial. Esto es útil para reutilizar el objeto en varias consultas.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
