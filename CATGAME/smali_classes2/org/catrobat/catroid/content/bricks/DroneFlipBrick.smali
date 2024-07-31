.class public Lorg/catrobat/catroid/content/bricks/DroneFlipBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "DroneFlipBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 40
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 35
    const v0, 0x7f0d0066

    return v0
.end method
