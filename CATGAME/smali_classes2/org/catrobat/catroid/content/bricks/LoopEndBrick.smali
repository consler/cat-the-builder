.class public Lorg/catrobat/catroid/content/bricks/LoopEndBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "LoopEndBrick.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 39
    return-void
.end method

.method public getBrickID()Ljava/util/UUID;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/LoopEndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getBrickID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method
