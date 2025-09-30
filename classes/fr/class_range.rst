:github_url: hide

.. _class_Range:

Range
=====

**Hérite de :** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`EditorSpinSlider<class_EditorSpinSlider>`, :ref:`ProgressBar<class_ProgressBar>`, :ref:`ScrollBar<class_ScrollBar>`, :ref:`Slider<class_Slider>`, :ref:`SpinBox<class_SpinBox>`, :ref:`TextureProgressBar<class_TextureProgressBar>`

Classe de base abstraite pour les contrôles qui représentent un nombre dans un intervalle.

.. rst-class:: classref-introduction-group

Description
-----------

Range est une classe de base abstraite pour les contrôles qui représentent un nombre dans un intervalle, en utilisant un pas :ref:`step<class_Range_property_step>` et une taille de :ref:`page<class_Range_property_page>` configurés. Voir par exemple :ref:`ScrollBar<class_ScrollBar>` et :ref:`Slider<class_Slider>` pour des exemples de nœuds de haut niveau utilisant Range.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`allow_greater<class_Range_property_allow_greater>` | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`allow_lesser<class_Range_property_allow_lesser>`   | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`exp_edit<class_Range_property_exp_edit>`           | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`max_value<class_Range_property_max_value>`         | ``100.0``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`min_value<class_Range_property_min_value>`         | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`page<class_Range_property_page>`                   | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`ratio<class_Range_property_ratio>`                 |                                                                              |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`rounded<class_Range_property_rounded>`             | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical                                      | ``0`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`step<class_Range_property_step>`                   | ``0.01``                                                                     |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`value<class_Range_property_value>`                 | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_value_changed<class_Range_private_method__value_changed>`\ (\ new_value\: :ref:`float<class_float>`\ ) |virtual| |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_value_no_signal<class_Range_method_set_value_no_signal>`\ (\ value\: :ref:`float<class_float>`\ )             |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`share<class_Range_method_share>`\ (\ with\: :ref:`Node<class_Node>`\ )                                            |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`unshare<class_Range_method_unshare>`\ (\ )                                                                        |
   +--------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Range_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_Range_signal_changed>`

Émis quand :ref:`min_value<class_Range_property_min_value>`, :ref:`max_value<class_Range_property_max_value>`, :ref:`page<class_Range_property_page>`, ou :ref:`step<class_Range_property_step>` change.

.. rst-class:: classref-item-separator

----

.. _class_Range_signal_value_changed:

.. rst-class:: classref-signal

**value_changed**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Range_signal_value_changed>`

Émis quand :ref:`value<class_Range_property_value>` change. Lorsqu'utilisé pour un :ref:`Slider<class_Slider>`, cela est appelle en continu lors du glissage (voire à chaque trame). Si vous effectuez une opération coûteuse dans une fonction connectée à :ref:`value_changed<class_Range_signal_value_changed>`, essayez d'utiliser un :ref:`Timer<class_Timer>` de *debouncing* (litt. "anti-rebond") afin d'appeler la fonction moins souvent.

\ **Note :** Contrairement aux signaux tels que :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>`, :ref:`value_changed<class_Range_signal_value_changed>` est également émis lorsque ``value`` est défini directement par code.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Range_property_allow_greater:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_greater** = ``false`` :ref:`🔗<class_Range_property_allow_greater>`

.. rst-class:: classref-property-setget

- |void| **set_allow_greater**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_greater_allowed**\ (\ )

Si ``true``, :ref:`value<class_Range_property_value>` peut être supérieure à :ref:`max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_allow_lesser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_lesser** = ``false`` :ref:`🔗<class_Range_property_allow_lesser>`

.. rst-class:: classref-property-setget

- |void| **set_allow_lesser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lesser_allowed**\ (\ )

Si ``true``, :ref:`value<class_Range_property_value>` peut être inférieure à :ref:`min_value<class_Range_property_min_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_exp_edit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exp_edit** = ``false`` :ref:`🔗<class_Range_property_exp_edit>`

.. rst-class:: classref-property-setget

- |void| **set_exp_ratio**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ratio_exp**\ (\ )

