:github_url: hide

.. _class_Rect2i:

Rect2i
======

Une boîte délimitante 2D alignée sur les axes utilisant des coordonnées entières.

.. rst-class:: classref-introduction-group

Description
-----------

Le type :ref:`Variant<class_Variant>` intégré **Rect2i** représente un rectangle aligné sur les axes dans un espace 2D, en utilisant des coordonnées entières. Il est défini par sa position :ref:`position<class_Rect2i_property_position>` et sa taille :ref:`size<class_Rect2i_property_size>`, qui sont des :ref:`Vector2i<class_Vector2i>`. Comme il ne tourne pas, il est fréquemment utilisé pour les tests de superposition rapide (voir :ref:`intersects()<class_Rect2i_method_intersects>`).

Pour des coordonnées avec des flottants, utilisez :ref:`Rect2<class_Rect2>`.

\ **Note :** Les valeurs négatives pour :ref:`size<class_Rect2i_property_size>` ne sont pas supportées. Avec une taille négative, la plupart des méthodes de **Rect2i** ne fonctionnent pas correctement. Utilisez :ref:`abs()<class_Rect2i_method_abs>` pour obtenir un **Rect2i** équivalent avec une taille non négative.

\ **Note :** Dans un contexte booléen, un **Rect2i** évalue à ``false`` si les deux valeurs :ref:`position<class_Rect2i_property_position>` et :ref:`size<class_Rect2i_property_size>` sont nulles (équivalent à :ref:`Vector2i.ZERO<class_Vector2i_constant_ZERO>`). Sinon, il évalue toujours à ``true``.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur les mathématiques <../tutorials/math/index>`

- :doc:`Mathématiques des vecteurs <../tutorials/math/vector_math>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`end<class_Rect2i_property_end>`           | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`position<class_Rect2i_property_position>` | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`size<class_Rect2i_property_size>`         | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ )                                                                                                                      |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                    |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`abs<class_Rect2i_method_abs>`\ (\ ) |const|                                                                                                                                                   |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`encloses<class_Rect2i_method_encloses>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`expand<class_Rect2i_method_expand>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                       |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_area<class_Rect2i_method_get_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`get_center<class_Rect2i_method_get_center>`\ (\ ) |const|                                                                                                                                     |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow<class_Rect2i_method_grow>`\ (\ amount\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_individual<class_Rect2i_method_grow_individual>`\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_side<class_Rect2i_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_area<class_Rect2i_method_has_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_point<class_Rect2i_method_has_point>`\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`intersection<class_Rect2i_method_intersection>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`intersects<class_Rect2i_method_intersects>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                    |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`merge<class_Rect2i_method_merge>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Rect2i_operator_neq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Rect2i_operator_eq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ )  |
   +-------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Rect2i_property_end:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **end** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_end>`

Le point de fin. Il s'agit généralement du coin inférieur droit du rectangle, et est équivalent à ``position + taille``. Définir ce point affecte la taille :ref:`size<class_Rect2i_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_position:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **position** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_position>`

Le point d'origine. Il s'agit généralement du coin supérieur gauche du rectangle.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_size>`

La largeur et la hauteur du rectangle, à partir du point :ref:`position<class_Rect2i_property_position>`. Définir cette valeur affecte également le point :ref:`end<class_Rect2i_property_end>`.

\ **Note :** Il est recommandé de fixer la largeur et la hauteur à des valeurs non négatives, car la plupart des méthodes de Godot supposent que :ref:`position<class_Rect2i_property_position>` est le coin supérieur gauche, et :ref:`end<class_Rect2i_property_end>` le coin inférieur droit. Pour obtenir un rectangle équivalent avec une taille non négative, utilisez :ref:`abs()<class_Rect2i_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Rect2i_constructor_Rect2i:

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ ) :ref:`🔗<class_Rect2i_constructor_Rect2i>`

Constructs a **Rect2i** with its :ref:`position<class_Rect2i_property_position>` and :ref:`size<class_Rect2i_property_size>` set to :ref:`Vector2i.ZERO<class_Vector2i_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

Construit un **Rect2i** en tant que copie du **Rect2i** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

Constructs a **Rect2i** from a :ref:`Rect2<class_Rect2>`. The floating-point coordinates are truncated.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )

Constructs a **Rect2i** by ``position`` and ``size``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ )

