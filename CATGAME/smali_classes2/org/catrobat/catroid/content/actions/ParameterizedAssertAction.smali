.class public final Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;
.super Lorg/catrobat/catroid/content/actions/AssertAction;
.source "ParameterizedAssertAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u001c\u0010\u001e\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;",
        "Lorg/catrobat/catroid/content/actions/AssertAction;",
        "()V",
        "actualFormula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getActualFormula",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setActualFormula",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "expectedList",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "getExpectedList",
        "()Lorg/catrobat/catroid/formulaeditor/UserList;",
        "setExpectedList",
        "(Lorg/catrobat/catroid/formulaeditor/UserList;)V",
        "parameterizedData",
        "Lorg/catrobat/catroid/common/ParameterizedData;",
        "getParameterizedData",
        "()Lorg/catrobat/catroid/common/ParameterizedData;",
        "setParameterizedData",
        "(Lorg/catrobat/catroid/common/ParameterizedData;)V",
        "act",
        "",
        "delta",
        "",
        "formattedAssertEqualsError",
        "",
        "actual",
        "",
        "expected",
        "formattedSuccessMessage",
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
.field private actualFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private expectedList:Lorg/catrobat/catroid/formulaeditor/UserList;

.field private parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AssertAction;-><init>()V

    .line 34
    nop

    .line 35
    const-string v0, "\nParameterizedAssertError\n"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->setAssertTitle(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private final formattedAssertEqualsError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "expected"    # Ljava/lang/Object;

    .line 77
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->generateIndicator(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "indicator":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">\nactual:   <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">\ndeviation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final formattedSuccessMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "expected"    # Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public act(F)Z
    .locals 10
    .param p1, "delta"    # F

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->expectedList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/common/ParameterizedData;->setListSize(I)V

    .line 41
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->actualFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_2

    .line 42
    const-string v0, "Actual is null"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->failWith(Ljava/lang/String;)V

    .line 43
    return v1

    .line 46
    :cond_2
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->expectedList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-nez v2, :cond_3

    .line 47
    const-string v0, "Expected is null"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->failWith(Ljava/lang/String;)V

    .line 48
    return v1

    .line 51
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretObject(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "actualValue":Ljava/lang/String;
    nop

    .line 53
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->expectedList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentPosition()I

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v2, "null"

    .line 52
    :goto_3
    nop

    .line 55
    .local v2, "expectedValue":Ljava/lang/Object;
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    .local v3, "data":Lorg/catrobat/catroid/common/ParameterizedData;
    const/4 v5, 0x0

    .line 56
    .local v5, "$i$a$-let-ParameterizedAssertAction$act$1":I
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->equalValues(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0xa

    if-nez v6, :cond_7

    .line 57
    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getFailMessages()Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentParameters()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p0, v0, v2}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->formattedAssertEqualsError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 60
    :cond_7
    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getSuccessMessages()Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentParameters()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {p0, v0, v2}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->formattedSuccessMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_4
    nop

    .line 64
    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentPosition()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3, v6}, Lorg/catrobat/catroid/common/ParameterizedData;->setCurrentPosition(I)V

    .line 65
    const-string v6, ""

    invoke-virtual {v3, v6}, Lorg/catrobat/catroid/common/ParameterizedData;->setCurrentParameters(Ljava/lang/String;)V

    .line 67
    nop

    .line 68
    nop

    .line 67
    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getFailMessages()Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_8

    move v6, v4

    goto :goto_5

    :cond_8
    move v6, v1

    :goto_5
    if-eqz v6, :cond_a

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getCurrentPosition()I

    move-result v6

    iget-object v7, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->expectedList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_6

    .line 68
    :cond_9
    nop

    :goto_6
    if-lt v6, v1, :cond_a

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed Tests:\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getFailMessages()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n\nSucceeded Tests:\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ParameterizedData;->getSuccessMessages()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->failWith(Ljava/lang/String;)V

    .line 71
    :cond_a
    nop

    .line 55
    .end local v3    # "data":Lorg/catrobat/catroid/common/ParameterizedData;
    .end local v5    # "$i$a$-let-ParameterizedAssertAction$act$1":I
    nop

    .line 73
    :cond_b
    return v4
.end method

.method public final getActualFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->actualFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getExpectedList()Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->expectedList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-object v0
.end method

.method public final getParameterizedData()Lorg/catrobat/catroid/common/ParameterizedData;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    return-object v0
.end method

.method public final setActualFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 30
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->actualFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setExpectedList(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 31
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->expectedList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-void
.end method

.method public final setParameterizedData(Lorg/catrobat/catroid/common/ParameterizedData;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/common/ParameterizedData;

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->parameterizedData:Lorg/catrobat/catroid/common/ParameterizedData;

    return-void
.end method
