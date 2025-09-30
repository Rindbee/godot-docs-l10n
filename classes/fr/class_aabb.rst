:github_url: hide

.. _class_AABB:

AABB
====

Une boîte délimitante 3D alignée sur les axes.

.. rst-class:: classref-introduction-group

Description
-----------

The **AABB** built-in :ref:`Variant<class_Variant>` type represents an axis-aligned bounding box in a 3D space. It is defined by its :ref:`position<class_AABB_property_position>` and :ref:`size<class_AABB_property_size>`, which are :ref:`Vector3<class_Vector3>`. It is frequently used for fast overlap tests (see :ref:`intersects()<class_AABB_method_intersects>`). Although **AABB** itself is axis-aligned, it can be combined with :ref:`Transform3D<class_Transform3D>` to represent a rotated or skewed bounding box.

It uses floating-point coordinates. The 2D counterpart to **AABB** is :ref:`Rect2<class_Rect2>`. There is no version of **AABB** that uses integer coordinates.

\ **Note:** Negative values for :ref:`size<class_AABB_property_size>` are not supported. With negative size, most **AABB** methods do not work correctly. Use :ref:`abs()<class_AABB_method_abs>` to get an equivalent **AABB** with a non-negative size.

\ **Note:** In a boolean context, an **AABB** evaluates to ``false`` if both :ref:`position<class_AABB_property_position>` and :ref:`size<class_AABB_property_size>` are zero (equal to :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`). Otherwise, it always evaluates to ``true``.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur les mathématiques <../tutorials/math/index>`

- :doc:`Mathématiques des vecteurs <../tutorials/math/vector_math>`

- :doc:`Mathématiques avancées des vecteurs <../tutorials/math/vectors_advanced>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`end<class_AABB_property_end>`           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`position<class_AABB_property_position>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_AABB_property_size>`         | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ )                                                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ from\: :ref:`AABB<class_AABB>`\ )                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`abs<class_AABB_method_abs>`\ (\ ) |const|                                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_AABB_method_encloses>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`expand<class_AABB_method_expand>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_center<class_AABB_method_get_center>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_endpoint<class_AABB_method_get_endpoint>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_longest_axis<class_AABB_method_get_longest_axis>`\ (\ ) |const|                                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_longest_axis_index<class_AABB_method_get_longest_axis_index>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_longest_axis_size<class_AABB_method_get_longest_axis_size>`\ (\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_shortest_axis<class_AABB_method_get_shortest_axis>`\ (\ ) |const|                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_shortest_axis_index<class_AABB_method_get_shortest_axis_index>`\ (\ ) |const|                                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_shortest_axis_size<class_AABB_method_get_shortest_axis_size>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_support<class_AABB_method_get_support>`\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_volume<class_AABB_method_get_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`grow<class_AABB_method_grow>`\ (\ by\: :ref:`float<class_float>`\ ) |const|                                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_AABB_method_has_point>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_surface<class_AABB_method_has_surface>`\ (\ ) |const|                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_volume<class_AABB_method_has_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`intersection<class_AABB_method_intersection>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_AABB_method_intersects>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects_plane<class_AABB_method_intersects_plane>`\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const|                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_ray<class_AABB_method_intersects_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_segment<class_AABB_method_intersects_segment>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_AABB_method_is_equal_approx>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const|                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_AABB_method_is_finite>`\ (\ ) |const|                                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`merge<class_AABB_method_merge>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_AABB_operator_neq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`operator *<class_AABB_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_AABB_operator_eq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                      |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AABB_property_end:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **end** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_end>`

Le point de fin. Il s'agit généralement du coin en haut à droite et en arrière de la boîte délimitante , et est équivalent à ``position + size``. Définir ce point affecte la taille :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_position>`

Le point d'origine. Il s'agit généralement du coin en bas à gauche et à l'avant de la boîte délimitante.

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_size>`

La largeur, la hauteur et la profondeur de la boîte délimitante à partir de la :ref:`position<class_AABB_property_position>`. Définir cette valeur affecte aussi le point de fin :ref:`end<class_AABB_property_end>`.

\ **Note :** Il est recommandé de fixer la largeur, la hauteur et la profondeur à des valeurs non négatives. C'est parce que la plupart des méthodes de Godot supposent que la :ref:`position<class_AABB_property_position>` est le coin inférieur gauche-avant, et le point de fin :ref:`end<class_AABB_property_end>` est le coin supérieur droit-arrière. Pour obtenir une boîte délimitante équivalente avec une taille non négative, utilisez :ref:`abs()<class_AABB_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_AABB_constructor_AABB:

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ ) :ref:`🔗<class_AABB_constructor_AABB>`

Construit une **AABB** avec sa :ref:`position<class_AABB_property_position>` et sa taille :ref:`size<class_AABB_property_size>` définies à :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ from\: :ref:`AABB<class_AABB>`\ )

