.class public Lorg/catrobat/catroid/content/bricks/WhenBrick;
.super Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;
.source "WhenBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private script:Lorg/catrobat/catroid/content/WhenScript;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/catrobat/catroid/content/WhenScript;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/WhenScript;-><init>()V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/WhenBrick;-><init>(Lorg/catrobat/catroid/content/WhenScript;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/WhenScript;)V
    .locals 1
    .param p1, "script"    # Lorg/catrobat/catroid/content/WhenScript;

    .line 43
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;-><init>()V

    .line 44
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/content/WhenScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 45
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/WhenScript;->isCommentedOut()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBrick;->commentedOut:Z

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/WhenBrick;->script:Lorg/catrobat/catroid/content/WhenScript;

    .line 47
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 69
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 51
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/WhenBrick;

    .line 52
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/WhenBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenBrick;->script:Lorg/catrobat/catroid/content/WhenScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/WhenScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/WhenScript;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/WhenBrick;->script:Lorg/catrobat/catroid/content/WhenScript;

    .line 53
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/WhenScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 54
    return-object v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBrick;->script:Lorg/catrobat/catroid/content/WhenScript;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 64
    const v0, 0x7f0d0104

    return v0
.end method