Si ``true``, et que :ref:`min_value<class_Range_property_min_value>` est supérieur ou égal à ``0``, :ref:`value<class_Range_property_value>` sera représenté de façon exponentielle plutôt que linéaire.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_max_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_value** = ``100.0`` :ref:`🔗<class_Range_property_max_value>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max**\ (\ )

Valeur maximale. L'intervalle est borné si la valeur :ref:`value<class_Range_property_value>` est supérieure à :ref:`max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_min_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_value** = ``0.0`` :ref:`🔗<class_Range_property_min_value>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min**\ (\ )

Valeur minimale. L'intervalle est borné si la valeur :ref:`value<class_Range_property_value>` est inférieure à :ref:`min_value<class_Range_property_min_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_page:

.. rst-class:: classref-property

:ref:`float<class_float>` **page** = ``0.0`` :ref:`🔗<class_Range_property_page>`

.. rst-class:: classref-property-setget

- |void| **set_page**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_page**\ (\ )

La taille de la page. Utilisé principalement pour :ref:`ScrollBar<class_ScrollBar>`. La longueur de l’ascenseur d'une :ref:`ScrollBar<class_ScrollBar>` est la taille de la :ref:`ScrollBar<class_ScrollBar>` multipliée par :ref:`page<class_Range_property_page>` divisé par la différence entre :ref:`min_value<class_Range_property_min_value>` et :ref:`max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** :ref:`🔗<class_Range_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_as_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_as_ratio**\ (\ )

La valeur définit entre 0 et 1.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_rounded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rounded** = ``false`` :ref:`🔗<class_Range_property_rounded>`

.. rst-class:: classref-property-setget

- |void| **set_use_rounded_values**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_rounded_values**\ (\ )

Si ``true``, :ref:`value<class_Range_property_value>` sera toujours arrondi au nombre entier le plus proche.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** = ``0.01`` :ref:`🔗<class_Range_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_step**\ (\ )

Si supérieure à 0, :ref:`value<class_Range_property_value>` sera toujours arrondie à un multiple de la valeur de cette propriété, au dessus de :ref:`min_value<class_Range_property_min_value>`. Par example, si :ref:`min_value<class_Range_property_min_value>` vaut ``0.1`` et le pas :ref:`step<class_Range_property_step>` est de 0.2, alors :ref:`value<class_Range_property_value>` est limité à ``0.1``, ``0.3``, ``0.5``, etc... Si :ref:`rounded<class_Range_property_rounded>` vaut également ``true``, :ref:`value<class_Range_property_value>` sera d'abord arrondie à un multiple de la valeur de cette propriété, puis arrondie à l'entier le plus proche.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **value** = ``0.0`` :ref:`🔗<class_Range_property_value>`

.. rst-class:: classref-property-setget

- |void| **set_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_value**\ (\ )

La valeur actuelle de l'intervalle. Changer cette propriété (même via le code) déclenchera le signal :ref:`value_changed<class_Range_signal_value_changed>`. Utilisez :ref:`set_value_no_signal()<class_Range_method_set_value_no_signal>` si vous voulez éviter cela.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Range_private_method__value_changed:

.. rst-class:: classref-method

|void| **_value_changed**\ (\ new_value\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_Range_private_method__value_changed>`

Appelée lorsque la valeur du **Range** est modifiée (suivant les mêmes conditions que :ref:`value_changed<class_Range_signal_value_changed>`).

.. rst-class:: classref-item-separator

----

.. _class_Range_method_set_value_no_signal:

.. rst-class:: classref-method

|void| **set_value_no_signal**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Range_method_set_value_no_signal>`

Définit la valeur actuelle du **Range** à la valeur spécifiée ``value``, sans émettre le signal :ref:`value_changed<class_Range_signal_value_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_method_share:

.. rst-class:: classref-method

|void| **share**\ (\ with\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Range_method_share>`

Lie deux **Range**\ s ensemble avec aussi tout Range groupé précédemment avec l'un d'entre eux. Lorsque l'une des variables membres de l'intervalle change, elle partagera la nouvelle valeur avec tous les autres Ranges de son groupe.

.. rst-class:: classref-item-separator

----

.. _class_Range_method_unshare:

.. rst-class:: classref-method

|void| **unshare**\ (\ ) :ref:`🔗<class_Range_method_unshare>`

Arrête le **Range** de partager ses variables membres avec les autres.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