Construit une **AABB** en tant que copie de la **AABB** donnée.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ )

Construit une **AABB** avec sa ``position`` et sa taille ``size``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AABB_method_abs:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **abs**\ (\ ) |const| :ref:`🔗<class_AABB_method_abs>`

Renvoie une **AABB** équivalente à cette boîte délimitante, avec sa largeur, sa hauteur et sa profondeur modifiées pour être des valeurs non-négatives.


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(5, 0, 5), Vector3(-20, -10, -5))
    var absolu = box.abs()
    print(absolu.position) # Affiche (-15.0, -10.0, 0.0)
    print(absolu.size)          # Affiche (20.0, 10.0, 5.0)

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(5, 0, 5), new Vector3(-20, -10, -5));
    var absolu = box.Abs();
    GD.Print(absolu.Position); // Affiche (-15.0, -10.0, 0.0)
    GD.Print(absolu.Size); // Affiche (20.0, 10.0, 5.0)



\ **Note :** Il est recommandé d'utiliser cette méthode lorsque :ref:`size<class_AABB_property_size>` est négatif, car la plupart des autres méthodes de Godot supposent que les composants de :ref:`size<class_AABB_property_size>` sont supérieurs à ``0``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_encloses>`

Renvoie ``true`` si cette boîte délimitante encadre *complètement* la boîte ``with``. Les bords des deux boîtes sont inclus.


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(0, 0, 0), Vector3(4, 4, 4))
    var b = AABB(Vector3(1, 1, 1), Vector3(3, 3, 3))
    c = AABB(Vector3(2, 2, 2), Vector3(8, 8, 8))

    print(a.encloses(a)) # Affiche true
    print(a.encloses(b)) # Affiche true
    print(a.encloses(c)) # Affiche false

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(0, 0, 0), new Vector3(4, 4, 4));
    var b = new Aabb(nouveau Vector3(1, 1, 1), new Vector3(3, 3, 3));
    c = new Aabb(nouveau Vector3(2, 2, 2), new Vector3(8, 8, 8));

    GD.Print(a.Encloses(a)); // Affiche True
    GD.Print(a.Encloses(b)); // Affiche True
    GD.Print(a.Encloses(c)); // Affiche False



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_expand:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **expand**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_expand>`

Renvoie une copie de cette boîte délimitante élargie pour aligner les bords avec le point ``to_point`` donné, si nécessaire.


.. tabs::

 .. code-tab:: gdscript

    var boite = AABB(Vector3(0, 0, 0), Vector3(5, 2, 5))

    boite = boite.expand(Vector3(10, 0, 0))
    print(boite.position) # Affiche (0.0, 0.0, 0.0)
    print(boite.size) # Affiche (10, 2,0, 5.0)

    boite = boite.expand(Vector3(-5, 0, 5))
    print(-5.0, 0.0, 0.0)
    print(boite.size) # Affiche (15,0, 2.0, 5.0)

 .. code-tab:: csharp

    var boite = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 5));

    boite = boite.Expand(new Vector3(10, 0, 0));
    GD.Print(boite.Position); // Prints (0, 0, 0)
    GD.Print(boite.Size); // Prints (10, 2, 5)

    boite= boite.Expand(new Vector3(-5, 0, 5));
    GD.Print(boite.Position); // Affiche (-5, 0, 0)
    GD.Print(boite.Size); // Affiche (15, 2, 5)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_center:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_center**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_center>`

Renvoie le point central de la boîte délimitante. Cela revient à ``position + (size / 2.0)``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_endpoint:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_endpoint**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AABB_method_get_endpoint>`

Renvoie la position de l'un des 8 sommets qui composent cette boîte délimitante. Avec un index ``idx`` de ``0``, cela revient à :ref:`position<class_AABB_property_position>`, et un ``idx`` de ``7`` revient à :ref:`end<class_AABB_property_end>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_longest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis>`

Renvoie l'axe normalisé le plus long du :ref:`size<class_AABB_property_size>` de la boîte délimitante, en tant que :ref:`Vector3<class_Vector3>` (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`, :ref:`Vector3.UP<class_Vector3_constant_UP>`, ou :ref:`Vector3.BACK<class_Vector3_constant_BACK>`).


