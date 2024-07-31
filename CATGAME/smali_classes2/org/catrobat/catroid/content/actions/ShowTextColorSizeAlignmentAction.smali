.class public Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ShowTextColorSizeAlignmentAction.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private actor:Lorg/catrobat/catroid/stage/ShowTextActor;

.field private alignment:I

.field androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

.field private color:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private relativeTextSize:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

.field private xPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private yPosition:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->TAG:Ljava/lang/String;

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
    .locals 21

    move-object/from16 v1, p0

    .line 57
    :try_start_0
    iget-object v0, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->xPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 58
    .local v4, "xPosition":I
    iget-object v0, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->yPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 59
    .local v5, "yPosition":I
    iget-object v0, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->relativeTextSize:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    .line 60
    .local v0, "relativeTextSize":F
    iget-object v2, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->color:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v16

    .line 61
    .local v16, "color":Ljava/lang/String;
    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    if-eqz v2, :cond_2

    .line 62
    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v2}, Lorg/catrobat/catroid/stage/StageListener;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    move-object/from16 v20, v2

    .line 63
    .local v20, "stageActors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    new-instance v2, Lorg/catrobat/catroid/stage/ShowTextActor;

    new-instance v12, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const-string v3, "dummyActor"

    invoke-direct {v12, v3}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v3, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 64
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v17

    iget v3, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->alignment:I

    iget-object v6, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    move-object v11, v2

    move v15, v0

    move/from16 v18, v3

    move-object/from16 v19, v6

    invoke-direct/range {v11 .. v19}, Lorg/catrobat/catroid/stage/ShowTextActor;-><init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;IIFLjava/lang/String;Lorg/catrobat/catroid/content/Sprite;ILorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    move-object v11, v2

    .line 65
    .local v11, "dummyActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 66
    .local v3, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    move-object v6, v3

    check-cast v6, Lorg/catrobat/catroid/stage/ShowTextActor;

    .line 68
    .local v6, "showTextActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    invoke-virtual {v6}, Lorg/catrobat/catroid/stage/ShowTextActor;->getVariableNameToCompare()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v8}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 69
    invoke-virtual {v6}, Lorg/catrobat/catroid/stage/ShowTextActor;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v7

    iget-object v8, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/content/Sprite;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 73
    .end local v3    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v6    # "showTextActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    :cond_0
    goto :goto_0

    .line 74
    :cond_1
    new-instance v12, Lorg/catrobat/catroid/stage/ShowTextActor;

    iget-object v3, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    iget-object v2, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 75
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v8

    iget v9, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->alignment:I

    iget-object v10, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    move-object v2, v12

    move v6, v0

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/catroid/stage/ShowTextActor;-><init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;IIFLjava/lang/String;Lorg/catrobat/catroid/content/Sprite;ILorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    iput-object v12, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->actor:Lorg/catrobat/catroid/stage/ShowTextActor;

    .line 77
    .end local v11    # "dummyActor":Lorg/catrobat/catroid/stage/ShowTextActor;
    .end local v20    # "stageActors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_3

    .line 78
    iget-object v2, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setVisible(Z)V

    goto :goto_1

    .line 80
    :cond_3
    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v3, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->actor:Lorg/catrobat/catroid/stage/ShowTextActor;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageListener;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 81
    iget-object v2, v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setVisible(Z)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "relativeTextSize":F
    .end local v4    # "xPosition":I
    .end local v5    # "yPosition":I
    .end local v16    # "color":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    sget-object v2, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterpretationException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_2
    return-void
.end method

.method public setAlignment(I)V
    .locals 0
    .param p1, "alignment"    # I

    .line 125
    iput p1, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->alignment:I

    .line 126
    return-void
.end method

.method public setAndroidStringProvider(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V
    .locals 0
    .param p1, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 129
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 130
    return-void
.end method

.method public setColor(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "color"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 113
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->color:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 114
    return-void
.end method

.method public setPosition(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "xPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "yPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 104
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->xPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 105
    iput-object p2, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->yPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 106
    return-void
.end method

.method public setRelativeTextSize(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "relativeTextSize"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 109
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->relativeTextSize:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 110
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 117
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 118
    return-void
.end method

.method public setVariableToShow(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 121
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->variableToShow:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 122
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->xPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    .local v0, "xPosition":I
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->yPosition:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    .local v1, "yPosition":I
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->actor:Lorg/catrobat/catroid/stage/ShowTextActor;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->actor:Lorg/catrobat/catroid/stage/ShowTextActor;

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/stage/ShowTextActor;->setPositionX(I)V

    .line 96
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->actor:Lorg/catrobat/catroid/stage/ShowTextActor;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/stage/ShowTextActor;->setPositionY(I)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "xPosition":I
    .end local v1    # "yPosition":I
    :cond_0
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    sget-object v1, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->TAG:Ljava/lang/String;

    const-string v2, "InterpretationException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_0
    return-void
.end method
