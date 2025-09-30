:github_url: hide

.. _class_ViewportTexture:

ViewportTexture
===============

**Hereda:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona el contenido de un :ref:`Viewport<class_Viewport>` como una textura dinámica.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un **ViewportTexture** proporciona el contenido de un :ref:`Viewport<class_Viewport>` como una :ref:`Texture2D<class_Texture2D>` dinámica. Esto se puede utilizar para combinar el renderizado de nodos :ref:`Control<class_Control>`, :ref:`Node2D<class_Node2D>` y :ref:`Node3D<class_Node3D>`. Por ejemplo, puedes utilizar esta textura para mostrar una escena 3D dentro de un :ref:`TextureRect<class_TextureRect>`, o una superposición 2D en un :ref:`Sprite3D<class_Sprite3D>`.

Para obtener un **ViewportTexture** en el código, utiliza el método :ref:`Viewport.get_texture()<class_Viewport_method_get_texture>` en el viewport de destino.

\ **Nota:** Un **ViewportTexture** es siempre local a su escena (véase :ref:`Resource.resource_local_to_scene<class_Resource_property_resource_local_to_scene>`). Si la raíz de la escena no está lista, puede devolver datos incorrectos (véase :ref:`Node.ready<class_Node_signal_ready>`).

\ **Nota:** Instanciar escenas que contengan un **ViewportTexture** de alta resolución puede causar tartamudeo notable.

\ **Nota:** Cuando se utiliza un :ref:`Viewport<class_Viewport>` con :ref:`Viewport.use_hdr_2d<class_Viewport_property_use_hdr_2d>` establecido en ``true``, la textura devuelta será una imagen HDR codificada en espacio lineal. Esto puede verse más oscuro de lo normal cuando se muestra directamente en la pantalla. Para convertir al espacio gamma, puedes hacer lo siguiente:

::

    img.convert(Image.FORMAT_RGBA8)
    imb.linear_to_srgb()

\ **Nota:** Algunos nodos como :ref:`Decal<class_Decal>`, :ref:`Light3D<class_Light3D>` y :ref:`PointLight2D<class_PointLight2D>` no soportan el uso de **ViewportTexture** directamente. Para utilizar los datos de textura de un **ViewportTexture** en estos nodos, es necesario crear un :ref:`ImageTexture<class_ImageTexture>` llamando a :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` en el **ViewportTexture** y pasando el resultado a :ref:`ImageTexture.create_from_image()<class_ImageTexture_method_create_from_image>`. Esta conversión es una operación lenta, por lo que no debe realizarse en cada fotograma.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `GUI in 3D Viewport Demo <https://godotengine.org/asset-library/asset/2807>`__

- `Demo de Viewport 3D en 2D <https://godotengine.org/asset-library/asset/2804>`__

- `2D in 3D Viewport Demo <https://godotengine.org/asset-library/asset/2803>`__

- `Demo de Escalado de Resolución en 3D <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`viewport_path<class_ViewportTexture_property_viewport_path>` | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ViewportTexture_property_viewport_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **viewport_path** = ``NodePath("")`` :ref:`🔗<class_ViewportTexture_property_viewport_path>`

.. rst-class:: classref-property-setget

- |void| **set_viewport_path_in_scene**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_viewport_path_in_scene**\ (\ )

La ruta al nodo :ref:`Viewport<class_Viewport>` a mostrar. Es relativa a la raíz de la escena local (véase :ref:`Resource.get_local_scene()<class_Resource_method_get_local_scene>`), **no** a los nodos que usan esta textura.

\ **Nota:** En el editor, esta ruta se actualiza automáticamente cuando el viewport objetivo o uno de sus ancestros es renombrado o movido. En tiempo de ejecución, esta ruta podría no actualizarse automáticamente si la raíz de la escena no puede ser encontrada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