.. tabs::

 .. code-tab:: gdscript

    var boite = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(boite.get_longest_axis())       # Affiche (0.0, 0.0, 1.0)
    print(boite.get_longest_axis_index()) # Affiche 2
    print(boite.get_longest_axis_size())  # Affiche 8.0

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetLongestAxis());      // Affiche (0, 0, 1)
    GD.Print(box.GetLongestAxisIndex()); // Affiche Z
    GD.Print(box.GetLongestAxisSize());  // Affiche 8



Voir aussi :ref:`get_longest_axis_index()<class_AABB_method_get_longest_axis_index>` et :ref:`get_longest_axis_size()<class_AABB_method_get_longest_axis_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_longest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_index>`

Renvoie l'index de l'axe le plus long de la taille :ref:`size<class_AABB_property_size>` de cette boîte (voir :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`, :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>`, et :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`).

Pour un exemple, voir :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_longest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_size>`

Renvoie la dimension la plus longue de la taille :ref:`size<class_AABB_property_size>` de cette boîte délimitante.

Pour un exemple, voir :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_shortest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis>`

Renvoie l'axe normalisé le plus court de la taille :ref:`size<class_AABB_property_size>` de cette boîte de délimitation, en tant que :ref:`Vector3<class_Vector3>` (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`, :ref:`Vector3.UP<class_Vector3_constant_UP>`, ou :ref:`Vector3.BACK<class_Vector3_constant_BACK>`).


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_shortest_axis())       # Affiche (1.0, 0.0, 1.0)
    print(box.get_shortest_axis_index()) # Affiche 0
    print(box.get_shortest_axis_size())  # Affiche 2.0

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetShortestAxis());      // Affiche (1, 0, 0)
    GD.Print(box.GetShortestAxisIndex()); // Affiche X
    GD.Print(box.GetShortestAxisSize());  // Affiche 2



Voir aussi :ref:`get_shortest_axis_index()<class_AABB_method_get_shortest_axis_index>` et :ref:`get_shortest_axis_size()<class_AABB_method_get_shortest_axis_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_shortest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_index>`

Renvoie l'index de l'axe le plus court de la taille :ref:`size<class_AABB_property_size>` de cette boîte (voir :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`, :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>`, et :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`).

Pour un exemple, voir :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_shortest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_size>`

Renvoie la dimension la plus courte de la taille :ref:`size<class_AABB_property_size>` de cette boîte délimitante.

Pour un exemple, voir :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_support:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_support**\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_get_support>`

Renvoie la position du sommet de cette boîte délimitante qui est le plus éloigné dans la direction donnée. Ce point est communément connu comme le point de support dans les algorithmes de détection de collision.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_volume:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_volume>`

Renvoie le volume de la boîte délimitante. Cela revient à ``size.x * size.y * size.z``. Voir aussi :ref:`has_volume()<class_AABB_method_has_volume>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_grow:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **grow**\ (\ by\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_AABB_method_grow>`

Renvoie une copie de cette boîte délimitante étendue sur tous les côtés par la quantité ``by`` donnée. Une quantité négative rétrécit la boîte à la place.


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(4, 4, 4), Vector3(8, 8, 8)).grow(4)
    print(a.position) # Affiche (0.0, 0.0, 0.0)
    print(a.size)     # Affiche (16.0, 16.0, 16.0)

    var b = AABB(Vector3(0, 0, 0), Vector3(8, 4, 2)).grow(2)
    print(b.position) # Affiche (-2.0, -2.0, -2.0)
    print(b.size)     # Affiche (12.0, 8.0, 6.0)

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(4, 4, 4), new Vector3(8, 8, 8)).Grow(4);
    GD.Print(a.Position); // Affiche (0, 0, 0)
    GD.Print(a.Size); // Affiche (16, 16, 16)

    var b = new Aabb(new Vector3(0, 0, 0), new Vector3(8, 4, 2)).Grow(2);
    GD.Print(b.Position); // Affiche (-2, -2, -2)
    GD.Print(b.Size); // Affiche (12, 8, 6)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_has_point>`

Renvoie ``true`` si la boîte délimitante contient le ``point`` donné. Par convention, les points exactement sur la droite, le dessus et les côtés avant **ne sont pas** inclus.

\ **Note :** Cette méthode n'est pas fiable pour les **AABB** avec une taille :ref:`size<class_AABB_property_size>` *négative*. Utilisez :ref:`abs()<class_AABB_method_abs>` d'abord pour obtenir une boîte délimitante valide.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_surface:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_surface**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_surface>`

Renvoie ``true`` si cette boîte délimitante a une surface ou une longueur, c'est-à-dire qu'au moins une composante de :ref:`size<class_AABB_property_size>` est supérieure à ``0``. Sinon, renvoie ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_volume:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_volume>`

