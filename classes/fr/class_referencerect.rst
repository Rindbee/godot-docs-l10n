:github_url: hide

.. _class_ReferenceRect:

ReferenceRect
=============

**Hérite de :** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une boîte rectangulaire pour la conception des interfaces utilisateur.

.. rst-class:: classref-introduction-group

Description
-----------

Une boîte rectangulaire qui n'affiche qu'une bordure colorée autour de son rectangle (voir :ref:`Control.get_rect()<class_Control_method_get_rect>`). Elle peut être utilisée pour visualiser l'étendue d'un nœud :ref:`Control<class_Control>`, à des fins de test.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`border_color<class_ReferenceRect_property_border_color>` | ``Color(1, 0, 0, 1)`` |
   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`border_width<class_ReferenceRect_property_border_width>` | ``1.0``               |
   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`editor_only<class_ReferenceRect_property_editor_only>`   | ``true``              |
   +---------------------------+----------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ReferenceRect_property_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **border_color** = ``Color(1, 0, 0, 1)`` :ref:`🔗<class_ReferenceRect_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

Définit la couleur de la bordure du **ReferenceRect**.

.. rst-class:: classref-item-separator

----

.. _class_ReferenceRect_property_border_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_width** = ``1.0`` :ref:`🔗<class_ReferenceRect_property_border_width>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_width**\ (\ )

Définit la largeur de la bordure du **ReferenceRect**. La bordure va à la fois vers l'intérieur et vers l'extérieur par rapport aux limites du rectangle.

.. rst-class:: classref-item-separator

----

.. _class_ReferenceRect_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``true`` :ref:`🔗<class_ReferenceRect_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_editor_only**\ (\ )

Si ``true``, le **ReferenceRect** ne sera visible que dans l'éditeur. Sinon, le **ReferenceRect** sera aussi visible durant l'exécution du projet.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
