.class public final Lorg/catrobat/catroid/content/actions/AssertEqualsAction;
.super Lorg/catrobat/catroid/content/actions/AssertAction;
.source "AssertEqualsAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\nH\u0002J\u0018\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u001cH\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/AssertEqualsAction;",
        "Lorg/catrobat/catroid/content/actions/AssertAction;",
        "()V",
        "actualFormula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getActualFormula",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setActualFormula",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "actualValue",
        "",
        "getActualValue",
        "()Ljava/lang/Object;",
        "setActualValue",
        "(Ljava/lang/Object;)V",
        "expectedFormula",
        "getExpectedFormula",
        "setExpectedFormula",
        "expectedValue",
        "getExpectedValue",
        "setExpectedValue",
        "act",
        "",
        "delta",
        "",
        "convertValuesToBooleanString",
        "",
        "formattedAssertEqualsError",
        "",
        "actual",
        "expected",
        "isValueBoolean",
        "elementType",
        "Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;",
        "value",
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

.field public actualValue:Ljava/lang/Object;

.field private expectedFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field public expectedValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AssertAction;-><init>()V

    return-void
.end method

.method private final convertValuesToBooleanString()V
    .locals 9

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->getFormulaTree()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    const-string v1, "actualFormula!!.formulaTree"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getElementType()Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-result-object v0

    const-string v2, "actualFormula!!.formulaTree.elementType"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->getFormulaTree()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "actualFormula!!.formulaTree.value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->isValueBoolean(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)Z

    move-result v0

    .line 62
    .local v0, "actualBoolean":Z
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->getFormulaTree()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v1

    const-string v2, "expectedFormula!!.formulaTree"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getElementType()Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-result-object v1

    const-string v3, "expectedFormula!!.formulaTree.elementType"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->getFormulaTree()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "expectedFormula!!.formulaTree.value"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->isValueBoolean(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)Z

    move-result v1

    .line 65
    .local v1, "expectedBoolean":Z
    const/4 v2, 0x1

    const-string v3, "null cannot be cast to non-null type kotlin.Double"

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 66
    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualValue:Ljava/lang/Object;

    if-nez v5, :cond_0

    const-string v6, "actualValue"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz v5, :cond_2

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    int-to-double v7, v4

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualValue:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_3
    :goto_1
    if-eqz v1, :cond_7

    .line 69
    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedValue:Ljava/lang/Object;

    if-nez v5, :cond_4

    const-string v6, "expectedValue"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    if-eqz v5, :cond_6

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    int-to-double v7, v4

    cmpl-double v3, v5, v7

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedValue:Ljava/lang/Object;

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_7
    :goto_3
    return-void
.end method

.method private final formattedAssertEqualsError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "expected"    # Ljava/lang/Object;

    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->generateIndicator(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final isValueBoolean(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)Z
    .locals 4
    .param p1, "elementType"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
    .param p2, "value"    # Ljava/lang/String;

    .line 74
    sget-object v0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 80
    goto :goto_1

    .line 79
    :cond_0
    move v1, v2

    goto :goto_1

    .line 75
    :cond_1
    nop

    .line 76
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TRUE:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Functions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->FALSE:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Functions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    move v1, v2

    goto :goto_1

    .line 77
    :cond_3
    nop

    .line 75
    nop

    .line 74
    :goto_1
    return v1
.end method


# virtual methods
.method public act(F)Z
    .locals 5
    .param p1, "delta"    # F

    .line 39
    const-string v0, "\nAssertEqualsError\n"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->setAssertTitle(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    const-string v0, "Actual is null"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->failWith(Ljava/lang/String;)V

    .line 42
    return v1

    .line 44
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v2, :cond_1

    .line 45
    const-string v0, "Expected is null"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->failWith(Ljava/lang/String;)V

    .line 46
    return v1

    .line 49
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretObject(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "actualFormula!!.interpretObject(scope)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualValue:Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretObject(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "expectedFormula!!.interpretObject(scope)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedValue:Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualValue:Ljava/lang/Object;

    const-string v2, "actualValue"

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedValue:Ljava/lang/Object;

    const-string v4, "expectedValue"

    if-nez v3, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->equalValues(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->convertValuesToBooleanString()V

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualValue:Ljava/lang/Object;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedValue:Ljava/lang/Object;

    if-nez v2, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v0, v2}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->formattedAssertEqualsError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->failWith(Ljava/lang/String;)V

    .line 54
    return v1

    .line 56
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public final getActualFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getActualValue()Ljava/lang/Object;
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v1, "actualValue"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getExpectedFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getExpectedValue()Ljava/lang/Object;
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v1, "expectedValue"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setActualFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setActualValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/Object;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->actualValue:Ljava/lang/Object;

    return-void
.end method

.method public final setExpectedFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setExpectedValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/Object;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->expectedValue:Ljava/lang/Object;

    return-void
.end method
