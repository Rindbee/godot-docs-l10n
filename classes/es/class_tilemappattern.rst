:github_url: hide

.. _class_TileMapPattern:

TileMapPattern
==============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Holds a pattern to be copied from or pasted into :ref:`TileMap<class_TileMap>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This resource holds a set of cells to help bulk manipulations of :ref:`TileMap<class_TileMap>`.

A pattern always starts at the ``(0, 0)`` coordinates and cannot have cells with negative coordinates.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_alternative_tile<class_TileMapPattern_method_get_cell_alternative_tile>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                 |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_cell_atlas_coords<class_TileMapPattern_method_get_cell_atlas_coords>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                         |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_source_id<class_TileMapPattern_method_get_cell_source_id>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                               |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_size<class_TileMapPattern_method_get_size>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_used_cells<class_TileMapPattern_method_get_used_cells>`\ (\ ) |const|                                                                                                                                                                                 |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_cell<class_TileMapPattern_method_has_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                   |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_empty<class_TileMapPattern_method_is_empty>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_cell<class_TileMapPattern_method_remove_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, update_size\: :ref:`bool<class_bool>`\ )                                                                                                              |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cell<class_TileMapPattern_method_set_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_size<class_TileMapPattern_method_set_size>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TileMapPattern_method_get_cell_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_alternative_tile**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_alternative_tile>`

Devuelve el ID de la alternativa de mosaico de la celda en ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_cell_atlas_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_cell_atlas_coords**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_atlas_coords>`

Devuelve el ID de las coordenadas del atlas del tile en ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_cell_source_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_source_id**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_source_id>`

Returns the tile source ID of the cell at ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_size**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_size>`

Devuelve el tamaño, en celdas, del patrón.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_used_cells>`

Devuelve la lista de coordenadas de celdas utilizadas en el patrón.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_has_cell:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_has_cell>`

Devuelve si el patrón tiene un tile en las coordenadas dadas.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_is_empty>`

Devuelve si el patrón está vacío o no.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_remove_cell:

.. rst-class:: classref-method

|void| **remove_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, update_size\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileMapPattern_method_remove_cell>`

Elimina la celda en las coordenadas dadas.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_set_cell:

.. rst-class:: classref-method

|void| **set_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileMapPattern_method_set_cell>`

Sets the tile identifiers for the cell at coordinates ``coords``. See :ref:`TileMap.set_cell()<class_TileMap_method_set_cell>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_set_size:

.. rst-class:: classref-method

|void| **set_size**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapPattern_method_set_size>`

Establece el tamaño del patrón.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
