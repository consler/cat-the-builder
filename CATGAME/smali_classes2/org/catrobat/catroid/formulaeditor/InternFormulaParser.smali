.class public Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;
.super Ljava/lang/Object;
.source "InternFormulaParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
    }
.end annotation


# static fields
.field private static final MAXIMUM_TOKENS_TO_PARSE:I = 0x3e8

.field public static final PARSER_INPUT_SYNTAX_ERROR:I = -0x3

.field public static final PARSER_NO_INPUT:I = -0x4

.field public static final PARSER_OK:I = -0x1

.field public static final PARSER_STACK_OVERFLOW:I = -0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

.field private currentTokenParseIndex:I

.field private errorTokenIndex:I

.field private internTokensToParse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "internTokensToParse":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->internTokensToParse:Ljava/util/List;

    .line 58
    return-void
.end method

.method private addEndOfFileToken()V
    .locals 2

    .line 122
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->PARSER_END_OF_FILE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    .line 123
    .local v0, "endOfFileParserToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->internTokensToParse:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method private collision()Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 4

    .line 277
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 278
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 280
    .local v0, "lookTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 281
    return-object v0
.end method

.method private findLowerOrEqualPriorityOperatorElement(Lorg/catrobat/catroid/formulaeditor/Operators;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 5
    .param p1, "currentOperator"    # Lorg/catrobat/catroid/formulaeditor/Operators;
    .param p2, "currentElement"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 72
    invoke-virtual {p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getParent()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    .line 73
    .local v0, "returnElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    move-object v1, p2

    .line 74
    .local v1, "notNullElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    const/4 v2, 0x1

    .line 76
    .local v2, "condition":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 77
    if-nez v0, :cond_0

    .line 78
    const/4 v2, 0x0

    .line 79
    move-object v0, v1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/catrobat/catroid/formulaeditor/Operators;->getOperatorByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Operators;

    move-result-object v3

    .line 82
    .local v3, "parentOperator":Lorg/catrobat/catroid/formulaeditor/Operators;
    invoke-virtual {v3, p1}, Lorg/catrobat/catroid/formulaeditor/Operators;->compareOperatorTo(Lorg/catrobat/catroid/formulaeditor/Operators;)I

    move-result v4

    .line 83
    .local v4, "compareOperator":I
    if-gez v4, :cond_1

    .line 84
    const/4 v2, 0x0

    .line 85
    move-object v0, v1

    goto :goto_1

    .line 87
    :cond_1
    move-object v1, v0

    .line 88
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getParent()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    .line 90
    .end local v3    # "parentOperator":Lorg/catrobat/catroid/formulaeditor/Operators;
    .end local v4    # "compareOperator":I
    :goto_1
    goto :goto_0

    .line 92
    :cond_2
    return-object v0
.end method

.method private formula(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 3
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->termList(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    .line 170
    .local v0, "termListTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isEndOfFileToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    return-object v0

    .line 174
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;

    const-string v2, "Parse Error"

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;Ljava/lang/String;)V

    throw v1
.end method

.method private function(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 5
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Functions;->isFunction(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Parse Error"

    if-eqz v0, :cond_3

    .line 331
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->FUNCTION:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 332
    .local v0, "functionTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 334
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isFunctionParameterBracketOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 336
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->termList(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setLeftChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 337
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isFunctionParameterDelimiter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 339
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->termList(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setRightChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 340
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isFunctionParameterDelimiter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 342
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->termList(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addAdditionalChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isFunctionParameterBracketClose()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    goto :goto_1

    .line 346
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;

    invoke-direct {v2, p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_2
    :goto_1
    return-object v0

    .line 328
    .end local v0    # "functionTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_3
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;Ljava/lang/String;)V

    throw v0
.end method

.method private getNextToken()V
    .locals 2

    .line 61
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentTokenParseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentTokenParseIndex:I

    .line 62
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->internTokensToParse:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 63
    return-void
.end method

.method private number()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "numberToCheck":Ljava/lang/String;
    const-string v1, "-?(\\d)+(\\.(\\d)+)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 361
    return-object v0

    .line 357
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;

    const-string v2, "Parse Error"

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;Ljava/lang/String;)V

    throw v1
.end method

.method private removeEndOfFileToken()V
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->internTokensToParse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method private sensor()Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->isSensor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 321
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 322
    .local v0, "sensorTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 323
    return-object v0

    .line 317
    .end local v0    # "sensorTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;

    const-string v1, "Parse Error"

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;Ljava/lang/String;)V

    throw v0
.end method

.method private string()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "currentStringValue":Ljava/lang/String;
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 367
    return-object v0
.end method

.method private term(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 10
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
        }
    .end annotation

    .line 194
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 195
    .local v0, "termTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    move-object v1, v0

    .line 197
    .local v1, "currentElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isOperator()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    move-object v8, v2

    .line 199
    .end local v1    # "currentElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .local v8, "currentElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 201
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    move-object v1, v8

    goto :goto_0

    .line 202
    .end local v8    # "currentElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .restart local v1    # "currentElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isOperator()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_NOT:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    move-object v8, v2

    .line 204
    .end local v1    # "currentElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .restart local v8    # "currentElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_NOT:Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 205
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 204
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 207
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    move-object v1, v8

    .line 210
    .end local v8    # "currentElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .restart local v1    # "currentElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_1
    :goto_0
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "Parse Error"

    packed-switch v2, :pswitch_data_0

    .line 255
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;

    invoke-direct {v2, p0, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;Ljava/lang/String;)V

    throw v2

    .line 251
    :pswitch_0
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->collision()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 252
    goto :goto_1

    .line 247
    :pswitch_1
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->STRING:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->string()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)V

    .line 248
    goto :goto_1

    .line 243
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->userDefinedBrickInput(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 244
    goto :goto_1

    .line 239
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->userList(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 240
    goto :goto_1

    .line 235
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->userVariable(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 236
    goto :goto_1

    .line 231
    :pswitch_5
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->sensor()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 232
    goto :goto_1

    .line 227
    :pswitch_6
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->function(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 228
    goto :goto_1

    .line 217
    :pswitch_7
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 218
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->BRACKET:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 219
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->termList(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 218
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 220
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isBracketClose()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 224
    goto :goto_1

    .line 221
    :cond_2
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;

    invoke-direct {v2, p0, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;Ljava/lang/String;)V

    throw v2

    .line 213
    :pswitch_8
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)V

    .line 214
    nop

    .line 258
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private termList(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 3
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->term(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    .line 182
    .local v0, "currentElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->isOperator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_NOT:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "operatorStringValue":Ljava/lang/String;
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 185
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->term(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    .line 186
    .local v2, "loopTermTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-virtual {p0, v1, v0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->handleOperator(Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 187
    move-object v0, v2

    goto :goto_0

    .line 189
    .end local v1    # "operatorStringValue":Ljava/lang/String;
    .end local v2    # "loopTermTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v1

    return-object v1
.end method

.method private userDefinedBrickInput(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 6
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "listName":Ljava/lang/String;
    nop

    .line 302
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getSequence()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    .line 301
    invoke-static {v0, v1}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserDefinedBrickInput(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)Lorg/catrobat/catroid/formulaeditor/UserData;

    move-result-object v1

    .line 304
    .local v1, "userInput":Lorg/catrobat/catroid/formulaeditor/UserData;
    if-eqz v1, :cond_0

    .line 308
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_DEFINED_BRICK_INPUT:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 309
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 311
    .local v2, "lookTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 312
    return-object v2

    .line 305
    .end local v2    # "lookTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_0
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;

    const-string v3, "Parse Error"

    invoke-direct {v2, p0, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;Ljava/lang/String;)V

    throw v2
.end method

.method private userList(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 6
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "listName":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserList(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v1

    .line 288
    .local v1, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    if-eqz v1, :cond_0

    .line 292
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 293
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 295
    .local v2, "lookTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 296
    return-object v2

    .line 289
    .end local v2    # "lookTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_0
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;

    const-string v3, "Parse Error"

    invoke-direct {v2, p0, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;Ljava/lang/String;)V

    throw v2
.end method

.method private userVariable(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 5
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 263
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserVariable(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v0

    .line 265
    .local v0, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    if-eqz v0, :cond_0

    .line 269
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 270
    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 272
    .local v1, "lookTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getNextToken()V

    .line 273
    return-object v1

    .line 266
    .end local v1    # "lookTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;

    const-string v2, "Parse Error"

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getErrorTokenIndex()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->errorTokenIndex:I

    return v0
.end method

.method public handleOperator(Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 11
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "currentElement"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p3, "newElement"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 97
    invoke-virtual {p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getParent()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 99
    return-void

    .line 102
    :cond_0
    invoke-virtual {p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getParent()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Operators;->getOperatorByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Operators;

    move-result-object v0

    .line 103
    .local v0, "parentOperator":Lorg/catrobat/catroid/formulaeditor/Operators;
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/Operators;->getOperatorByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Operators;

    move-result-object v1

    .line 105
    .local v1, "currentOperator":Lorg/catrobat/catroid/formulaeditor/Operators;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->compareOperatorTo(Lorg/catrobat/catroid/formulaeditor/Operators;)I

    move-result v2

    .line 107
    .local v2, "compareOperator":I
    if-ltz v2, :cond_2

    .line 108
    invoke-direct {p0, v1, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->findLowerOrEqualPriorityOperatorElement(Lorg/catrobat/catroid/formulaeditor/Operators;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v9

    .line 109
    .local v9, "newLeftChild":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-virtual {v9}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getParent()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v10

    .line 111
    .local v10, "newParent":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    if-eqz v10, :cond_1

    .line 112
    invoke-virtual {v9, p1, p3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceWithSubElement(Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    goto :goto_0

    .line 114
    :cond_1
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v7, v9

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 116
    .end local v9    # "newLeftChild":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .end local v10    # "newParent":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :goto_0
    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {p2, p1, p3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->replaceWithSubElement(Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 119
    :goto_1
    return-void
.end method

.method public parseFormula(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 4
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->errorTokenIndex:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentTokenParseIndex:I

    .line 134
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->internTokensToParse:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->internTokensToParse:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x3e8

    if-le v1, v3, :cond_1

    .line 139
    const/4 v1, -0x2

    iput v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->errorTokenIndex:I

    .line 140
    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->errorTokenIndex:I

    .line 141
    return-object v2

    .line 145
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->internTokensToParse:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    .local v1, "copyIternTokensToParse":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaUtils;->applyBracketCorrection(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->internTokensToParse:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 148
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->internTokensToParse:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "copyIternTokensToParse":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    :cond_2
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "emptyStackException":Ljava/util/EmptyStackException;
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->TAG:Ljava/lang/String;

    const-string v3, "Bracket correction failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v1    # "emptyStackException":Ljava/util/EmptyStackException;
    :goto_0
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->addEndOfFileToken()V

    .line 155
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->internTokensToParse:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentToken:Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 156
    const/4 v0, 0x0

    .line 159
    .local v0, "formulaParseTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :try_start_1
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->formula(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v1
    :try_end_1
    .catch Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 162
    goto :goto_1

    .line 160
    :catch_1
    move-exception v1

    .line 161
    .local v1, "parseExeption":Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->currentTokenParseIndex:I

    iput v2, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->errorTokenIndex:I

    .line 163
    .end local v1    # "parseExeption":Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
    :goto_1
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->removeEndOfFileToken()V

    .line 164
    return-object v0

    .line 135
    .end local v0    # "formulaParseTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_3
    :goto_2
    const/4 v0, -0x4

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->errorTokenIndex:I

    .line 136
    return-object v2
.end method
