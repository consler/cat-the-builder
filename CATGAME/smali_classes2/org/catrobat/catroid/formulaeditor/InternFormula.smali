.class public Lorg/catrobat/catroid/formulaeditor/InternFormula;
.super Ljava/lang/Object;
.source "InternFormula.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;,
        Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;,
        Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

.field private cursorPositionInternTokenIndex:I

.field private cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

.field public externCursorPosition:I

.field private externFormulaString:Ljava/lang/String;

.field public externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

.field public internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

.field private internTokenFormulaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation
.end field

.field private internTokenFormulaParser:Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "internTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externFormulaString:Ljava/lang/String;

    .line 74
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    invoke-direct {v1}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    .line 75
    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 77
    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;I)V
    .locals 1
    .param p2, "internFormulaTokenSelection"    # Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;
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

    .line 81
    .local p1, "internTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externFormulaString:Ljava/lang/String;

    .line 84
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    .line 85
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 86
    iput p3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 88
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateInternCursorPosition()V

    .line 89
    return-void
.end method

.method private deleteInternTokenByIndex(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    .locals 7
    .param p1, "internTokenIndex"    # I

    .line 335
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 337
    .local v0, "tokenToDelete":Lorg/catrobat/catroid/formulaeditor/InternToken;
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_c

    const/4 v4, 0x2

    if-eq v1, v4, :cond_9

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v1, v4, :cond_6

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    .line 440
    invoke-direct {p0, p1, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->deleteInternTokens(II)V

    .line 442
    iput p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 443
    iput-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 444
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v1

    .line 420
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByParameterDelimiter(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 423
    .local v1, "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 427
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 429
    .local v4, "functionInternTokensLastIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 430
    .local v3, "startDeletionIndex":I
    iget-object v5, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 431
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 430
    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 433
    .local v5, "endIndexToDelete":I
    invoke-direct {p0, v3, v5}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->deleteInternTokens(II)V

    .line 435
    iput v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 436
    iput-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 437
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 424
    .end local v3    # "startDeletionIndex":I
    .end local v4    # "functionInternTokensLastIndex":I
    .end local v5    # "endIndexToDelete":I
    :cond_2
    :goto_0
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 400
    .end local v1    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :cond_3
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByFunctionBracketClose(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 403
    .restart local v1    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 407
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 409
    .restart local v4    # "functionInternTokensLastIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 410
    .restart local v3    # "startDeletionIndex":I
    iget-object v5, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 411
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 410
    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 413
    .restart local v5    # "endIndexToDelete":I
    invoke-direct {p0, v3, v5}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->deleteInternTokens(II)V

    .line 415
    iput v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 416
    iput-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 417
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 404
    .end local v3    # "startDeletionIndex":I
    .end local v4    # "functionInternTokensLastIndex":I
    .end local v5    # "endIndexToDelete":I
    :cond_5
    :goto_1
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 380
    .end local v1    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :cond_6
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByFunctionBracketOpen(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 383
    .restart local v1    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    .line 387
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 389
    .restart local v4    # "functionInternTokensLastIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 390
    .restart local v3    # "startDeletionIndex":I
    iget-object v5, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 391
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 390
    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 393
    .restart local v5    # "endIndexToDelete":I
    invoke-direct {p0, v3, v5}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->deleteInternTokens(II)V

    .line 395
    iput v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 396
    iput-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 397
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 384
    .end local v3    # "startDeletionIndex":I
    .end local v4    # "functionInternTokensLastIndex":I
    .end local v5    # "endIndexToDelete":I
    :cond_8
    :goto_2
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 360
    .end local v1    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :cond_9
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByName(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 363
    .restart local v1    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_a

    goto :goto_3

    .line 367
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 368
    .local v4, "lastListIndex":I
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 369
    .local v3, "lastFunctionToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    iget-object v5, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 371
    .restart local v5    # "endIndexToDelete":I
    invoke-direct {p0, p1, v5}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->deleteInternTokens(II)V

    .line 372
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setExternCursorPositionLeftTo(I)V

    .line 374
    iput p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 375
    iput-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 377
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 364
    .end local v3    # "lastFunctionToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    .end local v4    # "lastListIndex":I
    .end local v5    # "endIndexToDelete":I
    :cond_b
    :goto_3
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 339
    .end local v1    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :cond_c
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    iget v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    invoke-virtual {v1, v4, p1}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getExternTokenStartOffset(II)I

    move-result v1

    .line 342
    .local v1, "externNumberOffset":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_d

    .line 343
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 346
    :cond_d
    invoke-static {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->deleteNumberByOffset(Lorg/catrobat/catroid/formulaeditor/InternToken;I)Lorg/catrobat/catroid/formulaeditor/InternToken;

    move-result-object v4

    .line 348
    .local v4, "modifiedToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    if-nez v4, :cond_e

    .line 349
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 351
    iput p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 352
    iput-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 353
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 356
    :cond_e
    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 357
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2
.end method

.method private deleteInternTokens(II)V
    .locals 1
    .param p1, "deleteIndexStart"    # I
    .param p2, "deleteIndexEnd"    # I

    .line 274
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 275
    .local v0, "tokenListToInsert":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-direct {p0, v0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->replaceInternTokens(Ljava/util/List;II)V

    .line 276
    return-void
.end method

.method private getIndexOfRegularExpressionIfParamIsSelected(I)I
    .locals 6
    .param p1, "index"    # I

    .line 1124
    const/4 v0, 0x2

    if-lt p1, v0, :cond_3

    .line 1125
    const/4 v0, 0x0

    .line 1127
    .local v0, "bracketCount":I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1128
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 1129
    .local v2, "iteratedToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v3

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v3, v4, :cond_0

    .line 1130
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1131
    :cond_0
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v3

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v3, v4, :cond_1

    .line 1132
    add-int/lit8 v0, v0, 0x1

    .line 1135
    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    if-lez v1, :cond_2

    .line 1136
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 1137
    .local v3, "functionToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v4

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v4, v5, :cond_2

    .line 1138
    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/Functions;->REGEX:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1139
    add-int/lit8 v4, v1, -0x1

    return v4

    .line 1127
    .end local v2    # "iteratedToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    .end local v3    # "functionToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1144
    .end local v0    # "bracketCount":I
    .end local v1    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private getSelectedToken()Lorg/catrobat/catroid/formulaeditor/InternToken;
    .locals 6

    .line 1016
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getTokenSelectionType()Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    move-result-object v0

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->USER_SELECTION:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 1019
    :cond_0
    const/4 v0, 0x0

    .line 1020
    .local v0, "currentIndex":I
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 1021
    .local v3, "token":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v4

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 1022
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getStartIndex()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 1023
    return-object v3

    .line 1025
    :cond_1
    nop

    .end local v3    # "token":Lorg/catrobat/catroid/formulaeditor/InternToken;
    add-int/lit8 v0, v0, 0x1

    .line 1026
    goto :goto_0

    .line 1027
    :cond_2
    return-object v1

    .line 1017
    .end local v0    # "currentIndex":I
    :cond_3
    :goto_1
    return-object v1
.end method

.method private handleDeletion()Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    .locals 4

    .line 286
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    .line 287
    .local v0, "cursorTokenPropertiesAfterModification":Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getStartIndex()I

    move-result v1

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getEndIndex()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->deleteInternTokens(II)V

    .line 290
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getStartIndex()I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 293
    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 295
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    goto :goto_0

    .line 297
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPosition:[I

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getFirstLeftInternToken(I)Lorg/catrobat/catroid/formulaeditor/InternToken;

    move-result-object v1

    .line 320
    .local v1, "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v2, v3, :cond_2

    .line 321
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setExternCursorPositionLeftTo(I)V

    .line 322
    goto :goto_0

    .line 325
    :cond_2
    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->deleteInternTokenByIndex(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    goto :goto_0

    .line 315
    .end local v1    # "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :cond_3
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->deleteInternTokenByIndex(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    .line 316
    goto :goto_0

    .line 299
    :cond_4
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getFirstLeftInternToken(I)Lorg/catrobat/catroid/formulaeditor/InternToken;

    move-result-object v1

    .line 300
    .local v1, "firstLeftInternToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    if-nez v1, :cond_5

    .line 301
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    goto :goto_0

    .line 303
    :cond_5
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v2, v3, :cond_6

    .line 304
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setExternCursorPositionLeftTo(I)V

    .line 305
    goto :goto_0

    .line 308
    :cond_6
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 310
    .local v2, "firstLeftInternTokenIndex":I
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->deleteInternTokenByIndex(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    .line 312
    .end local v2    # "firstLeftInternTokenIndex":I
    nop

    .line 330
    .end local v1    # "firstLeftInternToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    :goto_0
    return-object v0
.end method

.method private insertLeftToCurrentToken(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)",
            "Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;"
        }
    .end annotation

    .line 629
    .local p1, "internTokensToInsert":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v0, 0x0

    .line 630
    .local v0, "firstLeftInternToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    if-lez v1, :cond_0

    .line 631
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 634
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isNumber()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isNumberToken(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "numberToInsert":Ljava/lang/String;
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-static {v3, v2, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->insertIntoNumberToken(Lorg/catrobat/catroid/formulaeditor/InternToken;ILjava/lang/String;)Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 639
    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 641
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 644
    .end local v1    # "numberToInsert":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isNumber()Z

    move-result v1

    const-string v3, "0."

    const-string v4, "."

    if-eqz v1, :cond_3

    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isPeriodToken(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 645
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "numberString":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 647
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 650
    :cond_2
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-static {v4, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->insertIntoNumberToken(Lorg/catrobat/catroid/formulaeditor/InternToken;ILjava/lang/String;)Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 651
    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 653
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 656
    .end local v1    # "numberString":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 657
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isNumberToken(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 659
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->appendToTokenStringValue(Ljava/util/List;)V

    .line 661
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v1

    .line 664
    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 665
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isPeriodToken(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 667
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v1

    .line 668
    .restart local v1    # "numberString":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 669
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 672
    :cond_5
    invoke-virtual {v0, v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->appendToTokenStringValue(Ljava/lang/String;)V

    .line 674
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 677
    .end local v1    # "numberString":Ljava/lang/String;
    :cond_6
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isPeriodToken(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 678
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    new-instance v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v4, v5, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 680
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 681
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v1

    .line 684
    :cond_7
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-interface {v1, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 685
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorPositionAndSelectionAfterInput(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v1

    return-object v1
.end method

.method private insertRightToCurrentToken(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)",
            "Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;"
        }
    .end annotation

    .line 690
    .local p1, "internTokensToInsert":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    const-string v1, "0."

    if-nez v0, :cond_1

    .line 692
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isPeriodToken(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object p1, v0

    .line 694
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v0, v2, v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 698
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorPositionAndSelectionAfterInput(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    return-object v0

    .line 701
    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isNumberToken(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->appendToTokenStringValue(Ljava/util/List;)V

    .line 705
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v0

    .line 708
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isPeriodToken(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 709
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "numberString":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 711
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v1

    .line 713
    :cond_3
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->appendToTokenStringValue(Ljava/lang/String;)V

    .line 715
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v1

    .line 718
    .end local v0    # "numberString":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isPeriodToken(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 720
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v3, v4, v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 724
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 725
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v0

    .line 728
    :cond_5
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 729
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorPositionAndSelectionAfterInput(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    return-object v0
.end method

.method private isSelectedTokenTypeString(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 1049
    const/4 v0, 0x1

    .line 1051
    .local v0, "isStringOrFunction":Z
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 1052
    .local v1, "typeFunction":Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 1054
    .local v2, "typeString":Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v3

    .line 1056
    .local v3, "selectedTokenType":Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    if-eq v3, v2, :cond_0

    if-eq v3, v1, :cond_0

    .line 1057
    const/4 v0, 0x0

    .line 1059
    :cond_0
    return v0
.end method

.method private isTokenBeforeSelectedTypeBracketOpen(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 1063
    const/4 v0, 0x1

    .line 1064
    .local v0, "isBracket":Z
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 1065
    .local v1, "typeBracketOpen":Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 1067
    const/4 v0, 0x0

    .line 1069
    :cond_0
    return v0
.end method

.method private isTokenSelected()Z
    .locals 1

    .line 1171
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTwoTokensBeforeSelectedAFunctionAndNamedRegex(I)Z
    .locals 5
    .param p1, "index"    # I

    .line 1073
    const/4 v0, 0x1

    .line 1074
    .local v0, "isRegex":Z
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 1075
    .local v1, "typeFunctionName":Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->REGEX:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v2

    .line 1076
    .local v2, "stringOfRegularExpression":Ljava/lang/String;
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    add-int/lit8 v4, p1, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 1077
    .local v3, "functionToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v4

    if-ne v4, v1, :cond_0

    .line 1078
    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1079
    :cond_0
    const/4 v0, 0x0

    .line 1081
    :cond_1
    return v0
.end method

.method private replaceInternTokens(Ljava/util/List;II)V
    .locals 2
    .param p2, "replaceIndexStart"    # I
    .param p3, "replaceIndexEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;II)V"
        }
    .end annotation

    .line 279
    .local p1, "tokenListToInsert":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    sub-int v0, p3, p2

    .local v0, "tokensToRemove":I
    :goto_0
    if-ltz v0, :cond_0

    .line 280
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 279
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 282
    .end local v0    # "tokensToRemove":I
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 283
    return-void
.end method

.method private replaceSelection(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)",
            "Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;"
        }
    .end annotation

    .line 235
    .local p1, "tokenListToInsert":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isPeriodToken(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object p1, v0

    .line 237
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "0."

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getStartIndex()I

    move-result v0

    .line 241
    .local v0, "internTokenSelectionStart":I
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getEndIndex()I

    move-result v1

    .line 243
    .local v1, "internTokenSelectionEnd":I
    if-gt v0, v1, :cond_4

    if-ltz v0, :cond_4

    if-gez v1, :cond_1

    goto :goto_1

    .line 250
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 251
    .local v2, "tokenListToRemove":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v3, 0x0

    .local v3, "tokensToRemove":I
    :goto_0
    sub-int v4, v1, v0

    if-gt v3, v4, :cond_2

    .line 252
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    add-int v5, v0, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v3    # "tokensToRemove":I
    :cond_2
    invoke-static {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isFunction(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    iput-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 257
    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 258
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->replaceCursorPositionInternTokenByTokenList(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v3

    return-object v3

    .line 260
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->replaceInternTokens(Ljava/util/List;II)V

    .line 262
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorPositionAndSelectionAfterInput(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v3

    return-object v3

    .line 246
    .end local v2    # "tokenListToRemove":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :cond_4
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 247
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2
.end method

.method private setCursorPositionAndSelectionAfterInput(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    .locals 11
    .param p1, "insertedInternTokenIndex"    # I

    .line 733
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 735
    .local v0, "insertedInternToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 736
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByName(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 739
    .local v1, "functionInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-lt v2, v4, :cond_2

    .line 740
    nop

    .line 741
    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionParameterInternTokensAsLists(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 742
    .local v2, "functionParameters":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;>;"
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 743
    .local v6, "functionFirstParameter":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v7}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v7

    .line 745
    .local v7, "functionName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 746
    iput-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 747
    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    goto :goto_0

    .line 749
    :cond_0
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-direct {p0, v7, v4}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->userListNotFirstParameter(Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternToken;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 750
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/List;

    .line 751
    add-int/lit8 p1, p1, 0x2

    .line 753
    :cond_1
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    sget-object v8, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->USER_SELECTION:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    add-int/lit8 v9, p1, 0x2

    .line 755
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, p1

    add-int/2addr v10, v5

    invoke-direct {v4, v8, v9, v10}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;II)V

    iput-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 756
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getEndIndex()I

    move-result v4

    iput v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 758
    .end local v2    # "functionParameters":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;>;"
    .end local v6    # "functionFirstParameter":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    .end local v7    # "functionName":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 759
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p1

    sub-int/2addr v2, v5

    iput v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 760
    iput-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 762
    .end local v1    # "functionInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :goto_1
    goto :goto_2

    .line 763
    :cond_3
    iput p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 764
    iput-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 766
    :goto_2
    iput-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 767
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v1
.end method

.method private updateExternCursorPosition(Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;)V
    .locals 2
    .param p1, "cursorTokenPropertiesAfterInput"    # Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    .line 223
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPropertiesAfterModification:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setExternCursorPositionRightTo(I)V

    goto :goto_0

    .line 225
    :cond_1
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setExternCursorPositionLeftTo(I)V

    .line 226
    nop

    .line 231
    :goto_0
    return-void
.end method

.method private userListNotFirstParameter(Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternToken;)Z
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "functionFirstParameter"    # Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 772
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->LIST_ITEM:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->INDEX_OF_ITEM:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isUserList()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addTokens(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)V"
        }
    .end annotation

    .line 975
    .local p2, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    .line 979
    .local v0, "cursorTokenPropertiesAfterInput":Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->isTokenSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getStartIndex()I

    move-result v1

    .line 981
    .local v1, "startIndex":I
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getEndIndex()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->replaceInternTokens(Ljava/util/List;II)V

    .line 982
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorPositionAndSelectionAfterInput(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    .line 983
    .end local v1    # "startIndex":I
    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    if-nez v1, :cond_1

    .line 984
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->insertRightToCurrentToken(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    goto :goto_0

    .line 986
    :cond_1
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPosition:[I

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 994
    :cond_2
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->insertRightToCurrentToken(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    goto :goto_0

    .line 991
    :cond_3
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->replaceCursorPositionInternTokenByTokenList(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    .line 992
    goto :goto_0

    .line 988
    :cond_4
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->insertLeftToCurrentToken(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    .line 989
    nop

    .line 999
    :goto_0
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 1000
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateExternCursorPosition(Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;)V

    .line 1001
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateInternCursorPosition()V

    .line 1002
    return-void
.end method

.method public deleteSelection(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 267
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->handleDeletion()Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    .line 268
    .local v0, "cursorTokenPropertiesAfterInput":Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateExternCursorPosition(Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;)V

    .line 269
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 270
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateInternCursorPosition()V

    .line 271
    return-void
.end method

.method public generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 488
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;-><init>(Landroid/content/Context;)V

    .line 490
    .local v0, "internToExternGenerator":Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->generateExternStringAndMapping(Ljava/util/List;)V

    .line 491
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->getGeneratedExternFormulaString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externFormulaString:Ljava/lang/String;

    .line 492
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->getGeneratedExternInternRepresentationMapping()Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    .line 493
    return-void
.end method

.method public getExternCursorPosition()I
    .locals 1

    .line 876
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    return v0
.end method

.method public getExternFormulaString()Ljava/lang/String;
    .locals 1

    .line 1167
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externFormulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getExternSelectionEndIndex()I
    .locals 3

    .line 960
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 961
    return v1

    .line 964
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    .line 965
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getEndIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getExternTokenEndIndex(I)I

    move-result v0

    .line 967
    .local v0, "externSelectionEndIndex":I
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 968
    return v1

    .line 971
    :cond_1
    return v0
.end method

.method public getExternSelectionStartIndex()I
    .locals 3

    .line 945
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 946
    return v1

    .line 949
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    .line 950
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getStartIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getExternTokenStartIndex(I)I

    move-result v0

    .line 952
    .local v0, "externSelectionStartIndex":I
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 953
    return v1

    .line 956
    :cond_1
    return v0
.end method

.method public getExternSelectionType()Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;
    .locals 1

    .line 906
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->isTokenSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    const/4 v0, 0x0

    return-object v0

    .line 910
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getTokenSelectionType()Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    move-result-object v0

    return-object v0
.end method

.method public getFirstLeftInternToken(I)Lorg/catrobat/catroid/formulaeditor/InternToken;
    .locals 3
    .param p1, "externIndex"    # I

    .line 866
    move v0, p1

    .local v0, "searchIndex":I
    :goto_0
    if-ltz v0, :cond_1

    .line 867
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getInternTokenByExternIndex(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 868
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getInternTokenByExternIndex(I)I

    move-result v1

    .line 869
    .local v1, "internTokenIndex":I
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    return-object v2

    .line 866
    .end local v1    # "internTokenIndex":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 872
    .end local v0    # "searchIndex":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexOfCorrespondingRegularExpression()I
    .locals 5

    .line 1104
    const/4 v0, -0x1

    .line 1105
    .local v0, "indexOfSelectedToken":I
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-eqz v1, :cond_1

    .line 1106
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getStartIndex()I

    move-result v0

    .line 1108
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 1110
    .local v1, "selectedToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v2

    .line 1111
    .local v2, "selectedType":Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v3

    .line 1113
    .local v3, "selectedStringValue":Ljava/lang/String;
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v2, v4, :cond_0

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/Functions;->REGEX:Lorg/catrobat/catroid/formulaeditor/Functions;

    .line 1114
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1115
    return v0

    .line 1117
    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getIndexOfRegularExpressionIfParamIsSelected(I)I

    move-result v4

    return v4

    .line 1120
    .end local v1    # "selectedToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    .end local v2    # "selectedType":Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .end local v3    # "selectedStringValue":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getIndexOfInternTokenSelection()I
    .locals 1

    .line 1085
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getStartIndex()I

    move-result v0

    return v0

    .line 1088
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getInternFormulaParser()Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;
    .locals 2

    .line 880
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaParser:Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;

    .line 881
    return-object v0
.end method

.method public getInternFormulaState()Lorg/catrobat/catroid/formulaeditor/InternFormulaState;
    .locals 5

    .line 925
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 926
    .local v0, "deepCopyOfInternTokenFormula":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v1, 0x0

    .line 928
    .local v1, "deepCopyOfInternFormulaTokenSelection":Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 929
    .local v3, "tokenToCopy":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->deepCopy()Lorg/catrobat/catroid/formulaeditor/InternToken;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    .end local v3    # "tokenToCopy":Lorg/catrobat/catroid/formulaeditor/InternToken;
    goto :goto_0

    .line 932
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->isTokenSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 933
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->deepCopy()Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    move-result-object v1

    .line 936
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    iget v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    invoke-direct {v2, v0, v1, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;-><init>(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;I)V

    return-object v2
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 2

    .line 1148
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getSelectedToken()Lorg/catrobat/catroid/formulaeditor/InternToken;

    move-result-object v0

    .line 1149
    .local v0, "token":Lorg/catrobat/catroid/formulaeditor/InternToken;
    if-nez v0, :cond_0

    .line 1150
    const/4 v1, 0x0

    return-object v1

    .line 1153
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedTokenForCopy()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 1005
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v0, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-eqz v1, :cond_1

    .line 1007
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getEndIndex()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 1008
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 1012
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSelection()Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;
    .locals 1

    .line 941
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    return-object v0
.end method

.method public handleKeyInput(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "resourceId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;

    .line 111
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;-><init>()V

    .line 112
    invoke-virtual {v0, p1, p3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->createInternTokenListByResourceId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "keyInputInternTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    .line 117
    .local v1, "cursorTokenPropertiesAfterInput":Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    const v2, 0x7f0a03a7

    if-ne p1, v2, :cond_0

    .line 118
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->handleDeletion()Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v1

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->isTokenSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->replaceSelection(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    if-nez v2, :cond_2

    .line 122
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->insertRightToCurrentToken(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v1

    goto :goto_0

    .line 124
    :cond_2
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPosition:[I

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 132
    :cond_3
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->insertRightToCurrentToken(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v1

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->replaceCursorPositionInternTokenByTokenList(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v1

    .line 130
    goto :goto_0

    .line 126
    :cond_5
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->insertLeftToCurrentToken(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v1

    .line 127
    nop

    .line 137
    :goto_0
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateExternCursorPosition(Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;)V

    .line 139
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateInternCursorPosition()V

    .line 140
    return-void
.end method

.method public isSelectedTokenFirstParamOfRegularExpression()Z
    .locals 3

    .line 1032
    const/4 v0, 0x0

    .line 1034
    .local v0, "isFirstParamInRegularExpression":Z
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    if-eqz v1, :cond_1

    .line 1035
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;->getStartIndex()I

    move-result v1

    .line 1037
    .local v1, "indexOfSelectedTokenInTokenSelection":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 1039
    nop

    .line 1040
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->isSelectedTokenTypeString(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1041
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->isTokenBeforeSelectedTypeBracketOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->isTwoTokensBeforeSelectedAFunctionAndNamedRegex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 1045
    .end local v1    # "indexOfSelectedTokenInTokenSelection":I
    :cond_1
    return v0
.end method

.method public isThereSomethingToDelete()Z
    .locals 3

    .line 1175
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1176
    return v1

    .line 1178
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    if-eqz v0, :cond_2

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    sub-int/2addr v0, v1

    .line 1179
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getFirstLeftInternToken(I)Lorg/catrobat/catroid/formulaeditor/InternToken;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1178
    :goto_0
    return v1
.end method

.method public overrideSelectedText(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 1157
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getSelectedToken()Lorg/catrobat/catroid/formulaeditor/InternToken;

    move-result-object v0

    .line 1158
    .local v0, "token":Lorg/catrobat/catroid/formulaeditor/InternToken;
    if-nez v0, :cond_0

    .line 1159
    return-void

    .line 1162
    :cond_0
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->setTokenStringValue(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 1164
    return-void
.end method

.method public replaceCursorPositionInternTokenByTokenList(Ljava/util/List;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)",
            "Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;"
        }
    .end annotation

    .line 779
    .local p1, "internTokensToReplaceWith":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->TAG:Ljava/lang/String;

    const-string v1, "replaceCursorPositionInternTokenByTokenList:enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isNumber()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 782
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    iget v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-virtual {v0, v2, v3}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getExternTokenStartOffset(II)I

    move-result v0

    .line 786
    .local v0, "externNumberOffset":I
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-static {v2, v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->insertOperatorToNumberToken(Lorg/catrobat/catroid/formulaeditor/InternToken;ILorg/catrobat/catroid/formulaeditor/InternToken;)Ljava/util/List;

    move-result-object v1

    .line 787
    .local v1, "replaceList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-direct {p0, v1, v2, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->replaceInternTokens(Ljava/util/List;II)V

    .line 789
    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorPositionAndSelectionAfterInput(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v2

    return-object v2

    .line 792
    .end local v0    # "externNumberOffset":I
    .end local v1    # "replaceList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isNumber()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isNumberToken(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 796
    .local v0, "numberTokenToInsert":Lorg/catrobat/catroid/formulaeditor/InternToken;
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    iget v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    iget v5, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-virtual {v1, v4, v5}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getExternTokenStartOffset(II)I

    move-result v1

    .line 799
    .local v1, "externNumberOffset":I
    if-ne v1, v3, :cond_1

    .line 800
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 803
    :cond_1
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 804
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v4

    .line 803
    invoke-static {v3, v1, v4}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->insertIntoNumberToken(Lorg/catrobat/catroid/formulaeditor/InternToken;ILjava/lang/String;)Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 806
    iget v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 807
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v2

    .line 810
    .end local v0    # "numberTokenToInsert":Lorg/catrobat/catroid/formulaeditor/InternToken;
    .end local v1    # "externNumberOffset":I
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isPeriodToken(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 812
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "numberString":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 814
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v1

    .line 817
    :cond_3
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    iget v5, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    iget v6, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-virtual {v4, v5, v6}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getExternTokenStartOffset(II)I

    move-result v4

    .line 820
    .local v4, "externNumberOffset":I
    if-ne v4, v3, :cond_4

    .line 821
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v1

    .line 824
    :cond_4
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-static {v3, v4, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->insertIntoNumberToken(Lorg/catrobat/catroid/formulaeditor/InternToken;ILjava/lang/String;)Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 825
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 827
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v1

    .line 830
    .end local v0    # "numberString":Ljava/lang/String;
    .end local v4    # "externNumberOffset":I
    :cond_5
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isFunctionName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 832
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-static {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByName(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 835
    .local v0, "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-nez v0, :cond_6

    .line 836
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v1

    .line 839
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .line 840
    .local v1, "lastListIndex":I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 841
    .local v2, "lastFunctionToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 843
    .local v3, "endIndexToReplace":I
    invoke-static {v0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->replaceFunctionByTokens(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 846
    .local v4, "tokensToInsert":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    iget v5, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-direct {p0, v4, v5, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->replaceInternTokens(Ljava/util/List;II)V

    .line 848
    iget v5, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-direct {p0, v5}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorPositionAndSelectionAfterInput(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v5

    return-object v5

    .line 851
    .end local v0    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    .end local v1    # "lastListIndex":I
    .end local v2    # "lastFunctionToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    .end local v3    # "endIndexToReplace":I
    .end local v4    # "tokensToInsert":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :cond_7
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->isPeriodToken(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 852
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    add-int/2addr v1, v2

    new-instance v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v5, "0."

    invoke-direct {v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 856
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 857
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v0

    .line 860
    :cond_8
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-direct {p0, p1, v0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->replaceInternTokens(Ljava/util/List;II)V

    .line 862
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorPositionAndSelectionAfterInput(I)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v0

    return-object v0
.end method

.method public selectCursorPositionInternToken(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;)V
    .locals 6
    .param p1, "internTokenSelectionType"    # Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 508
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    if-nez v0, :cond_0

    .line 509
    return-void

    .line 512
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 621
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-direct {v0, p1, v1, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;II)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    goto/16 :goto_6

    .line 603
    :pswitch_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-static {v0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->generateTokenListByBracketClose(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 606
    .local v0, "bracketsInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 610
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 612
    .local v2, "bracketsInternTokensLastIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 613
    .local v1, "startSelectionIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 614
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 613
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 616
    .local v3, "endSelectionIndex":I
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-direct {v4, p1, v1, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;II)V

    iput-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 618
    goto/16 :goto_6

    .line 607
    .end local v1    # "startSelectionIndex":I
    .end local v2    # "bracketsInternTokensLastIndex":I
    .end local v3    # "endSelectionIndex":I
    :cond_2
    :goto_0
    return-void

    .line 585
    .end local v0    # "bracketsInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :pswitch_1
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-static {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->generateTokenListByBracketOpen(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 588
    .restart local v0    # "bracketsInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 592
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 594
    .local v1, "bracketsInternTokensLastIndex":I
    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 595
    .local v2, "startSelectionIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 596
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 595
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 598
    .restart local v3    # "endSelectionIndex":I
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-direct {v4, p1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;II)V

    iput-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 600
    goto/16 :goto_6

    .line 589
    .end local v1    # "bracketsInternTokensLastIndex":I
    .end local v2    # "startSelectionIndex":I
    .end local v3    # "endSelectionIndex":I
    :cond_4
    :goto_1
    return-void

    .line 567
    .end local v0    # "bracketsInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :pswitch_2
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-static {v0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByParameterDelimiter(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 570
    .local v0, "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 574
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 576
    .local v2, "functionInternTokensLastIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 577
    .local v1, "startSelectionIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 578
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 577
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 580
    .restart local v3    # "endSelectionIndex":I
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-direct {v4, p1, v1, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;II)V

    iput-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 582
    goto/16 :goto_6

    .line 571
    .end local v1    # "startSelectionIndex":I
    .end local v2    # "functionInternTokensLastIndex":I
    .end local v3    # "endSelectionIndex":I
    :cond_6
    :goto_2
    return-void

    .line 549
    .end local v0    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :pswitch_3
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-static {v0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByFunctionBracketClose(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 552
    .restart local v0    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    .line 556
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 558
    .restart local v2    # "functionInternTokensLastIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 559
    .restart local v1    # "startSelectionIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 560
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 559
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 562
    .restart local v3    # "endSelectionIndex":I
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-direct {v4, p1, v1, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;II)V

    iput-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 564
    goto :goto_6

    .line 553
    .end local v1    # "startSelectionIndex":I
    .end local v2    # "functionInternTokensLastIndex":I
    .end local v3    # "endSelectionIndex":I
    :cond_8
    :goto_3
    return-void

    .line 531
    .end local v0    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :pswitch_4
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-static {v0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByFunctionBracketOpen(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 534
    .restart local v0    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    .line 538
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 540
    .restart local v2    # "functionInternTokensLastIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 541
    .restart local v1    # "startSelectionIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 542
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 541
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 544
    .restart local v3    # "endSelectionIndex":I
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    invoke-direct {v4, p1, v1, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;II)V

    iput-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 546
    goto :goto_6

    .line 535
    .end local v1    # "startSelectionIndex":I
    .end local v2    # "functionInternTokensLastIndex":I
    .end local v3    # "endSelectionIndex":I
    :cond_a
    :goto_4
    return-void

    .line 514
    .end local v0    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :pswitch_5
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-static {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->getFunctionByName(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 517
    .restart local v0    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_5

    .line 521
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 522
    .local v1, "lastListIndex":I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 524
    .local v2, "lastFunctionToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 526
    .restart local v3    # "endSelectionIndex":I
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    iget v5, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    invoke-direct {v4, p1, v5, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;II)V

    iput-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 528
    goto :goto_6

    .line 518
    .end local v1    # "lastListIndex":I
    .end local v2    # "lastFunctionToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    .end local v3    # "endSelectionIndex":I
    :cond_c
    :goto_5
    return-void

    .line 625
    .end local v0    # "functionInternTokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public selectParseErrorTokenAndSetCursor()V
    .locals 2

    .line 885
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaParser:Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaParser:Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getErrorTokenIndex()I

    move-result v0

    .line 891
    .local v0, "internErrorTokenIndex":I
    if-gez v0, :cond_1

    .line 892
    return-void

    .line 895
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 896
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 899
    :cond_2
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setExternCursorPositionRightTo(I)V

    .line 900
    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 901
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 902
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->PARSER_ERROR_SELECTION:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->selectCursorPositionInternToken(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;)V

    .line 903
    return-void

    .line 886
    .end local v0    # "internErrorTokenIndex":I
    :cond_3
    :goto_0
    return-void
.end method

.method public selectWholeFormula()V
    .locals 4

    .line 915
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 916
    return-void

    .line 919
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->USER_SELECTION:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 920
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;II)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 921
    return-void
.end method

.method public setCursorAndSelection(IZ)V
    .locals 2
    .param p1, "externCursorPosition"    # I
    .param p2, "isSelected"    # Z

    .line 92
    iput p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 94
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateInternCursorPosition()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internFormulaTokenSelection:Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 97
    if-nez p2, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    .line 98
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getInternTokenByExternIndex(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, p1, -0x1

    .line 99
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getFirstLeftInternToken(I)Lorg/catrobat/catroid/formulaeditor/InternToken;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    if-eq v0, v1, :cond_0

    .line 100
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isFunctionParameterBracketOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 101
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isFunctionName()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 102
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isFunctionParameterBracketOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 103
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isSensor()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isUserVariable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 104
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isUserList()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    :cond_2
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->USER_SELECTION:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->selectCursorPositionInternToken(Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;)V

    .line 107
    :cond_3
    return-void
.end method

.method public setExternCursorPositionLeftTo(I)V
    .locals 2
    .param p1, "internTokenIndex"    # I

    .line 450
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 451
    iput v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 452
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 455
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setExternCursorPositionRightTo(I)V

    .line 456
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getExternTokenStartIndex(I)I

    move-result v0

    .line 460
    .local v0, "externTokenStartIndex":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 461
    return-void

    .line 464
    :cond_2
    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 465
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    .line 466
    return-void
.end method

.method public setExternCursorPositionRightTo(I)V
    .locals 2
    .param p1, "internTokenIndex"    # I

    .line 471
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 472
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 475
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 478
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getExternTokenEndIndex(I)I

    move-result v0

    .line 479
    .local v0, "externTokenEndIndex":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 480
    return-void

    .line 483
    :cond_2
    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 484
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    .line 485
    return-void
.end method

.method public setInternTokenFormulaList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)V"
        }
    .end annotation

    .line 1183
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    .line 1184
    return-void
.end method

.method public setSelectionToFirstParamOfRegularExpressionAtInternalIndex(I)V
    .locals 3
    .param p1, "indexOfRegularExpression"    # I

    .line 1092
    if-gez p1, :cond_0

    .line 1093
    return-void

    .line 1096
    :cond_0
    add-int/lit8 v0, p1, 0x2

    .line 1098
    .local v0, "indexOfFirstParam":I
    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 1099
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateExternCursorPosition(Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;)V

    .line 1100
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorAndSelection(IZ)V

    .line 1101
    return-void
.end method

.method public trimExternFormulaString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 496
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;-><init>(Landroid/content/Context;)V

    .line 498
    .local v0, "internToExternGenerator":Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->trimExternString(Ljava/util/List;)V

    .line 499
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->getGeneratedExternFormulaString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externFormulaString:Ljava/lang/String;

    .line 500
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->getGeneratedExternInternRepresentationMapping()Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    .line 501
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externFormulaString:Ljava/lang/String;

    return-object v1
.end method

.method public updateCollisionFormula(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 157
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 158
    .local v1, "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->updateCollisionFormula(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v1    # "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0, p3}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method public updateCollisionFormulaToVersion(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 172
    .local v1, "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->updateCollisionFormulaToVersion()V

    .line 173
    .end local v1    # "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public updateInternCursorPosition()V
    .locals 7

    .line 178
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    .line 179
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getInternTokenByExternIndex(I)I

    move-result v0

    .line 181
    .local v0, "cursorPositionTokenIndex":I
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 182
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getInternTokenByExternIndex(I)I

    move-result v1

    .line 184
    .local v1, "leftCursorPositionTokenIndex":I
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    iget v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->externCursorPosition:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    .line 185
    invoke-virtual {v2, v4}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->getInternTokenByExternIndex(I)I

    move-result v2

    .line 187
    .local v2, "leftleftCursorPositionTokenIndex":I
    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_1

    .line 188
    if-eq v1, v4, :cond_0

    if-ne v0, v1, :cond_0

    .line 190
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->MIDDLE:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    iput-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    goto :goto_0

    .line 192
    :cond_0
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    iput-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    goto :goto_0

    .line 194
    :cond_1
    if-eq v1, v4, :cond_2

    .line 195
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    iput-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    goto :goto_0

    .line 196
    :cond_2
    if-eq v2, v4, :cond_6

    .line 197
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    iput-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    .line 198
    move v1, v2

    .line 206
    :goto_0
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPosition:[I

    iget-object v6, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->ordinal()I

    move-result v6

    aget v4, v4, v6

    if-eq v4, v3, :cond_5

    if-eq v4, v5, :cond_4

    const/4 v3, 0x3

    if-eq v4, v3, :cond_3

    goto :goto_1

    .line 216
    :cond_3
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    iput-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 217
    iput v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    goto :goto_1

    .line 212
    :cond_4
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    iput-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 213
    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 214
    goto :goto_1

    .line 208
    :cond_5
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    iput-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 209
    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternTokenIndex:I

    .line 210
    nop

    .line 220
    :goto_1
    return-void

    .line 201
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorTokenPosition:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    .line 202
    iput-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->cursorPositionInternToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 203
    return-void
.end method

.method public updateListReferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 150
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 151
    .local v1, "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->updateListReferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v1    # "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0, p3}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 154
    return-void
.end method

.method public updateSensorTokens(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 164
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 165
    .local v1, "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->updateSensorTokens(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v1    # "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0, p3}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public updateVariableReferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormula;->internTokenFormulaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 144
    .local v1, "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->updateVariableReferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v1    # "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0, p3}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 147
    return-void
.end method
