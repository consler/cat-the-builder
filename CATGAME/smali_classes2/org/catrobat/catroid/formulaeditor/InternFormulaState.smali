.class public Lorg/catrobat/catroid/formulaeditor/InternFormulaState;
.super Ljava/lang/Object;
.source "InternFormulaState.java"


# instance fields
.field private externCursorPosition:I

.field private internTokenFormulaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation
.end field

.field private tokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;I)V
    .locals 0
    .param p2, "tokenSelection"    # Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;
    .param p3, "externCursorPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;",
            "I)V"
        }
    .end annotation

    .line 35
    .local p1, "internTokenFormulaList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->internTokenFormulaList:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->tokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 38
    iput p3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->externCursorPosition:I

    .line 39
    return-void
.end method


# virtual methods
.method public createInternFormulaFromState()Lorg/catrobat/catroid/formulaeditor/InternFormula;
    .locals 5

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 101
    .local v0, "deepCopyOfInternTokenFormula":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v1, 0x0

    .line 103
    .local v1, "deepCopyOfInternFormulaTokenSelection":Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 104
    .local v3, "tokenToCopy":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->deepCopy()Lorg/catrobat/catroid/formulaeditor/InternToken;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v3    # "tokenToCopy":Lorg/catrobat/catroid/formulaeditor/InternToken;
    goto :goto_0

    .line 107
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->tokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->deepCopy()Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    move-result-object v1

    .line 111
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/InternFormula;

    iget v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->externCursorPosition:I

    invoke-direct {v2, v0, v1, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormula;-><init>(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;I)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "objectToCompare"    # Ljava/lang/Object;

    .line 66
    instance-of v0, p1, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    if-eqz v0, :cond_7

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    .line 68
    .local v0, "stateToCompare":Lorg/catrobat/catroid/formulaeditor/InternFormulaState;
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->externCursorPosition:I

    iget v2, v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->externCursorPosition:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->tokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->tokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-nez v1, :cond_6

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->tokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->tokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 70
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->internTokenFormulaList:Ljava/util/List;

    .line 71
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    goto :goto_2

    .line 75
    :cond_2
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 76
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 77
    .local v2, "original":Lorg/catrobat/catroid/formulaeditor/InternToken;
    iget-object v4, v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 79
    .local v4, "internTokenToCompare":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v5

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 80
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 75
    .end local v2    # "original":Lorg/catrobat/catroid/formulaeditor/InternToken;
    .end local v4    # "internTokenToCompare":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .restart local v2    # "original":Lorg/catrobat/catroid/formulaeditor/InternToken;
    .restart local v4    # "internTokenToCompare":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_4
    :goto_1
    return v3

    .line 85
    .end local v1    # "index":I
    .end local v2    # "original":Lorg/catrobat/catroid/formulaeditor/InternToken;
    .end local v4    # "internTokenToCompare":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_5
    const/4 v1, 0x1

    return v1

    .line 72
    :cond_6
    :goto_2
    return v3

    .line 88
    .end local v0    # "stateToCompare":Lorg/catrobat/catroid/formulaeditor/InternFormulaState;
    :cond_7
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 43
    const/16 v0, 0x25

    .line 44
    .local v0, "result":I
    const/16 v1, 0x29

    .line 46
    .local v1, "prime":I
    mul-int v2, v1, v0

    iget v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->externCursorPosition:I

    add-int/2addr v2, v3

    .line 47
    .end local v0    # "result":I
    .local v2, "result":I
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->tokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-eqz v0, :cond_0

    .line 48
    mul-int v3, v1, v2

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->hashCode()I

    move-result v0

    add-int v2, v3, v0

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->internTokenFormulaList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 52
    mul-int v3, v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 54
    .end local v2    # "result":I
    .local v3, "result":I
    const/4 v0, 0x0

    move v2, v3

    .end local v3    # "result":I
    .local v0, "index":I
    .restart local v2    # "result":I
    :goto_0
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 55
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 56
    .local v3, "token":Lorg/catrobat/catroid/formulaeditor/InternToken;
    mul-int v4, v1, v2

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    .line 57
    .end local v2    # "result":I
    .local v4, "result":I
    mul-int v2, v1, v4

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    .line 54
    .end local v3    # "token":Lorg/catrobat/catroid/formulaeditor/InternToken;
    .end local v4    # "result":I
    .restart local v2    # "result":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "index":I
    :cond_1
    return v2
.end method

.method public setExternCursorPosition(I)V
    .locals 0
    .param p1, "externCursorPosition"    # I

    .line 96
    iput p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->externCursorPosition:I

    .line 97
    return-void
.end method

.method public setSelection(Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;)V
    .locals 0
    .param p1, "internFormulaTokenSelection"    # Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 92
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->tokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 93
    return-void
.end method

.method public updateUserDataTokens(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 117
    .local v1, "token":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v1, p3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->setTokenStringValue(Ljava/lang/String;)V

    .line 120
    .end local v1    # "token":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_0
    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method
