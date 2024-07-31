.class public Lorg/catrobat/catroid/content/bricks/JumpingSumoTakingPictureBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "JumpingSumoTakingPictureBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 43
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 38
    const v0, 0x7f0d0095

    return v0
.end method
