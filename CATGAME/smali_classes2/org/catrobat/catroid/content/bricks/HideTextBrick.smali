.class public Lorg/catrobat/catroid/content/bricks/HideTextBrick;
.super Lorg/catrobat/catroid/content/bricks/UserVariableBrick;
.source "HideTextBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserVariableBrick;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 4
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/HideTextBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/HideTextBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 54
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1205bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NoVariableSet"

    invoke-direct {v0, v2, v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/HideTextBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/HideTextBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setDummy(Z)V

    .line 58
    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/HideTextBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    new-instance v2, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 59
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0, p1, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createHideVariableAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/formulaeditor/UserVariable;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 60
    return-void
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 47
    const v0, 0x7f0a03cf

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 42
    const v0, 0x7f0d0085

    return v0
.end method
