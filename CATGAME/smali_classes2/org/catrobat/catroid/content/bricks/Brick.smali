.class public interface abstract Lorg/catrobat/catroid/content/bricks/Brick;
.super Ljava/lang/Object;
.source "Brick.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;,
        Lorg/catrobat/catroid/content/bricks/Brick$Resources;,
        Lorg/catrobat/catroid/content/bricks/Brick$BrickData;,
        Lorg/catrobat/catroid/content/bricks/Brick$BrickField;,
        Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_LEGO_EV3:I = 0x14

.field public static final BLUETOOTH_LEGO_NXT:I = 0x2

.field public static final BLUETOOTH_PHIRO:I = 0xa

.field public static final BLUETOOTH_SENSORS_ARDUINO:I = 0x6

.field public static final CAMERA_BACK:I = 0xb

.field public static final CAMERA_FLASH:I = 0x8

.field public static final CAMERA_FRONT:I = 0xc

.field public static final CAST_REQUIRED:I = 0x16

.field public static final COLLISION:I = 0x13

.field public static final FACE_DETECTION:I = 0x4

.field public static final MICROPHONE:I = 0x18

.field public static final NETWORK_CONNECTION:I = 0x15

.field public static final NFC_ADAPTER:I = 0x10

.field public static final OBJECT_DETECTION:I = 0x1c

.field public static final PHYSICS:I = 0x3

.field public static final POSE_DETECTION:I = 0x1b

.field public static final SENSOR_ACCELERATION:I = 0xd

.field public static final SENSOR_COMPASS:I = 0xf

.field public static final SENSOR_GPS:I = 0x12

.field public static final SENSOR_INCLINATION:I = 0xe

.field public static final SOCKET_RASPI:I = 0x7

.field public static final SPEECH_RECOGNITION:I = 0x17

.field public static final STORAGE_READ:I = 0x19

.field public static final STORAGE_WRITE:I = 0x1a

.field public static final TEXT_DETECTION:I = 0x5

.field public static final TEXT_TO_SPEECH:I = 0x1

.field public static final VIBRATION:I = 0x9

.field public static final VIDEO:I = 0x11


# virtual methods
.method public abstract addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
.end method

.method public abstract addBrickInNestedBrick(Ljava/util/UUID;ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "I",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
.end method

.method public abstract addToFlatList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract consistsOfMultipleParts()Z
.end method

.method public abstract disableSpinners()V
.end method

.method public abstract findBricksInNestedBricks(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllParts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBrickID()Ljava/util/UUID;
.end method

.method public abstract getCheckBox()Landroid/widget/CheckBox;
.end method

.method public abstract getDragAndDropTargetList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHelpUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getParent()Lorg/catrobat/catroid/content/bricks/Brick;
.end method

.method public abstract getPositionInDragAndDropTargetList()I
.end method

.method public abstract getPositionInScript()I
.end method

.method public abstract getPrototypeView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract getScript()Lorg/catrobat/catroid/content/Script;
.end method

.method public abstract getView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract hasHelpPage()Z
.end method

.method public abstract isCommentedOut()Z
.end method

.method public abstract removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z
.end method

.method public abstract setCommentedOut(Z)V
.end method

.method public abstract setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V
.end method
