.class public Lorg/catrobat/catroid/formulaeditor/InternToken;
.super Ljava/lang/Object;
.source "InternToken.java"


# instance fields
.field private internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field private tokenStringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V
    .locals 1
    .param p1, "internTokenType"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V
    .locals 1
    .param p1, "internTokenType"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .param p2, "tokenStringValue"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 43
    return-void
.end method


# virtual methods
.method public appendToTokenStringValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "stringToAppend"    # Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public appendToTokenStringValue(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p1, "internTokensToAppend":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 142
    .local v2, "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    iget-object v3, v2, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .end local v2    # "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public deepCopy()Lorg/catrobat/catroid/formulaeditor/InternToken;
    .locals 3

    .line 152
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    return-object v0
.end method

.method public getTokenStringValue()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public isBracketClose()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEndOfFileToken()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->PARSER_END_OF_FILE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFunctionName()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFunctionParameterBracketClose()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFunctionParameterBracketOpen()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFunctionParameterDelimiter()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumber()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOperator()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Operators;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSensor()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isString()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserList()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserVariable()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTokenStringValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenString"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public updateCollisionFormula(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method

.method public updateCollisionFormulaToVersion()V
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    .line 73
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 74
    .local v0, "currentProject":Lorg/catrobat/catroid/content/Project;
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/catrobat/catroid/sensing/CollisionDetection;->getSecondSpriteNameFromCollisionFormulaString(Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "secondSpriteName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 76
    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    .line 79
    .end local v0    # "currentProject":Lorg/catrobat/catroid/content/Project;
    .end local v1    # "secondSpriteName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updateListReferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    .line 63
    :cond_0
    return-void
.end method

.method public updateSensorTokens(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    .line 85
    :cond_0
    return-void
.end method

.method public updateVariableReferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->internTokenType:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/InternToken;->tokenStringValue:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method
