.class public Lorg/catrobat/catroid/content/actions/ShowTextAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ShowTextAction.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private actor:Lorg/catrobat/catroid/stage/ShowTextActor;

.field private androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

.field private xPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private yPosition:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/catrobat/catroid/content/actions/ShowTextAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 13

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->xPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 56
    .local v3, "xPosition":I
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->yPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 58
    .local v4, "yPosition":I
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    if-eqz v0, :cond_2

    .line 59
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 60
    .local v0, "stageActors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    new-instance v1, Lorg/catrobat/catroid/stage/ShowTextActor;

    new-instance v6, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const-string v2, "dummyActor"

    invoke-direct {v6, v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 61
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v11

    iget-object v12, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lorg/catrobat/catroid/stage/ShowTextActor;-><init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;IIFLjava/lang/String;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    move-object v9, v1

    .line 63
    .local v9, "dummyActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 64
    .local v2, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    move-object v5, v2

    check-cast v5, Lorg/catrobat/catroid/stage/ShowTextActor;

    .line 66
    .local v5, "showTextActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    invoke-virtual {v5}, Lorg/catrobat/catroid/stage/ShowTextActor;->getVariableNameToCompare()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v7}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    invoke-virtual {v5}, Lorg/catrobat/catroid/stage/ShowTextActor;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v6

    iget-object v7, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/content/Sprite;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 71
    .end local v2    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v5    # "showTextActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    :cond_0
    goto :goto_0

    .line 73
    :cond_1
    new-instance v10, Lorg/catrobat/catroid/stage/ShowTextActor;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 74
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v7

    iget-object v8, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lorg/catrobat/catroid/stage/ShowTextActor;-><init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;IIFLjava/lang/String;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    iput-object v10, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->actor:Lorg/catrobat/catroid/stage/ShowTextActor;

    .line 75
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->actor:Lorg/catrobat/catroid/stage/ShowTextActor;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/stage/StageListener;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 78
    .end local v0    # "stageActors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .end local v9    # "dummyActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setVisible(Z)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v3    # "xPosition":I
    .end local v4    # "yPosition":I
    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    sget-object v1, Lorg/catrobat/catroid/content/actions/ShowTextAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterpretationException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    return-void
.end method

.method public setAndroidStringProvider(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V
    .locals 0
    .param p1, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 113
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 114
    return-void
.end method

.method public setPosition(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "xPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "yPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 100
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->xPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 101
    iput-object p2, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->yPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 102
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 105
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 106
    return-void
.end method

.method public setVariableToShow(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 109
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 110
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->xPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    .local v0, "xPosition":I
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->yPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 90
    .local v1, "yPosition":I
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->actor:Lorg/catrobat/catroid/stage/ShowTextActor;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->actor:Lorg/catrobat/catroid/stage/ShowTextActor;

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/stage/ShowTextActor;->setPositionX(I)V

    .line 92
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ShowTextAction;->actor:Lorg/catrobat/catroid/stage/ShowTextActor;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/stage/ShowTextActor;->setPositionY(I)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "xPosition":I
    .end local v1    # "yPosition":I
    :cond_0
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    sget-object v1, Lorg/catrobat/catroid/content/actions/ShowTextAction;->TAG:Ljava/lang/String;

    const-string v2, "InterpretationException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_0
    return-void
.end method
