:github_url: hide

.. _class_OpenXRFutureResult:

OpenXRFutureResult
==================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Objet de résultat suivant le résultat asynchrone d'un objet OpenXR Future.

.. rst-class:: classref-introduction-group

Description
-----------

Objet de résultat suivant le résultat asynchrone d'un objet OpenXR Future, vous pouvez utiliser cet objet pour suivre le statut du résultat.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`cancel_future<class_OpenXRFutureResult_method_cancel_future>`\ (\ )                                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_future<class_OpenXRFutureResult_method_get_future>`\ (\ ) |const|                                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                             | :ref:`get_result_value<class_OpenXRFutureResult_method_get_result_value>`\ (\ ) |const|                                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` | :ref:`get_status<class_OpenXRFutureResult_method_get_status>`\ (\ ) |const|                                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_result_value<class_OpenXRFutureResult_method_set_result_value>`\ (\ result_value\: :ref:`Variant<class_Variant>`\ ) |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_OpenXRFutureResult_signal_completed:

.. rst-class:: classref-signal

**completed**\ (\ result\: :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`\ ) :ref:`🔗<class_OpenXRFutureResult_signal_completed>`

Émis lorsque la fonction asynchrone est terminée ou a été annulée.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_OpenXRFutureResult_ResultStatus:

.. rst-class:: classref-enumeration

enum **ResultStatus**: :ref:`🔗<enum_OpenXRFutureResult_ResultStatus>`

.. _class_OpenXRFutureResult_constant_RESULT_RUNNING:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_RUNNING** = ``0``

La fonction asynchrone est en cours d'exécution.

.. _class_OpenXRFutureResult_constant_RESULT_FINISHED:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_FINISHED** = ``1``

La fonction asynchrone a fini.

.. _class_OpenXRFutureResult_constant_RESULT_CANCELLED:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_CANCELLED** = ``2``

La fonction asynchrone a été annulée.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRFutureResult_method_cancel_future:

.. rst-class:: classref-method

|void| **cancel_future**\ (\ ) :ref:`🔗<class_OpenXRFutureResult_method_cancel_future>`

Annule ce Future, cela interrompra et arrêtera la fonction asynchrone.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_future:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_future**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_future>`

Renvoie la valeur ``XrFutureEXT`` à laquelle ce résultat est lié.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_result_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_result_value**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_result_value>`

Renvoie la valeur de résultat de notre fonction asynchrone (si définie par l'extension). Le type de cette valeur de résultat dépend de la fonction appelée. Consultez la documentation de la fonction pertinente.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_status:

.. rst-class:: classref-method

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **get_status**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_status>`

Renvoie le statut de ce résultat.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_set_result_value:

.. rst-class:: classref-method

|void| **set_result_value**\ (\ result_value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OpenXRFutureResult_method_set_result_value>`

Stocke la valeur de résultat que nous exposons à l'utilisateur.

\ **Note :** Cette méthode ne devrait être appelée que par une extension OpenXR qui implémente une fonction asynchrone.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
