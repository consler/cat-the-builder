.class public final Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;
.super Lorg/catrobat/catroid/content/actions/LoopAction;
.source "RepeatParameterizedAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0014J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0004H\u0002J\u0008\u0010\'\u001a\u00020\u0004H\u0002J\u0008\u0010(\u001a\u00020\u0006H\u0002J\u0008\u0010)\u001a\u00020%H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR,\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f0\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006*"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;",
        "Lorg/catrobat/catroid/content/actions/LoopAction;",
        "()V",
        "assertTitle",
        "",
        "isCurrentLoopInitialized",
        "",
        "parameterizedData",
        "Lorg/catrobat/catroid/common/ParameterizedData;",
        "getParameterizedData",
        "()Lorg/catrobat/catroid/common/ParameterizedData;",
        "setParameterizedData",
        "(Lorg/catrobat/catroid/common/ParameterizedData;)V",
        "parameters",
        "",
        "Lkotlin/Pair;",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "getParameters",
        "()Ljava/util/List;",
        "setParameters",
        "(Ljava/util/List;)V",
        "position",
        "getPosition",
        "()Ljava/lang/String;",
        "setPosition",
        "(Ljava/lang/String;)V",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "getSprite",
        "()Lorg/catrobat/catroid/content/Sprite;",
        "setSprite",
        "(Lorg/catrobat/catroid/content/Sprite;)V",
        "delegate",
        "delta",
        "",
        "fail",
        "",
        "error",
        "formattedPosition",
        "initParameter",
        "restart",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private assertTitle:Ljava/lang/String;

.field private isCurrentLoopInitialized:Z

.field private parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

.field private parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;>;"
        }
    .end annotation
.end field

.field private position:Ljava/lang/String;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/LoopAction;-><init>()V

    .line 33
    const-string v0, "ParameterizedInitialisationError"

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->assertTitle:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->position:Ljava/lang/String;

    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameters:Ljava/util/List;

    return-void
.end method

.method private final fail(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .line 77
    nop

    .line 78
    new-instance v0, Lorg/catrobat/catroid/stage/TestResult;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->formattedPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->assertTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    nop

    .line 78
    const/16 v2, 0x22b8

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/stage/TestResult;-><init>(Ljava/lang/String;I)V

    .line 77
    invoke-static {v0}, Lorg/catrobat/catroid/stage/StageActivity;->finishTestWithResult(Lorg/catrobat/catroid/stage/TestResult;)V

    .line 83
    return-void
.end method

.method private final formattedPosition()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on sprite "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->position:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final initParameter()Z
    .locals 10

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .local v0, "it":Lorg/catrobat/catroid/common/ParameterizedData;
    const/4 v2, 0x0

    .line 86
    .local v2, "$i$a$-let-RepeatParameterizedAction$initParameter$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentPosition()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/common/ParameterizedData;->setCurrentParameters(Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, " | "

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/formulaeditor/UserList;

    .local v6, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 89
    .local v4, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v7

    .line 90
    .local v7, "data":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentPosition()I

    move-result v9

    if-gt v8, v9, :cond_0

    .line 91
    nop

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input list is missing elements\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Failed Tests:\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ParameterizedData;->getFailMessages()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Succeeded Tests:\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ParameterizedData;->getSuccessMessages()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-direct {p0, v3}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->fail(Ljava/lang/String;)V

    .line 96
    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentPosition()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentParameters()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/catrobat/catroid/common/ParameterizedData;->setCurrentParameters(Ljava/lang/String;)V

    .line 100
    .end local v4    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .end local v6    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    .end local v7    # "data":Ljava/util/List;
    nop

    .line 88
    goto/16 :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentParameters()Ljava/lang/String;

    move-result-object v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v1, v5}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/common/ParameterizedData;->setCurrentParameters(Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x0

    .line 85
    .end local v0    # "it":Lorg/catrobat/catroid/common/ParameterizedData;
    .end local v2    # "$i$a$-let-RepeatParameterizedAction$initParameter$1":I
    :goto_1
    goto :goto_2

    .line 104
    :cond_2
    nop

    :goto_2
    return v1
.end method


# virtual methods
.method protected delegate(F)Z
    .locals 4
    .param p1, "delta"    # F

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameters:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 42
    const-string v0, "Input was not selected"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->fail(Ljava/lang/String;)V

    .line 43
    return v2

    .line 46
    :cond_2
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->isCurrentLoopInitialized:Z

    if-nez v0, :cond_7

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentPosition()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getListSize()I

    move-result v3

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    if-lt v0, v3, :cond_5

    .line 48
    return v2

    .line 50
    :cond_5
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->initParameter()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    return v2

    .line 54
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->setCurrentTime(F)V

    .line 55
    iput-boolean v2, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->isCurrentLoopInitialized:Z

    .line 58
    :cond_7
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->getCurrentTime()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->setCurrentTime(F)V

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->isLoopDelayNeeded()Z

    move-result v0

    if-nez v0, :cond_b

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentPosition()I

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_4
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getListSize()I

    move-result v3

    goto :goto_5

    :cond_9
    move v3, v1

    :goto_5
    if-lt v0, v3, :cond_a

    .line 61
    return v2

    .line 64
    :cond_a
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->isCurrentLoopInitialized:Z

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 67
    :cond_b
    return v1
.end method

.method public final getParameterizedData()Lorg/catrobat/catroid/common/ParameterizedData;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    return-object v0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public final getPosition()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->position:Ljava/lang/String;

    return-object v0
.end method

.method public final getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public restart()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->isCurrentLoopInitialized:Z

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ParameterizedData;->reset()V

    .line 73
    :cond_0
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/LoopAction;->restart()V

    .line 74
    return-void
.end method

.method public final setParameterizedData(Lorg/catrobat/catroid/common/ParameterizedData;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/common/ParameterizedData;

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    return-void
.end method

.method public final setParameters(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->parameters:Ljava/util/List;

    return-void
.end method

.method public final setPosition(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->position:Ljava/lang/String;

    return-void
.end method

.method public final setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Sprite;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-void
.end method
