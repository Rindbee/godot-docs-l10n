:github_url: hide

.. _class_RID:

RID
===

Une handle pour un identifiant unique de :ref:`Resource<class_Resource>`.

.. rst-class:: classref-introduction-group

Description
-----------

Le type :ref:`Variant<class_Variant>` RID est utilisé pour accéder à une ressource de bas-niveau par son ID unique. Les RID sont opaques, ce qui signifie qu'ils n'accordent pas accès à la ressource par eux-mêmes. Ils sont utilisés par les classes de serveur de bas-niveau, comme :ref:`DisplayServer<class_DisplayServer>`, :ref:`RenderingServer<class_RenderingServer>`, :ref:`TextServer<class_TextServer>`, etc.

Une ressource de bas niveau peut correspondre à une :ref:`Resource<class_Resource>` de haut-niveau, comme :ref:`Texture<class_Texture>` ou :ref:`Mesh<class_Mesh>`.

\ **Note : ** Les RID ne sont utiles que pendant la session courante. Ils ne correspondront pas à une ressource similaire si envoyés sur un réseau ou chargés à partir d'un fichier à une date ultérieure.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`RID<class_RID_constructor_RID>`\ (\ )                               |
   +-----------------------+---------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`RID<class_RID_constructor_RID>`\ (\ from\: :ref:`RID<class_RID>`\ ) |
   +-----------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_id<class_RID_method_get_id>`\ (\ ) |const|     |
   +-------------------------+----------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_valid<class_RID_method_is_valid>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_RID_operator_neq_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )  |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<<class_RID_operator_lt_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )   |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<=<class_RID_operator_lte_RID>`\ (\ right\: :ref:`RID<class_RID>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_RID_operator_eq_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )   |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ><class_RID_operator_gt_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )    |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator >=<class_RID_operator_gte_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )  |
   +-------------------------+--------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_RID_constructor_RID:

.. rst-class:: classref-constructor

:ref:`RID<class_RID>` **RID**\ (\ ) :ref:`🔗<class_RID_constructor_RID>`

Construit un **RID** vide avec l'identifiant invalide ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`RID<class_RID>` **RID**\ (\ from\: :ref:`RID<class_RID>`\ )

Constructs an **RID** as a copy of the given **RID**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RID_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_RID_method_get_id>`

Renvoie l'ID de la ressource de bas-niveau référencée.

.. rst-class:: classref-item-separator

----

.. _class_RID_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RID_method_is_valid>`

Renvoie ``true`` si le **RID** n'est pas ``0``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_RID_operator_neq_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_neq_RID>`

Renvoie ``true`` si les **RID**\ s ne sont pas égaux.

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_lt_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_lt_RID>`

Renvoie ``true`` si l'ID du **RID** est inférieur à l'ID de ``right``.

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_lte_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_lte_RID>`

Renvoie ``true`` si l'ID du **RID** est inférieur ou égal à l'ID de ``right``.

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_eq_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_eq_RID>`

Renvoie ``true`` si les deux **RID** sont égaux, ce qui signifie qu'ils réfèrent tous deux à la même ressource de bas-niveau.

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_gt_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_gt_RID>`

Renvoie ``true`` si l'ID du **RID** est supérieur à l'ID de ``right``.

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_gte_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_gte_RID>`

Renvoie ``true`` si l'ID du **RID** est supérieur ou égal à l'ID de ``right``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
