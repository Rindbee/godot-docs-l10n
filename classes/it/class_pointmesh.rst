:github_url: hide

.. _class_PointMesh:

PointMesh
=========

**Eredita:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Mesh with a single point primitive.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A **PointMesh** is a primitive mesh composed of a single point. Instead of relying on triangles, points are rendered as a single rectangle on the screen with a constant size. They are intended to be used with particle systems, but can also be used as a cheap way to render billboarded sprites (for example in a point cloud).

In order to be displayed, point meshes must be used with a material that has a point size. The point size can be accessed in a shader with the ``POINT_SIZE`` built-in, or in a :ref:`BaseMaterial3D<class_BaseMaterial3D>` by setting the :ref:`BaseMaterial3D.use_point_size<class_BaseMaterial3D_property_use_point_size>` and :ref:`BaseMaterial3D.point_size<class_BaseMaterial3D_property_point_size>` properties.

\ **Note:** When using point meshes, properties that normally affect vertices will be ignored, including :ref:`BaseMaterial3D.billboard_mode<class_BaseMaterial3D_property_billboard_mode>`, :ref:`BaseMaterial3D.grow<class_BaseMaterial3D_property_grow>`, and :ref:`BaseMaterial3D.cull_mode<class_BaseMaterial3D_property_cull_mode>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
