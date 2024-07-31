.class public Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;
.super Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;
.source "WhenTouchDownBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private script:Lorg/catrobat/catroid/content/WhenTouchDownScript;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/catrobat/catroid/content/WhenTouchDownScript;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/WhenTouchDownScript;-><init>()V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;-><init>(Lorg/catrobat/catroid/content/WhenTouchDownScript;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/WhenTouchDownScript;)V
    .locals 1
    .param p1, "script"    # Lorg/catrobat/catroid/content/WhenTouchDownScript;

    .line 41
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;-><init>()V

    .line 42
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/content/WhenTouchDownScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 43
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/WhenTouchDownScript;->isCommentedOut()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;->commentedOut:Z

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;->script:Lorg/catrobat/catroid/content/WhenTouchDownScript;

    .line 45
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 67
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;

    .line 55
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;->script:Lorg/catrobat/catroid/content/WhenTouchDownScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/WhenTouchDownScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/WhenTouchDownScript;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;->script:Lorg/catrobat/catroid/content/WhenTouchDownScript;

    .line 56
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/WhenTouchDownScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 57
    return-object v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;->script:Lorg/catrobat/catroid/content/WhenTouchDownScript;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 62
    const v0, 0x7f0d00cd

    return v0
.end method
