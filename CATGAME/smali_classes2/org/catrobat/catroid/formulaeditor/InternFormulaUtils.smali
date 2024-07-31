.class public final Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;
.super Ljava/lang/Object;
.source "InternFormulaUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static applyBracketCorrection(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .line 556
    .local p0, "internFormula":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 558
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/catrobat/catroid/formulaeditor/InternTokenType;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_8

    .line 560
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 570
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v2, v3, :cond_1

    .line 571
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 573
    :cond_1
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-static {p0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->swapBrackets(Ljava/util/List;ILorg/catrobat/catroid/formulaeditor/InternTokenType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 574
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 575
    goto :goto_1

    .line 577
    :cond_2
    return v4

    .line 562
    :cond_3
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    goto :goto_1

    .line 582
    :cond_4
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v2, v3, :cond_5

    .line 583
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 585
    :cond_5
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-static {p0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->swapBrackets(Ljava/util/List;ILorg/catrobat/catroid/formulaeditor/InternTokenType;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 586
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 587
    goto :goto_1

    .line 589
    :cond_6
    return v4

    .line 566
    :cond_7
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    nop

    .line 558
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    .end local v1    # "index":I
    :cond_8
    return v3
.end method

.method public static deleteNumberByOffset(Lorg/catrobat/catroid/formulaeditor/InternToken;I)Lorg/catrobat/catroid/formulaeditor/InternToken;
    .locals 4
    .param p0, "cursorPositionInternToken"    # Lorg/catrobat/catroid/formulaeditor/InternToken;
    .param p1, "externNumberOffset"    # I

    .line 532
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "numberString":Ljava/lang/String;
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 535
    return-object p0

    .line 538
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 539
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 542
    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "leftPart":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "rightPart":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->setTokenStringValue(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 548
    const/4 v3, 0x0

    return-object v3

    .line 551
    :cond_2
    return-object p0
.end method

.method public static generateTokenListByBracketClose(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .param p1, "internTokenListIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;I)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 281
    .local p0, "internTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    .line 282
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v0

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 287
    .local v0, "bracketInternTokenListToReturn":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v2, p1, -0x1

    .line 290
    .local v2, "bracketSearchIndex":I
    const/4 v3, 0x1

    .line 294
    .local v3, "nestedBracketsCounter":I
    :cond_1
    if-gez v2, :cond_2

    .line 295
    return-object v1

    .line 297
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 298
    .local v4, "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    add-int/lit8 v2, v2, -0x1

    .line 300
    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    goto :goto_0

    .line 302
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 303
    goto :goto_0

    .line 306
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 310
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v5

    sget-object v6, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v5, v6, :cond_1

    if-nez v3, :cond_1

    .line 313
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 314
    return-object v0

    .line 283
    .end local v0    # "bracketInternTokenListToReturn":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    .end local v2    # "bracketSearchIndex":I
    .end local v3    # "nestedBracketsCounter":I
    .end local v4    # "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_5
    :goto_1
    return-object v1
.end method

.method public static generateTokenListByBracketOpen(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .param p1, "internTokenListIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;I)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 243
    .local p0, "internTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    .line 244
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v0

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 249
    .local v0, "bracketInternTokenListToReturn":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v2, p1, 0x1

    .line 252
    .local v2, "bracketsIndex":I
    const/4 v3, 0x1

    .line 256
    .local v3, "nestedBracketsCounter":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 257
    return-object v1

    .line 259
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 260
    .local v4, "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    add-int/lit8 v2, v2, 0x1

    .line 262
    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    goto :goto_0

    .line 268
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 264
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 265
    nop

    .line 272
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v5

    sget-object v6, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v5, v6, :cond_1

    if-nez v3, :cond_1

    .line 275
    return-object v0

    .line 245
    .end local v0    # "bracketInternTokenListToReturn":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    .end local v2    # "bracketsIndex":I
    .end local v3    # "nestedBracketsCounter":I
    .end local v4    # "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_5
    :goto_1
    return-object v1
.end method

.method private static getFirstInternTokenType(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;"
        }
    .end annotation

    .line 384
    .local p0, "internTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v0

    return-object v0

    .line 385
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFunctionByFunctionBracketClose(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .param p1, "functionBracketCloseInternTokenListIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;I)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 41
    .local p0, "internTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 47
    .local v1, "functionInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v2, p1, -0x1

    .line 51
    .local v2, "functionIndex":I
    const/4 v3, 0x1

    .line 54
    .local v3, "nestedFunctionsCounter":I
    :cond_1
    if-gez v2, :cond_2

    .line 55
    return-object v0

    .line 57
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 58
    .local v4, "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    add-int/lit8 v2, v2, -0x1

    .line 60
    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_0

    .line 66
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 63
    nop

    .line 70
    :goto_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v5

    sget-object v6, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v5, v6, :cond_1

    if-nez v3, :cond_1

    .line 74
    if-gez v2, :cond_5

    .line 75
    return-object v0

    .line 77
    :cond_5
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 79
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v5

    sget-object v6, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-eq v5, v6, :cond_6

    .line 80
    return-object v0

    .line 83
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 87
    return-object v1

    .line 43
    .end local v1    # "functionInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    .end local v2    # "functionIndex":I
    .end local v3    # "nestedFunctionsCounter":I
    .end local v4    # "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_7
    :goto_1
    return-object v0
.end method

.method public static getFunctionByFunctionBracketOpen(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .param p1, "functionBracketOpenInternTokenListIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;I)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 169
    .local p0, "internTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v0, 0x0

    if-lez p1, :cond_2

    .line 170
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 176
    .local v1, "functionNameInternToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-eq v2, v3, :cond_1

    .line 177
    return-object v0

    .line 180
    :cond_1
    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByName(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "functionInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    return-object v0

    .line 171
    .end local v0    # "functionInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    .end local v1    # "functionNameInternToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getFunctionByName(Ljava/util/List;I)Ljava/util/List;
    .locals 10
    .param p1, "functionStartListIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;I)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 188
    .local p0, "internTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 190
    .local v0, "functionNameToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 192
    .local v1, "functionInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 193
    return-object v4

    .line 196
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v2, p1, 0x1

    .line 200
    .local v2, "functionIndex":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 201
    return-object v1

    .line 204
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 206
    .local v3, "functionStartParameter":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isFunctionParameterBracketOpen()Z

    move-result v5

    if-nez v5, :cond_2

    .line 207
    return-object v1

    .line 210
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 214
    const/4 v6, 0x1

    .line 217
    .local v6, "nestedFunctionsCounter":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-lt v2, v7, :cond_3

    .line 218
    return-object v4

    .line 220
    :cond_3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 221
    .local v7, "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    add-int/lit8 v2, v2, 0x1

    .line 223
    sget-object v8, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-virtual {v7}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v9

    invoke-virtual {v9}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v5, :cond_5

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    goto :goto_1

    .line 229
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 225
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 226
    nop

    .line 233
    :goto_1
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v7}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v8

    sget-object v9, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v8, v9, :cond_6

    if-nez v6, :cond_6

    .line 237
    return-object v1

    .line 234
    :cond_6
    goto :goto_0
.end method

.method public static getFunctionByParameterDelimiter(Ljava/util/List;I)Ljava/util/List;
    .locals 9
    .param p1, "functionParameterDelimiterInternTokenListIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;I)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 93
    .local p0, "internTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 94
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto/16 :goto_2

    .line 98
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 99
    .local v1, "functionInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v2, p1, -0x1

    .line 103
    .local v2, "functionIndex":I
    const/4 v3, 0x1

    .line 106
    .local v3, "nestedFunctionsCounter":I
    :cond_1
    if-gez v2, :cond_2

    .line 107
    return-object v0

    .line 109
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 110
    .local v4, "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    add-int/lit8 v2, v2, -0x1

    .line 112
    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v7, :cond_4

    if-eq v5, v6, :cond_3

    goto :goto_0

    .line 118
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 115
    nop

    .line 122
    :goto_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v5

    sget-object v8, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v5, v8, :cond_1

    if-nez v3, :cond_1

    .line 126
    if-gez v2, :cond_5

    .line 127
    return-object v0

    .line 129
    :cond_5
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 131
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v5

    sget-object v8, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-eq v5, v8, :cond_6

    .line 132
    return-object v0

    .line 135
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 139
    add-int/lit8 v2, p1, 0x1

    .line 140
    const/4 v3, 0x1

    .line 143
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_8

    .line 144
    return-object v0

    .line 146
    :cond_8
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 149
    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v8

    invoke-virtual {v8}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v8

    aget v5, v5, v8

    if-eq v5, v7, :cond_a

    if-eq v5, v6, :cond_9

    goto :goto_1

    .line 155
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 151
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 152
    nop

    .line 159
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v5

    sget-object v8, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v5, v8, :cond_7

    if-nez v3, :cond_7

    .line 163
    return-object v1

    .line 95
    .end local v1    # "functionInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    .end local v2    # "functionIndex":I
    .end local v3    # "nestedFunctionsCounter":I
    .end local v4    # "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_b
    :goto_2
    return-object v0
.end method

.method static getFunctionParameterCount(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)I"
        }
    .end annotation

    .line 488
    .local p0, "functionInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 489
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_7

    .line 490
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v1, v2, :cond_7

    .line 491
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 495
    :cond_0
    const/4 v2, 0x2

    .line 498
    .local v2, "searchIndex":I
    const/4 v3, 0x1

    .line 500
    .local v3, "nestedFunctionsCounter":I
    const/4 v4, 0x1

    .line 502
    .local v4, "functionParameterCount":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 503
    return v0

    .line 506
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 508
    .local v5, "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    sget-object v6, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v1, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/4 v7, 0x5

    if-eq v6, v7, :cond_3

    goto :goto_0

    .line 518
    :cond_3
    if-ne v3, v1, :cond_6

    .line 519
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 514
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 515
    goto :goto_0

    .line 510
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 511
    nop

    .line 524
    :cond_6
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 525
    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v6

    sget-object v7, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v6, v7, :cond_1

    if-nez v3, :cond_1

    .line 527
    return v4

    .line 492
    .end local v2    # "searchIndex":I
    .end local v3    # "nestedFunctionsCounter":I
    .end local v4    # "functionParameterCount":I
    .end local v5    # "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_7
    :goto_1
    return v0
.end method

.method public static getFunctionParameterInternTokensAsLists(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;>;"
        }
    .end annotation

    .line 320
    .local p0, "functionInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 322
    .local v0, "functionParameterInternTokenList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;>;"
    const/4 v1, 0x0

    if-eqz p0, :cond_9

    .line 323
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_9

    const/4 v2, 0x0

    .line 324
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v2, v3, :cond_9

    .line 325
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v3

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-eq v3, v4, :cond_0

    goto :goto_2

    .line 329
    :cond_0
    const/4 v3, 0x2

    .line 330
    .local v3, "searchIndex":I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 333
    .local v4, "currentParameterInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v5, 0x1

    .line 336
    .local v5, "nestedFunctionsCounter":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_2

    .line 337
    return-object v1

    .line 340
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 342
    .local v6, "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    sget-object v7, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v8

    invoke-virtual {v8}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v2, :cond_6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3

    goto :goto_0

    .line 356
    :cond_3
    if-ne v5, v2, :cond_4

    .line 357
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v7

    .line 359
    goto :goto_1

    .line 363
    :cond_4
    :goto_0
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 350
    if-eqz v5, :cond_7

    .line 351
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 344
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 345
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    nop

    .line 367
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 368
    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v7

    sget-object v8, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v7, v8, :cond_1

    if-nez v5, :cond_1

    .line 371
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 372
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_8
    return-object v0

    .line 326
    .end local v3    # "searchIndex":I
    .end local v4    # "currentParameterInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    .end local v5    # "nestedFunctionsCounter":I
    .end local v6    # "tempSearchToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_9
    :goto_2
    return-object v1
.end method

.method public static insertIntoNumberToken(Lorg/catrobat/catroid/formulaeditor/InternToken;ILjava/lang/String;)Lorg/catrobat/catroid/formulaeditor/InternToken;
    .locals 4
    .param p0, "numberTokenToBeModified"    # Lorg/catrobat/catroid/formulaeditor/InternToken;
    .param p1, "externNumberOffset"    # I
    .param p2, "numberToInsert"    # Ljava/lang/String;

    .line 443
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "numberString":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "leftPart":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "rightPart":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->setTokenStringValue(Ljava/lang/String;)V

    .line 449
    return-object p0
.end method

.method public static insertOperatorToNumberToken(Lorg/catrobat/catroid/formulaeditor/InternToken;ILorg/catrobat/catroid/formulaeditor/InternToken;)Ljava/util/List;
    .locals 7
    .param p0, "numberTokenToBeModified"    # Lorg/catrobat/catroid/formulaeditor/InternToken;
    .param p1, "externNumberOffset"    # I
    .param p2, "operatorToInsert"    # Lorg/catrobat/catroid/formulaeditor/InternToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            "I",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 426
    .local v0, "replaceTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "numberString":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, "leftPart":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "rightPart":Ljava/lang/String;
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v4, v5, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    .line 431
    .local v4, "leftNumber":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v5, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v6, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v5, v6, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    .line 436
    .local v5, "rightNumber":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    return-object v0
.end method

.method public static isFunction(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)Z"
        }
    .end annotation

    .line 379
    .local p0, "internTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByName(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 380
    .local v1, "functionList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFunctionToken(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)Z"
        }
    .end annotation

    .line 403
    .local p0, "internTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-static {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFirstInternTokenType(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v0

    .line 405
    .local v0, "firstInternTokenType":Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    if-eqz v0, :cond_0

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isNumberToken(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)Z"
        }
    .end annotation

    .line 409
    .local p0, "internTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-static {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFirstInternTokenType(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v0

    .line 411
    .local v0, "firstInternTokenType":Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isPeriodToken(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)Z"
        }
    .end annotation

    .line 393
    .local p0, "internTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v1

    .line 399
    .local v1, "firstInternTokenType":Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->PERIOD:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v1, v3, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 394
    .end local v1    # "firstInternTokenType":Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    :cond_2
    :goto_0
    return v0
.end method

.method public static replaceFunctionButKeepParameters(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 455
    .local p0, "functionToReplace":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    .local p1, "functionToReplaceWith":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-static {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionParameterInternTokensAsLists(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 456
    .local v0, "keepParameterInternTokenList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 457
    .local v1, "replacedParametersFunction":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionParameterInternTokensAsLists(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 459
    .local v2, "originalParameterInternTokenList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;>;"
    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    if-nez v2, :cond_0

    goto :goto_2

    .line 464
    :cond_0
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionParameterCount(Ljava/util/List;)I

    move-result v3

    .line 469
    .local v3, "functionParameterCount":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 470
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 471
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 473
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 476
    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_2

    .line 477
    new-instance v5, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v6, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v5, v6}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 481
    .end local v4    # "index":I
    :cond_3
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    return-object v1

    .line 461
    .end local v3    # "functionParameterCount":I
    :cond_4
    :goto_2
    return-object p1
.end method

.method public static replaceFunctionByTokens(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 417
    .local p0, "functionToReplace":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    .local p1, "internTokensToReplaceWith":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isFunctionToken(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->replaceFunctionButKeepParameters(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 421
    :cond_0
    return-object p1
.end method

.method private static swapBrackets(Ljava/util/List;ILorg/catrobat/catroid/formulaeditor/InternTokenType;)Z
    .locals 3
    .param p1, "firstBracketIndex"    # I
    .param p2, "secondBracket"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;I",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
            ")Z"
        }
    .end annotation

    .line 599
    .local p0, "internFormula":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    add-int/lit8 v0, p1, 0x1

    .local v0, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 600
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 601
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 602
    .local v1, "firstBracket":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 604
    const/4 v2, 0x1

    return v2

    .line 599
    .end local v1    # "firstBracket":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
