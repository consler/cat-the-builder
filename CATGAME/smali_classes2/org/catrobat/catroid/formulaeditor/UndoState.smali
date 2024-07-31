.class public Lorg/catrobat/catroid/formulaeditor/UndoState;
.super Ljava/lang/Object;
.source "UndoState.java"


# instance fields
.field public final formulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

.field public final internFormulaState:Lorg/catrobat/catroid/formulaeditor/InternFormulaState;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaState;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V
    .locals 0
    .param p1, "internFormulaState"    # Lorg/catrobat/catroid/formulaeditor/InternFormulaState;
    .param p2, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/UndoState;->formulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/UndoState;->internFormulaState:Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "objectCompareTo"    # Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 42
    return v0

    .line 44
    :cond_0
    instance-of v1, p1, Lorg/catrobat/catroid/formulaeditor/UndoState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 45
    return v2

    .line 47
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 48
    .local v1, "stateCompareTo":Lorg/catrobat/catroid/formulaeditor/UndoState;
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/UndoState;->internFormulaState:Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    iget-object v4, v1, Lorg/catrobat/catroid/formulaeditor/UndoState;->internFormulaState:Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/UndoState;->formulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    iget-object v4, v1, Lorg/catrobat/catroid/formulaeditor/UndoState;->formulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/UndoState;->internFormulaState:Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/UndoState;->formulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
