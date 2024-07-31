.class public Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;
.super Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;
.source "EmptyEventBrick.java"


# instance fields
.field private script:Lorg/catrobat/catroid/content/EmptyScript;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    new-instance v0, Lorg/catrobat/catroid/content/EmptyScript;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/EmptyScript;-><init>()V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;-><init>(Lorg/catrobat/catroid/content/EmptyScript;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/EmptyScript;)V
    .locals 0
    .param p1, "script"    # Lorg/catrobat/catroid/content/EmptyScript;

    .line 50
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;-><init>()V

    .line 51
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/content/EmptyScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 52
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->script:Lorg/catrobat/catroid/content/EmptyScript;

    .line 53
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 88
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 57
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;

    .line 58
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->script:Lorg/catrobat/catroid/content/EmptyScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/EmptyScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/EmptyScript;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->script:Lorg/catrobat/catroid/content/EmptyScript;

    .line 59
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/EmptyScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 60
    return-object v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->script:Lorg/catrobat/catroid/content/EmptyScript;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->getViewResource()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->view:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->view:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->view:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "brickViewContainer":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 71
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->colorAsCommentedOut(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 83
    const v0, 0x7f0d0073

    return v0
.end method
