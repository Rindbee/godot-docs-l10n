:github_url: hide

.. _class_SkeletonProfileHumanoid:

SkeletonProfileHumanoid
=======================

**Hereda:** :ref:`SkeletonProfile<class_SkeletonProfile>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A humanoid :ref:`SkeletonProfile<class_SkeletonProfile>` preset.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A :ref:`SkeletonProfile<class_SkeletonProfile>` as a preset that is optimized for the human form. This exists for standardization, so all parameters are read-only.

A humanoid skeleton profile contains 54 bones divided in 4 groups: ``"Body"``, ``"Face"``, ``"LeftHand"``, and ``"RightHand"``. It is structured as follows:

.. code:: text

    Root
    └─ Hips
        ├─ LeftUpperLeg
        │  └─ LeftLowerLeg
        │     └─ LeftFoot
        │        └─ LeftToes
        ├─ RightUpperLeg
        │  └─ RightLowerLeg
        │     └─ RightFoot
        │        └─ RightToes
        └─ Spine
            └─ Chest
                └─ UpperChest
                    ├─ Neck
                    │   └─ Head
                    │       ├─ Jaw
                    │       ├─ LeftEye
                    │       └─ RightEye
                    ├─ LeftShoulder
                    │  └─ LeftUpperArm
                    │     └─ LeftLowerArm
                    │        └─ LeftHand
                    │           ├─ LeftThumbMetacarpal
                    │           │  └─ LeftThumbProximal
                    │           │    └─ LeftThumbDistal
                    │           ├─ LeftIndexProximal
                    │           │  └─ LeftIndexIntermediate
                    │           │    └─ LeftIndexDistal
                    │           ├─ LeftMiddleProximal
                    │           │  └─ LeftMiddleIntermediate
                    │           │    └─ LeftMiddleDistal
                    │           ├─ LeftRingProximal
                    │           │  └─ LeftRingIntermediate
                    │           │    └─ LeftRingDistal
                    │           └─ LeftLittleProximal
                    │              └─ LeftLittleIntermediate
                    │                └─ LeftLittleDistal
                    └─ RightShoulder
                       └─ RightUpperArm
                          └─ RightLowerArm
                             └─ RightHand
                                ├─ RightThumbMetacarpal
                                │  └─ RightThumbProximal
                                │     └─ RightThumbDistal
                                ├─ RightIndexProximal
                                │  └─ RightIndexIntermediate
                                │     └─ RightIndexDistal
                                ├─ RightMiddleProximal
                                │  └─ RightMiddleIntermediate
                                │     └─ RightMiddleDistal
                                ├─ RightRingProximal
                                │  └─ RightRingIntermediate
                                │     └─ RightRingDistal
                                └─ RightLittleProximal
                                   └─ RightLittleIntermediate
                                     └─ RightLittleDistal

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Reorientación de esqueletos 3D <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | bone_size       | ``56`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_bone_size>`)            |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | group_size      | ``4`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_group_size>`)            |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | root_bone       | ``&"Root"`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_root_bone>`)       |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | scale_base_bone | ``&"Hips"`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_scale_base_bone>`) |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
