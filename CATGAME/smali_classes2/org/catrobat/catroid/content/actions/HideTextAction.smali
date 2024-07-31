.class public Lorg/catrobat/catroid/content/actions/HideTextAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "HideTextAction.java"


# instance fields
.field private androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;

.field private variableToHide:Lorg/catrobat/catroid/formulaeditor/UserVariable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 10

    .line 44
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 46
    .local v0, "stageActors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    new-instance v9, Lorg/catrobat/catroid/stage/ShowTextActor;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const-string v1, "dummyActor"

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/catrobat/catroid/content/actions/HideTextAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v8, p0, Lorg/catrobat/catroid/content/actions/HideTextAction;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/catrobat/catroid/stage/ShowTextActor;-><init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;IIFLjava/lang/String;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    .line 48
    .local v1, "dummyActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 49
    .local v3, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/stage/ShowTextActor;

    .line 51
    .local v4, "showTextActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    invoke-virtual {v4}, Lorg/catrobat/catroid/stage/ShowTextActor;->getVariableNameToCompare()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/HideTextAction;->variableToHide:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v4}, Lorg/catrobat/catroid/stage/ShowTextActor;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/HideTextAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/content/Sprite;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 56
    .end local v3    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v4    # "showTextActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    :cond_0
    goto :goto_0

    .line 58
    .end local v0    # "stageActors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .end local v1    # "dummyActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/HideTextAction;->variableToHide:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setVisible(Z)V

    .line 59
    return-void
.end method

.method public setAndroidStringProvider(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V
    .locals 0
    .param p1, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 74
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/HideTextAction;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 75
    return-void
.end method

.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 70
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/HideTextAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 71
    return-void
.end method

.method public setVariableToHide(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 66
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/HideTextAction;->variableToHide:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 67
    return-void
.end method

.method protected update(F)V
    .locals 0
    .param p1, "percent"    # F

    .line 63
    return-void
.end method
