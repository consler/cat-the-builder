.class public Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;
.super Ljava/lang/Object;
.source "InternFormulaTokenSelection.java"


# instance fields
.field private internTokenSelectionEnd:I

.field private internTokenSelectionStart:I

.field private tokenSelectionType:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;II)V
    .locals 0
    .param p1, "tokenSelectionType"    # Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;
    .param p2, "internTokenSelectionStart"    # I
    .param p3, "internTokenSelectionEnd"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->tokenSelectionType:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    .line 36
    iput p2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionStart:I

    .line 37
    iput p3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionEnd:I

    .line 38
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;
    .locals 4

    .line 80
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->tokenSelectionType:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionStart:I

    iget v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionEnd:I

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "objectToCompare"    # Ljava/lang/Object;

    .line 55
    instance-of v0, p1, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-eqz v0, :cond_1

    .line 56
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 57
    .local v0, "selectionToCompare":Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionStart:I

    iget v2, v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionStart:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionEnd:I

    iget v2, v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionEnd:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->tokenSelectionType:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    iget-object v2, v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->tokenSelectionType:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 61
    .end local v0    # "selectionToCompare":Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionEnd:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionStart:I

    return v0
.end method

.method public getTokenSelectionType()Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->tokenSelectionType:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 66
    const/16 v0, 0x1f

    .line 67
    .local v0, "result":I
    const/16 v1, 0x29

    .line 69
    .local v1, "prime":I
    mul-int v2, v1, v0

    iget v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionStart:I

    add-int/2addr v2, v3

    .line 70
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->internTokenSelectionEnd:I

    add-int/2addr v0, v3

    .line 71
    .end local v2    # "result":I
    .restart local v0    # "result":I
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->tokenSelectionType:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    if-eqz v2, :cond_0

    .line 72
    mul-int v3, v1, v0

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->hashCode()I

    move-result v2

    add-int v0, v3, v2

    .line 75
    :cond_0
    return v0
.end method
