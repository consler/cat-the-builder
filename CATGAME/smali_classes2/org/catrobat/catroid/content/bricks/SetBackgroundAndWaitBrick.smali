.class public Lorg/catrobat/catroid/content/bricks/SetBackgroundAndWaitBrick;
.super Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;
.source "SetBackgroundAndWaitBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 50
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundAndWaitBrick;->look:Lorg/catrobat/catroid/common/LookData;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createSetBackgroundAction(Lorg/catrobat/catroid/common/LookData;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 51
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a01f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120126

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 45
    return-object v0
.end method