Renvoie ``true`` si la largeur, la hauteur et la profondeur de cette boîte délimitante sont toutes positives. Voir aussi :ref:`get_volume()<class_AABB_method_get_volume>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **intersection**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersection>`

Renvoie l'intersection entre cette boîte délimitante et ``with``. Si les boîtes ne s'intersectent pas, renvoie une **AABB** vide. Si les boîtes se croisent sur le bord, renvoie une **AABB** plate sans volume (voir :ref:`has_surface()<class_AABB_method_has_surface>` et :ref:`has_volume()<class_AABB_method_has_volume>`).


.. tabs::

 .. code-tab:: gdscript

    var boite1 = AABB(Vector3(0, 0, 0), Vector3(5, 2, 8))
    var boite2 = AABB(Vector3(2, 0, 2), Vector3(8, 4, 4))

    var intersection = boite1.intersection(boite2)
    print(intersection.position) # Affiche (2.0, 0.0, 2.0)
    print(intersection.size)     # Affiche (3.0, 2.0, 4.0)

 .. code-tab:: csharp

    var boite1 = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 8));
    var boite 2= new Aabb(new Vector3(2, 0, 2), new Vector3(8, 4, 4));

    var intersection = boite1.Intersection(boite2);
    GD.Print(intersection.Position); // Affiche (2, 0, 2)
    GD.Print(intersection.Size);     // Affiche(3, 2, 4)



\ **Note :** Si vous avez besoin de savoir uniquement si deux boîtes délimitantes s'intersectent, utilisez :ref:`intersects()<class_AABB_method_intersects>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersects>`

Renvoie ``true`` si cette boîte délimitante chevauche la boîte ``with``. Les bords des deux boîtes sont *toujours* exclus.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_plane:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects_plane**\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_plane>`

Renvoie ``true`` si cette boîte délimitante est des deux côtés du plan ``plane`` donné.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_ray>`

Renvoie le premier point où cette boîte délimitante et le rayon donné s'intersectent, en tant que :ref:`Vector3<class_Vector3>`. Si aucune intersection ne se produit, renvoie ``null``.

Le rayon commence à ``from``, a comme direction ``dir`` et s'étend vers l'infini.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_segment**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_segment>`

Renvoie le premier point où cette boîte délimitante et le segment donné s'intersectent, en tant que :ref:`Vector3<class_Vector3>`. Si aucune intersection ne se produit, renvoie ``null``.

Le segment commence au point ``from`` et se termine au point ``to``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_is_equal_approx>`

Renvoie ``true`` si cette boîte délimitante et ``aabb`` sont approximativement égaux, en appelant :ref:`Vector3.is_equal_approx()<class_Vector3_method_is_equal_approx>` sur la :ref:`position<class_AABB_property_position>` et la taille :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_AABB_method_is_finite>`

Renvoie ``true`` si les valeurs de cette boîte délimitante sont finies, en appelant :ref:`Vector3.is_finite()<class_Vector3_method_is_finite>` sur :ref:`position<class_AABB_property_position>` et :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_merge:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **merge**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_merge>`

Renvoie une **AABB** qui contient à la fois cette boîte délimitante et ``with`` autour des bords. Voir aussi :ref:`encloses()<class_AABB_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_AABB_operator_neq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_neq_AABB>`

Renvoie ``true`` si la :ref:`position<class_AABB_property_position>` ou la taille :ref:`size<class_AABB_property_size>` des deux boîtes de délimitation ne sont pas égales.

\ **Note :** À cause des erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>` à la place, qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_AABB_operator_mul_Transform3D>`

Transforme (multiplie) de manière inverse la **AABB** par la matrice de transformation :ref:`Transform3D<class_Transform3D>` donnée, avec la supposition que la base de la transformation est orthonormée (c.a.d. une rotation/réflexion est OK, une échelle/un cisaillement ne l'est pas).

\ ``aabb * transform`` est équivalent à ``transform.inverse() * aabb``. Voir :ref:`Transform3D.inverse()<class_Transform3D_method_inverse>`.

Pour transformer par l'inverse d'une transformation affine (par ex. avec une mise à l'échelle), ``transform.affine_inverse() * rect`` peut être utilisé à la place. Voir :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_eq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_eq_AABB>`

Renvoie ``true`` si :ref:`position<class_AABB_property_position>` et :ref:`size<class_AABB_property_size>` des boîtes délimitantes sont tous les deux exactement égaux, respectivement.

\ **Note :** En raison d'erreurs de précision flottante, envisagez d'utiliser :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>` à la place, qui est plus fiable.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
