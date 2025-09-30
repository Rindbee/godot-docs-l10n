:github_url: hide

.. _class_ConeTwistJoint3D:

ConeTwistJoint3D
================

**Hérite de :** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un liaison physique qui connecte deux corps physiques 3D d'une manière qui simule une liaison sphérique.

.. rst-class:: classref-introduction-group

Description
-----------

Un liaison physique qui connecte deux corps physiques 3D d'une manière qui simule une liaison sphérique. L'axe de torsion est initialisé comme l'axe X du **ConeTwistJoint3D**. Une fois que les corps physiques se balancent, l'axe de torsion est calculé comme le milieu des axes X de la liaison dans l'espace local des deux corps physiques. Utile pour des membres comme les épaules et les hanches, les lampes accrochées au plafond, etc.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`bias<class_ConeTwistJoint3D_property_bias>`             | ``0.3``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`relaxation<class_ConeTwistJoint3D_property_relaxation>` | ``1.0``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`softness<class_ConeTwistJoint3D_property_softness>`     | ``0.8``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`swing_span<class_ConeTwistJoint3D_property_swing_span>` | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`twist_span<class_ConeTwistJoint3D_property_twist_span>` | ``3.1415927`` |
   +---------------------------+---------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_ConeTwistJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_ConeTwistJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ConeTwistJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_ConeTwistJoint3D_Param>`

.. _class_ConeTwistJoint3D_constant_PARAM_SWING_SPAN:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_SWING_SPAN** = ``0``

Swing is rotation from side to side, around the axis perpendicular to the twist axis.

The swing span defines, how much rotation will not get corrected along the swing axis.

Could be defined as looseness in the **ConeTwistJoint3D**.

If below 0.05, this behavior is locked.

.. _class_ConeTwistJoint3D_constant_PARAM_TWIST_SPAN:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_TWIST_SPAN** = ``1``

La torsion est la rotation autour de l'axe de torsion, cette valeur définit jusqu’à quel point cette liaison peut se tordre.

La torsion est verrouillée si elle est inférieure à 0,05.

.. _class_ConeTwistJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_BIAS** = ``2``

La vitesse à laquelle l'oscillation ou la torsion aura lieu.

Plus c'est haut, plus c'est rapide.

.. _class_ConeTwistJoint3D_constant_PARAM_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_SOFTNESS** = ``3``

La facilité avec laquelle la liaison commence tourner. S'il est trop bas, il faut plus de force pour commencer faire tourner la liaison.

.. _class_ConeTwistJoint3D_constant_PARAM_RELAXATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_RELAXATION** = ``4``

Définit à quelle vitesse la différence d'oscillation et de torsion-vitesse des deux côtés est synchronisée.

.. _class_ConeTwistJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_MAX** = ``5``

Représente la taille de l'énumération :ref:`Param<enum_ConeTwistJoint3D_Param>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ConeTwistJoint3D_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.3`` :ref:`🔗<class_ConeTwistJoint3D_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

La vitesse à laquelle l'oscillation ou la torsion aura lieu.

Plus c'est haut, plus c'est rapide.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **relaxation** = ``1.0`` :ref:`🔗<class_ConeTwistJoint3D_property_relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

Définit à quelle vitesse la différence d'oscillation et de torsion-vitesse des deux côtés est synchronisée.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **softness** = ``0.8`` :ref:`🔗<class_ConeTwistJoint3D_property_softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

La facilité avec laquelle la liaison commence tourner. S'il est trop bas, il faut plus de force pour commencer faire tourner la liaison.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_swing_span:

.. rst-class:: classref-property

:ref:`float<class_float>` **swing_span** = ``0.7853982`` :ref:`🔗<class_ConeTwistJoint3D_property_swing_span>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

Swing is rotation from side to side, around the axis perpendicular to the twist axis.

The swing span defines, how much rotation will not get corrected along the swing axis.

Could be defined as looseness in the **ConeTwistJoint3D**.

If below 0.05, this behavior is locked.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_twist_span:

.. rst-class:: classref-property

:ref:`float<class_float>` **twist_span** = ``3.1415927`` :ref:`🔗<class_ConeTwistJoint3D_property_twist_span>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

La torsion est la rotation autour de l'axe de torsion, cette valeur définit jusqu’à quel point cette liaison peut se tordre.

La torsion est verrouillée si elle est inférieure à 0,05.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ConeTwistJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const| :ref:`🔗<class_ConeTwistJoint3D_method_get_param>`

Renvoie la valeur du paramètre spécifié.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConeTwistJoint3D_method_set_param>`

Définit la valeur du paramètre spécifié.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