Constructs a **Rect2i** by setting its :ref:`position<class_Rect2i_property_position>` to (``x``, ``y``), and its :ref:`size<class_Rect2i_property_size>` to (``width``, ``height``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Rect2i_method_abs:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_abs>`

Returns a **Rect2i** equivalent to this rectangle, with its width and height modified to be non-negative values, and with its :ref:`position<class_Rect2i_property_position>` being the top-left corner of the rectangle.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2i(25, 25, -100, -50)
    var absolute = rect.abs() # absolute is Rect2i(-75, -25, 100, 50)

 .. code-tab:: csharp

    var rect = new Rect2I(25, 25, -100, -50);
    var absolute = rect.Abs(); // absolute is Rect2I(-75, -25, 100, 50)



\ **Note:** It's recommended to use this method when :ref:`size<class_Rect2i_property_size>` is negative, as most other methods in Godot assume that the :ref:`position<class_Rect2i_property_position>` is the top-left corner, and the :ref:`end<class_Rect2i_property_end>` is the bottom-right corner.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_encloses>`

Returns ``true`` if this **Rect2i** completely encloses another one.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_expand:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **expand**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_expand>`

Returns a copy of this rectangle expanded to align the edges with the given ``to`` point, if necessary.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2i(0, 0, 5, 2)

    rect = rect.expand(Vector2i(10, 0)) # rect is Rect2i(0, 0, 10, 2)
    rect = rect.expand(Vector2i(-5, 5)) # rect is Rect2i(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2I(0, 0, 5, 2);

    rect = rect.Expand(new Vector2I(10, 0)); // rect is Rect2I(0, 0, 10, 2)
    rect = rect.Expand(new Vector2I(-5, 5)); // rect is Rect2I(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_area:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_area>`

Renvoie l'aire du rectangle. Ceci est équivalent à ``size.x * size.y``. Voir aussi :ref:`has_area()<class_Rect2i_method_has_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_center>`

Returns the center point of the rectangle. This is the same as ``position + (size / 2)``.

\ **Note:** If the :ref:`size<class_Rect2i_property_size>` is odd, the result will be rounded towards :ref:`position<class_Rect2i_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow**\ (\ amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow>`

Returns a copy of this rectangle extended on all sides by the given ``amount``. A negative ``amount`` shrinks the rectangle instead. See also :ref:`grow_individual()<class_Rect2i_method_grow_individual>` and :ref:`grow_side()<class_Rect2i_method_grow_side>`.


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2i(4, 4, 8, 8).grow(4) # a is Rect2i(0, 0, 16, 16)
    var b = Rect2i(0, 0, 8, 4).grow(2) # b is Rect2i(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = new Rect2I(4, 4, 8, 8).Grow(4); // a is Rect2I(0, 0, 16, 16)
    var b = new Rect2I(0, 0, 8, 4).Grow(2); // b is Rect2I(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_individual**\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_individual>`

Renvoie une copie de ce rectangle avec ses côtés haut, bas, gauche droite étendus par les montants respectifs ``left``, ``top``, ``right`` et ``bottom`` donnés. Les valeurs négatives réduisent les côtés à la place. Voir aussi :ref:`grow()<class_Rect2i_method_grow>` et :ref:`grow_side()<class_Rect2i_method_grow_side>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_side>`

Renvoie une copie de ce rectangle avec le côté ``side`` étendus par les le montant ``amount`` donné (voir les constantes :ref:`Side<enum_@GlobalScope_Side>`). Une valeur ``amount`` négative rétrécit le rectangle à la place. Voir aussi :ref:`grow()<class_Rect2i_method_grow>` et :ref:`grow_side()<class_Rect2i_method_grow_side>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_has_area>`

Renvoie ``true`` si ce rectangle a une largeur et une hauteur positives. Voir aussi :ref:`get_area()<class_Rect2i_method_get_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_has_point>`

Returns ``true`` if the rectangle contains the given ``point``. By convention, points on the right and bottom edges are **not** included.

\ **Note:** This method is not reliable for **Rect2i** with a *negative* :ref:`size<class_Rect2i_property_size>`. Use :ref:`abs()<class_Rect2i_method_abs>` first to get a valid rectangle.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **intersection**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersection>`

Returns the intersection between this rectangle and ``b``. If the rectangles do not intersect, returns an empty **Rect2i**.


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2i(0, 0, 5, 10)
    var b = Rect2i(2, 0, 8, 4)

    var c = a.intersection(b) # c is Rect2i(2, 0, 3, 4)

 .. code-tab:: csharp

    var a = new Rect2I(0, 0, 5, 10);
    var b = new Rect2I(2, 0, 8, 4);

    var c = rect1.Intersection(rect2); // c is Rect2I(2, 0, 3, 4)



\ **Note:** If you only need to know whether two rectangles are overlapping, use :ref:`intersects()<class_Rect2i_method_intersects>`, instead.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersects>`

Returns ``true`` if this rectangle overlaps with the ``b`` rectangle. The edges of both rectangles are excluded.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_merge:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **merge**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_merge>`

Returns a **Rect2i** that encloses both this rectangle and ``b`` around the edges. See also :ref:`encloses()<class_Rect2i_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Rect2i_operator_neq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_neq_Rect2i>`

Returns ``true`` if the :ref:`position<class_Rect2i_property_position>` or :ref:`size<class_Rect2i_property_size>` of both rectangles are not equal.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_operator_eq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_eq_Rect2i>`

Returns ``true`` if both :ref:`position<class_Rect2i_property_position>` and :ref:`size<class_Rect2i_property_size>` of the rectangles are equal, respectively.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
