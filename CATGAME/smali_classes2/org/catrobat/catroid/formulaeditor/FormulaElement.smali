.class public Lorg/catrobat/catroid/formulaeditor/FormulaElement;
.super Ljava/lang/Object;
.source "FormulaElement.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public additionalChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            ">;"
        }
    .end annotation
.end field

.field private transient formulaFunctions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            "Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;",
            ">;"
        }
    .end annotation
.end field

.field private leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

.field private transient parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

.field private rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

.field private transient textBlockFunctionProvider:Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;

.field private type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

.field private value:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 108
    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 115
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->textBlockFunctionProvider:Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;

    .line 116
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/ArduinoFunctionProvider;

    invoke-direct {v1}, Lorg/catrobat/catroid/formulaeditor/function/ArduinoFunctionProvider;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/RaspiFunctionProvider;

    invoke-direct {v1}, Lorg/catrobat/catroid/formulaeditor/function/RaspiFunctionProvider;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;

    invoke-direct {v1}, Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;

    invoke-direct {v1}, Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->textBlockFunctionProvider:Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/ObjectDetectorFunctionProvider;

    invoke-direct {v1}, Lorg/catrobat/catroid/formulaeditor/function/ObjectDetectorFunctionProvider;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "functionProviders":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;>;"
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->formulaFunctions:Ljava/util/Map;

    .line 126
    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->initFunctionMap(Ljava/util/List;Ljava/util/Map;)V

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    .line 128
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 0
    .param p1, "type"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parent"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 131
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>()V

    .line 132
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    .line 133
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 1
    .param p1, "type"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parent"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p4, "leftChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p5, "rightChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 140
    iput-object p4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 141
    iput-object p5, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 143
    if-eqz p4, :cond_0

    .line 144
    iput-object p0, p4, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 146
    :cond_0
    if-eqz p5, :cond_1

    .line 147
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iput-object p0, v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 149
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parent"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p4, "leftChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p5, "rightChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p6, "additionalChildren":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/FormulaElement;>;"
    invoke-direct/range {p0 .. p5}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 154
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 155
    .local v1, "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addAdditionalChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 156
    .end local v1    # "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method private addBracketTokens(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 1
    .param p2, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            ")V"
        }
    .end annotation

    .line 223
    .local p1, "internTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    .line 224
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryAddInternTokens(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 225
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    .line 226
    return-void
.end method

.method private addFunctionTokens(Ljava/util/List;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 4
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "leftChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p4, "rightChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            ")V"
        }
    .end annotation

    .line 235
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, p1, v0, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "functionHasParameters":Z
    if-eqz p3, :cond_0

    .line 238
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, p1, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    .line 239
    const/4 v0, 0x1

    .line 240
    invoke-virtual {p3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getInternTokenList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    :cond_0
    if-eqz p4, :cond_1

    .line 243
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, p1, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    .line 244
    invoke-virtual {p4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getInternTokenList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 247
    .local v2, "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    if-eqz v2, :cond_2

    .line 248
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, p1, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    .line 249
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getInternTokenList()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    .end local v2    # "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_2
    goto :goto_0

    .line 252
    :cond_3
    if-eqz v0, :cond_4

    .line 253
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, p1, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    .line 255
    :cond_4
    return-void
.end method

.method private addOperatorTokens(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 229
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryAddInternTokens(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 230
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, p1, v0, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryAddInternTokens(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 232
    return-void
.end method

.method private addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V
    .locals 1
    .param p2, "tokenType"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
            ")V"
        }
    .end annotation

    .line 215
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-direct {v0, p2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method private addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V
    .locals 1
    .param p2, "tokenType"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 219
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-direct {v0, p2, p3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method private calculateUserListLength(Lorg/catrobat/catroid/formulaeditor/UserList;Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)D
    .locals 5
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;
    .param p2, "left"    # Ljava/lang/Object;
    .param p3, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 693
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 697
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v2, p3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v2

    .line 698
    .local v2, "interpretedList":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_3

    .line 699
    move-object v3, v2

    check-cast v3, Ljava/lang/Double;

    .line 700
    .local v3, "interpretedListDoubleValue":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->isNaN()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Double;->isInfinite()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 701
    :cond_2
    :goto_0
    return-wide v0

    .line 705
    .end local v3    # "interpretedListDoubleValue":Ljava/lang/Double;
    :cond_3
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 706
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 708
    :cond_4
    instance-of v3, p2, Ljava/lang/Double;

    if-eqz v3, :cond_5

    move-object v3, p2

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 709
    return-wide v0

    .line 711
    :cond_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 694
    .end local v2    # "interpretedList":Ljava/lang/Object;
    :cond_6
    :goto_1
    return-wide v0
.end method

.method private calculateUserVariableLength(Lorg/catrobat/catroid/formulaeditor/UserVariable;)I
    .locals 3
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 680
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 681
    .local v0, "userVariableValue":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 682
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 684
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->isInteger(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 687
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    return v1
.end method

.method private containsSpriteInCollision(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/lang/String;)Z
    .locals 1
    .param p1, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p2, "name"    # Ljava/lang/String;

    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->containsSpriteInCollision(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static formatNumberString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "numberString"    # Ljava/lang/String;

    .line 649
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 650
    .local v0, "number":D
    const-string v2, ""

    .line 651
    .local v2, "formattedNumberString":Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->isInteger(D)Z

    move-result v4

    if-eqz v4, :cond_0

    double-to-int v4, v0

    int-to-double v4, v4

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 654
    :cond_1
    invoke-static {v2}, Lorg/catrobat/catroid/utils/NumberFormats;->trimTrailingCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getUserListOfChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 2
    .param p1, "child"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 585
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getElementType()Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-eq v0, v1, :cond_0

    .line 586
    const/4 v0, 0x0

    return-object v0

    .line 588
    :cond_0
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserList(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v0

    return-object v0
.end method

.method private handleNumberOfItemsOfUserListParameter(Lorg/catrobat/catroid/formulaeditor/UserList;)I
    .locals 1
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 534
    if-nez p1, :cond_0

    .line 535
    const/4 v0, 0x0

    return v0

    .line 538
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private initFunctionMap(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            "Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "functionProviders":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;>;"
    .local p2, "formulaFunctions":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;

    .line 161
    .local v1, "functionProvider":Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;
    invoke-interface {v1, p2}, Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;->addFunctionsToMap(Ljava/util/Map;)V

    .line 162
    .end local v1    # "functionProvider":Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;
    goto :goto_0

    .line 164
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->RAND:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/-$$Lambda$FormulaElement$LYK_c1nPHBL7g09d7QHzzN0MJi4;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/-$$Lambda$FormulaElement$LYK_c1nPHBL7g09d7QHzzN0MJi4;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->IF_THEN_ELSE:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/TernaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/-$$Lambda$FormulaElement$CPjxhmdiHtDNiGlbEGTJxfv4we0;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/-$$Lambda$FormulaElement$CPjxhmdiHtDNiGlbEGTJxfv4we0;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/TernaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/TernaryFunctionAction;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method private insertElementBeforeChildInFormulaTree(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 2
    .param p1, "parent"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p2, "child"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p3, "elementToInsert"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 343
    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto :goto_2

    .line 347
    :cond_0
    iput-object p3, p2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 348
    invoke-virtual {p3, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setLeftChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 350
    if-nez p1, :cond_1

    .line 351
    return-void

    .line 354
    :cond_1
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-ne v0, p2, :cond_2

    .line 355
    iput-object p3, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    goto :goto_1

    .line 356
    :cond_2
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-ne v0, p2, :cond_3

    .line 357
    iput-object p3, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    goto :goto_1

    .line 359
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 360
    iget-object v1, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_4

    .line 361
    iget-object v1, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v1, v0, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "i":I
    :cond_5
    :goto_1
    return-void

    .line 344
    :cond_6
    :goto_2
    return-void
.end method

.method private interpretBinaryOperator(Lorg/catrobat/catroid/formulaeditor/Operators;Lorg/catrobat/catroid/content/Scope;)D
    .locals 16
    .param p1, "operator"    # Lorg/catrobat/catroid/formulaeditor/Operators;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 792
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-static {v0, v2}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryInterpretElementRecursive(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v3

    .line 793
    .local v3, "leftObject":Ljava/lang/Object;
    iget-object v0, v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-static {v0, v2}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryInterpretElementRecursive(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v4

    .line 795
    .local v4, "rightObject":Ljava/lang/Object;
    invoke-static {v3}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryInterpretDoubleValue(Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 796
    .local v5, "leftDouble":Ljava/lang/Double;
    invoke-static {v4}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryInterpretDoubleValue(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 801
    .local v6, "rightDouble":Ljava/lang/Double;
    const-wide/16 v7, 0x0

    :try_start_0
    invoke-static {v3}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryInterpretDoubleValue(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    .local v0, "left":Ljava/math/BigDecimal;
    move-object v9, v0

    goto :goto_0

    .line 802
    .end local v0    # "left":Ljava/math/BigDecimal;
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v7, v8}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v9

    .line 806
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v9, "left":Ljava/math/BigDecimal;
    :goto_0
    :try_start_1
    invoke-static {v4}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryInterpretDoubleValue(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 809
    .local v0, "right":Ljava/math/BigDecimal;
    goto :goto_1

    .line 807
    .end local v0    # "right":Ljava/math/BigDecimal;
    :catch_1
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v7, v8}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v10

    move-object v0, v10

    .line 811
    .local v0, "right":Ljava/math/BigDecimal;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v10, :cond_1

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_0
    move v10, v11

    goto :goto_3

    :cond_1
    :goto_2
    move v10, v12

    .line 813
    .local v10, "atLeastOneIsNaN":Z
    :goto_3
    sget-object v13, Lorg/catrobat/catroid/formulaeditor/FormulaElement$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Operators:[I

    invoke-virtual/range {p1 .. p1}, Lorg/catrobat/catroid/formulaeditor/Operators;->ordinal()I

    move-result v14

    aget v13, v13, v14

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    packed-switch v13, :pswitch_data_0

    .line 856
    :pswitch_0
    return-wide v7

    .line 854
    :pswitch_1
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v13, v13, v7

    if-nez v13, :cond_2

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v7, v13, v7

    if-eqz v7, :cond_3

    :cond_2
    move v11, v12

    :cond_3
    invoke-static {v11}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v7

    return-wide v7

    .line 852
    :pswitch_2
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v13, v13, v7

    if-eqz v13, :cond_4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v7, v13, v7

    if-eqz v7, :cond_4

    move v11, v12

    :cond_4
    invoke-static {v11}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v7

    return-wide v7

    .line 850
    :pswitch_3
    invoke-virtual {v5, v6}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v7

    if-gtz v7, :cond_5

    move v11, v12

    :cond_5
    invoke-static {v11}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v7

    return-wide v7

    .line 848
    :pswitch_4
    invoke-virtual {v5, v6}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v7

    if-gez v7, :cond_6

    move v11, v12

    :cond_6
    invoke-static {v11}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v7

    return-wide v7

    .line 846
    :pswitch_5
    invoke-virtual {v5, v6}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v7

    if-ltz v7, :cond_7

    move v11, v12

    :cond_7
    invoke-static {v11}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v7

    return-wide v7

    .line 844
    :pswitch_6
    invoke-virtual {v5, v6}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v7

    if-lez v7, :cond_8

    move v11, v12

    :cond_8
    invoke-static {v11}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v7

    return-wide v7

    .line 842
    :pswitch_7
    invoke-static {v3, v4}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretOperatorEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v12

    invoke-static {v7}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v7

    return-wide v7

    .line 840
    :pswitch_8
    invoke-static {v3, v4}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretOperatorEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v7

    return-wide v7

    .line 835
    :pswitch_9
    if-eqz v10, :cond_9

    .line 836
    return-wide v14

    .line 838
    :cond_9
    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    return-wide v7

    .line 830
    :pswitch_a
    if-nez v10, :cond_b

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_4

    .line 833
    :cond_a
    sget-object v7, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v9, v0, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    return-wide v7

    .line 831
    :cond_b
    :goto_4
    return-wide v14

    .line 825
    :pswitch_b
    if-eqz v10, :cond_c

    .line 826
    return-wide v14

    .line 828
    :cond_c
    sget-object v7, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v9, v0, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    return-wide v7

    .line 815
    :pswitch_c
    if-eqz v10, :cond_d

    .line 816
    return-wide v14

    .line 818
    :cond_d
    sget-object v7, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v9, v0, v7}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    return-wide v7

    .line 820
    :pswitch_d
    if-eqz v10, :cond_e

    .line 821
    return-wide v14

    .line 823
    :cond_e
    sget-object v7, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v9, v0, v7}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    return-wide v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private interpretFormulaFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Ljava/util/List;)Ljava/lang/Object;
    .locals 7
    .param p1, "function"    # Lorg/catrobat/catroid/formulaeditor/Functions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 505
    .local p2, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v0, "argumentsDouble":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 507
    .local v2, "argument":Ljava/lang/Object;
    invoke-static {v2}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->convertArgumentToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v2    # "argument":Ljava/lang/Object;
    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->formulaFunctions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;

    .line 510
    .local v1, "formulaFunction":Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;
    if-nez v1, :cond_1

    .line 511
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 513
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 514
    new-array v2, v5, [Ljava/lang/Double;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    aput-object v5, v2, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;->execute([Ljava/lang/Double;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 516
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->IF_THEN_ELSE:Lorg/catrobat/catroid/formulaeditor/Functions;

    if-ne p1, v2, :cond_5

    .line 517
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 518
    .local v2, "ifCondition":Ljava/lang/Double;
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 519
    .local v3, "thenPart":Ljava/lang/Object;
    :goto_1
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 520
    .local v4, "elsePart":Ljava/lang/Object;
    :goto_2
    invoke-direct {p0, v2, v3, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionIfThenElseObject(Ljava/lang/Double;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 522
    .end local v2    # "ifCondition":Ljava/lang/Double;
    .end local v3    # "thenPart":Ljava/lang/Object;
    .end local v4    # "elsePart":Ljava/lang/Object;
    :cond_5
    new-array v2, v6, [Ljava/lang/Double;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    aput-object v6, v2, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    aput-object v3, v2, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;->execute([Ljava/lang/Double;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private interpretFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;
    .locals 5
    .param p1, "function"    # Lorg/catrobat/catroid/formulaeditor/Functions;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v0, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryInterpretRecursive(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryInterpretRecursive(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 451
    .local v2, "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0, v2, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryInterpretRecursive(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v2    # "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    goto :goto_0

    .line 454
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Functions:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Functions;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 492
    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFormulaFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 489
    :pswitch_0
    new-instance v1, Lorg/catrobat/catroid/sensing/ColorEqualsColor;

    invoke-direct {v1}, Lorg/catrobat/catroid/sensing/ColorEqualsColor;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x2

    .line 490
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 489
    invoke-virtual {v1, v3, v2, v4}, Lorg/catrobat/catroid/sensing/ColorEqualsColor;->tryInterpretFunctionColorEqualsColor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 487
    :pswitch_1
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->textBlockFunctionProvider:Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;->interpretFunctionTextBlockLanguage(D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 485
    :pswitch_2
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->textBlockFunctionProvider:Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;->interpretFunctionTextBlock(D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 482
    :pswitch_3
    new-instance v1, Lorg/catrobat/catroid/sensing/ColorAtXYDetection;

    sget-object v4, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-direct {v1, p2, v4}, Lorg/catrobat/catroid/sensing/ColorAtXYDetection;-><init>(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/stage/StageListener;)V

    .line 483
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/catrobat/catroid/sensing/ColorAtXYDetection;->tryInterpretFunctionColorAtXY(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 482
    return-object v1

    .line 479
    :pswitch_4
    new-instance v1, Lorg/catrobat/catroid/sensing/ColorCollisionDetection;

    sget-object v4, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-direct {v1, p2, v4}, Lorg/catrobat/catroid/sensing/ColorCollisionDetection;-><init>(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/stage/StageListener;)V

    .line 480
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/catrobat/catroid/sensing/ColorCollisionDetection;->tryInterpretFunctionColorTouchesColor(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 479
    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 476
    :pswitch_5
    new-instance v1, Lorg/catrobat/catroid/sensing/ColorCollisionDetection;

    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-direct {v1, p2, v2}, Lorg/catrobat/catroid/sensing/ColorCollisionDetection;-><init>(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/stage/StageListener;)V

    .line 477
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/sensing/ColorCollisionDetection;->tryInterpretFunctionTouchesColor(Ljava/lang/Object;)Z

    move-result v1

    .line 476
    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 474
    :pswitch_6
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-static {p2, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionFlatten(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 472
    :pswitch_7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionIndexOfItem(Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 470
    :pswitch_8
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionNumberOfItems(Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 468
    :pswitch_9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionContains(Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 466
    :pswitch_a
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionListItem(Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 464
    :pswitch_b
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-static {p2, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryInterpretFunctionRegex(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 462
    :pswitch_c
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-static {p2, v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionJoin3(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 460
    :pswitch_d
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-static {p2, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionJoin(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 458
    :pswitch_e
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionLength(Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 456
    :pswitch_f
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionLetter(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method private interpretFunctionContains(Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;
    .locals 5
    .param p1, "right"    # Ljava/lang/Object;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 542
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v0, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getUserListOfChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v0

    .line 543
    .local v0, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    const-wide/16 v1, 0x0

    .line 544
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 543
    if-nez v0, :cond_0

    .line 544
    return-object v1

    .line 547
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 548
    .local v3, "userListElement":Ljava/lang/Object;
    invoke-static {v3, p1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretOperatorEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 549
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 551
    .end local v3    # "userListElement":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 553
    :cond_2
    return-object v1
.end method

.method private static interpretFunctionFlatten(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Ljava/lang/String;
    .locals 1
    .param p0, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .param p1, "leftChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 604
    invoke-static {p1, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionString(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private interpretFunctionIfThenElse(DDD)D
    .locals 2
    .param p1, "condition"    # D
    .param p3, "thenValue"    # D
    .param p5, "elseValue"    # D

    .line 756
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 759
    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_1

    .line 760
    return-wide p3

    .line 762
    :cond_1
    return-wide p5
.end method

.method private interpretFunctionIfThenElseObject(Ljava/lang/Double;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "condition"    # Ljava/lang/Double;
    .param p2, "thenValue"    # Ljava/lang/Object;
    .param p3, "elseValue"    # Ljava/lang/Object;

    .line 746
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 749
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 750
    return-object p2

    .line 752
    :cond_1
    return-object p3
.end method

.method private interpretFunctionIndexOfItem(Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;
    .locals 3
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 557
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getElementType()Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserList(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v0

    .line 559
    .local v0, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getIndexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 562
    .end local v0    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static interpretFunctionJoin(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Ljava/lang/String;
    .locals 2
    .param p0, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .param p1, "leftChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p2, "rightChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 593
    invoke-static {p1, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionString(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionString(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static interpretFunctionJoin3(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .param p1, "leftChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p2, "rightChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Scope;",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 599
    .local p3, "additionalChildren":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/FormulaElement;>;"
    invoke-static {p1, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionString(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionString(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v1

    .line 600
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-static {v2, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionString(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private interpretFunctionLength(Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;
    .locals 3
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 658
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    const-wide/16 v1, 0x0

    .line 659
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 658
    if-nez v0, :cond_0

    .line 659
    return-object v1

    .line 661
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$FormulaElement$ElementType:[I

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v2, v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    .line 672
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    return-object v1

    .line 675
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 664
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 669
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserList(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v0

    .line 670
    .local v0, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-direct {p0, v0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->calculateUserListLength(Lorg/catrobat/catroid/formulaeditor/UserList;Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 666
    .end local v0    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_4
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserVariable(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v0

    .line 667
    .local v0, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->calculateUserVariableLength(Lorg/catrobat/catroid/formulaeditor/UserVariable;)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method private interpretFunctionLetter(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 715
    const-string v0, ""

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 719
    :cond_0
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryParseIntFromObject(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 720
    .local v1, "index":I
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 722
    .local v2, "stringValueOfRight":Ljava/lang/String;
    if-ltz v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 723
    :cond_2
    :goto_0
    return-object v0

    .line 716
    .end local v1    # "index":I
    .end local v2    # "stringValueOfRight":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private interpretFunctionListItem(Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;
    .locals 4
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 566
    const-string v0, ""

    if-nez p1, :cond_0

    .line 567
    return-object v0

    .line 570
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getUserListOfChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v1

    .line 571
    .local v1, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    if-nez v1, :cond_1

    .line 572
    return-object v0

    .line 575
    :cond_1
    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryParseIntFromObject(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 577
    .local v2, "index":I
    if-ltz v2, :cond_3

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_0

    .line 580
    :cond_2
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 578
    :cond_3
    :goto_0
    return-object v0
.end method

.method private interpretFunctionNumberOfItems(Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;
    .locals 3
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 526
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserList(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v0

    .line 528
    .local v0, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->handleNumberOfItemsOfUserListParameter(Lorg/catrobat/catroid/formulaeditor/UserList;)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 530
    .end local v0    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionLength(Ljava/lang/Object;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private interpretFunctionRand(DD)D
    .locals 8
    .param p1, "from"    # D
    .param p3, "to"    # D

    .line 729
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 730
    .local v0, "low":D
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 732
    .local v2, "high":D
    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 733
    return-wide v0

    .line 736
    :cond_0
    invoke-static {v0, v1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->isInteger(D)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->isInteger(D)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 737
    invoke-static {v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isNumberWithDecimalPoint(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-static {v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isNumberWithDecimalPoint(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 738
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v2

    sub-double/2addr v6, v0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    add-double/2addr v4, v0

    return-wide v4

    .line 740
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double v6, v2, v0

    mul-double/2addr v4, v6

    add-double/2addr v4, v0

    return-wide v4
.end method

.method private static interpretFunctionRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "patternString"    # Ljava/lang/String;
    .param p1, "matcherString"    # Ljava/lang/String;

    .line 619
    const/16 v0, 0x28

    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 620
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 621
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 622
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 623
    .local v2, "groupIndex":I
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 625
    .end local v2    # "groupIndex":I
    :cond_1
    const-string v2, ""

    return-object v2
.end method

.method private static interpretFunctionString(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;
    .locals 4
    .param p0, "child"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 630
    const-string v0, ""

    .line 631
    .local v0, "parameterInterpretation":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 632
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v1

    .line 633
    .local v1, "objectInterpretation":Ljava/lang/Object;
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$FormulaElement$ElementType:[I

    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getElementType()Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-static {v0}, Lorg/catrobat/catroid/utils/NumberFormats;->trimTrailingCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 636
    goto :goto_0

    .line 638
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->formatNumberString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .end local v1    # "objectInterpretation":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private interpretOperator(Lorg/catrobat/catroid/formulaeditor/Operators;Lorg/catrobat/catroid/content/Scope;)D
    .locals 2
    .param p1, "operator"    # Lorg/catrobat/catroid/formulaeditor/Operators;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 770
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-eqz v0, :cond_0

    .line 771
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretBinaryOperator(Lorg/catrobat/catroid/formulaeditor/Operators;Lorg/catrobat/catroid/content/Scope;)D

    move-result-wide v0

    return-wide v0

    .line 773
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretUnaryOperator(Lorg/catrobat/catroid/formulaeditor/Operators;Lorg/catrobat/catroid/content/Scope;)D

    move-result-wide v0

    return-wide v0
.end method

.method private interpretUnaryOperator(Lorg/catrobat/catroid/formulaeditor/Operators;Lorg/catrobat/catroid/content/Scope;)D
    .locals 8
    .param p1, "operator"    # Lorg/catrobat/catroid/formulaeditor/Operators;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 778
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryInterpretElementRecursive(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    .line 779
    .local v0, "rightObject":Ljava/lang/Object;
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryInterpretDoubleValue(Ljava/lang/Object;)D

    move-result-wide v1

    .line 781
    .local v1, "right":D
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/FormulaElement$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Operators:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Operators;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    if-eq v3, v5, :cond_0

    .line 787
    return-wide v6

    .line 785
    :cond_0
    cmpl-double v3, v1, v6

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v3

    return-wide v3

    .line 783
    :cond_2
    neg-double v3, v1

    return-wide v3
.end method

.method private static isNumberWithDecimalPoint(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Z
    .locals 2
    .param p0, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 766
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOtherBooleanFormulaElement()Z
    .locals 2

    .line 953
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->FUNCTION:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    .line 954
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Functions;->getFunctionByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Functions;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Functions;->isBoolean(Lorg/catrobat/catroid/formulaeditor/Functions;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    .line 956
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->getSensorByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->isBoolean(Lorg/catrobat/catroid/formulaeditor/Sensors;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    .line 958
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Operators;->getOperatorByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Operators;

    move-result-object v0

    iget-boolean v0, v0, Lorg/catrobat/catroid/formulaeditor/Operators;->isLogicalOperator:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 953
    :goto_0
    return v0
.end method

.method private isUserDefinedBrickInputBoolean(Lorg/catrobat/catroid/content/Scope;)Z
    .locals 2
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 944
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getSequence()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserDefinedBrickInput(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)Lorg/catrobat/catroid/formulaeditor/UserData;

    move-result-object v0

    .line 945
    .local v0, "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/catroid/formulaeditor/UserData;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_0

    .line 946
    invoke-interface {v0}, Lorg/catrobat/catroid/formulaeditor/UserData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isBoolean(Lorg/catrobat/catroid/content/Scope;)Z

    move-result v1

    return v1

    .line 948
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isUserListBoolean(Lorg/catrobat/catroid/content/Scope;)Z
    .locals 4
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 936
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserList(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v0

    .line 937
    .local v0, "listValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 938
    return v2

    .line 940
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    return v1
.end method

.method private isUserVariableBoolean(Lorg/catrobat/catroid/content/Scope;)Z
    .locals 2
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 931
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserVariable(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v0

    .line 932
    .local v0, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$CPjxhmdiHtDNiGlbEGTJxfv4we0(Lorg/catrobat/catroid/formulaeditor/FormulaElement;DDD)D
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionIfThenElse(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$LYK_c1nPHBL7g09d7QHzzN0MJi4(Lorg/catrobat/catroid/formulaeditor/FormulaElement;DD)D
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionRand(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private matchesTypeAndName(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)Z
    .locals 1
    .param p1, "queriedType"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
    .param p2, "name"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private rawInterpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;
    .locals 7
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 397
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    .line 398
    .local v0, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 399
    .local v2, "currentProject":Lorg/catrobat/catroid/content/Project;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 400
    .local v3, "currentlyPlayingScene":Lorg/catrobat/catroid/content/Scene;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    .line 402
    .local v1, "currentlyEditedScene":Lorg/catrobat/catroid/content/Scene;
    :cond_2
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$FormulaElement$ElementType:[I

    iget-object v5, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 433
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    return-object v4

    .line 429
    :pswitch_0
    sget-object v4, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    .line 430
    .local v4, "stageListener":Lorg/catrobat/catroid/stage/StageListener;
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    iget-object v5, v5, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    iget-object v6, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v5, v6, v3, v4}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryInterpretCollision(Lorg/catrobat/catroid/content/Look;Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/stage/StageListener;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    return-object v5

    .line 417
    .end local v4    # "stageListener":Lorg/catrobat/catroid/stage/StageListener;
    :pswitch_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v4, v1, v2, v5}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretSensor(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Project;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 410
    :pswitch_2
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    return-object v4

    .line 425
    :pswitch_3
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getSequence()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v5

    .line 425
    invoke-static {v4, v5}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserDefinedBrickInput(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)Lorg/catrobat/catroid/formulaeditor/UserData;

    move-result-object v4

    .line 427
    .local v4, "userBrickVariable":Lorg/catrobat/catroid/formulaeditor/UserData;
    invoke-static {v4}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretUserDefinedBrickInput(Lorg/catrobat/catroid/formulaeditor/UserData;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 422
    .end local v4    # "userBrickVariable":Lorg/catrobat/catroid/formulaeditor/UserData;
    :pswitch_4
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v4, p1}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserList(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v4

    .line 423
    .local v4, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-static {v4}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 419
    .end local v4    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    :pswitch_5
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v4, p1}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->getUserVariable(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v4

    .line 420
    .local v4, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-static {v4}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 414
    .end local v4    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :pswitch_6
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v4}, Lorg/catrobat/catroid/formulaeditor/Functions;->getFunctionByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Functions;

    move-result-object v4

    .line 415
    .local v4, "function":Lorg/catrobat/catroid/formulaeditor/Functions;
    invoke-direct {p0, v4, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 412
    .end local v4    # "function":Lorg/catrobat/catroid/formulaeditor/Functions;
    :pswitch_7
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryInterpretOperator(Lorg/catrobat/catroid/content/Scope;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 404
    :pswitch_8
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 405
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v4, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 407
    :cond_3
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v4, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

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
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private tryAddInternTokens(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 1
    .param p2, "child"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            ")V"
        }
    .end annotation

    .line 258
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    if-eqz p2, :cond_0

    .line 259
    invoke-virtual {p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getInternTokenList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    :cond_0
    return-void
.end method

.method private tryAddRequiredResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 0
    .param p2, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
            ")V"
        }
    .end annotation

    .line 1024
    .local p1, "resourceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 1025
    invoke-virtual {p2, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addRequiredResources(Ljava/util/Set;)V

    .line 1027
    :cond_0
    return-void
.end method

.method private tryCloneElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 1
    .param p1, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 998
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->clone()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static tryInterpretFunctionRegex(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Ljava/lang/String;
    .locals 3
    .param p0, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .param p1, "leftChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p2, "rightChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 610
    :try_start_0
    invoke-static {p1, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionString(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "left":Ljava/lang/String;
    invoke-static {p2, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionString(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "right":Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretFunctionRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 613
    .end local v0    # "left":Ljava/lang/String;
    .end local v1    # "right":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private tryInterpretOperator(Lorg/catrobat/catroid/content/Scope;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .param p2, "value"    # Ljava/lang/String;

    .line 438
    invoke-static {p2}, Lorg/catrobat/catroid/formulaeditor/Operators;->getOperatorByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Operators;

    move-result-object v0

    .line 439
    .local v0, "operator":Lorg/catrobat/catroid/formulaeditor/Operators;
    if-nez v0, :cond_0

    .line 440
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 442
    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretOperator(Lorg/catrobat/catroid/formulaeditor/Operators;Lorg/catrobat/catroid/content/Scope;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method private tryInterpretRecursive(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;
    .locals 1
    .param p1, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 498
    if-nez p1, :cond_0

    .line 499
    const/4 v0, 0x0

    return-object v0

    .line 501
    :cond_0
    invoke-virtual {p1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private tryUpdateCollisionFormulaToVersion(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Project;)V
    .locals 0
    .param p1, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p2, "currentProject"    # Lorg/catrobat/catroid/content/Project;

    .line 386
    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->updateCollisionFormulaToVersion(Lorg/catrobat/catroid/content/Project;)V

    .line 389
    :cond_0
    return-void
.end method

.method private tryUpdateElementByName(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)V
    .locals 0
    .param p1, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "type"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    .line 286
    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p1, p2, p3, p4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->updateElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)V

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method public addAdditionalChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 1
    .param p1, "child"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 875
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    iput-object p0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 877
    return-void
.end method

.method public addRequiredResources(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1002
    .local p1, "requiredResourcesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryAddRequiredResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 1003
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryAddRequiredResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 1005
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 1006
    .local v1, "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0, p1, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryAddRequiredResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 1007
    .end local v1    # "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    goto :goto_0

    .line 1009
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$FormulaElement$ElementType:[I

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 1017
    :cond_1
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1018
    goto :goto_1

    .line 1014
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->getSensorByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;->addSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V

    .line 1015
    goto :goto_1

    .line 1011
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Functions;->getFunctionByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Functions;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;->addFunctionResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Functions;)V

    .line 1012
    nop

    .line 1021
    :goto_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->clone()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 11

    .line 986
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryCloneElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    .line 987
    .local v0, "leftChildClone":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryCloneElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v8

    .line 988
    .local v8, "rightChildClone":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 989
    .local v9, "additionalChildrenClones":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/FormulaElement;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 990
    .local v2, "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryCloneElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    .end local v2    # "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    goto :goto_0

    .line 992
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    move-object v3, v1

    .line 993
    .local v3, "valueClone":Ljava/lang/String;
    new-instance v10, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const/4 v4, 0x0

    move-object v1, v10

    move-object v5, v0

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/util/List;)V

    return-object v10
.end method

.method public containsElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)Z
    .locals 4
    .param p1, "elementType"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    .line 963
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->containsElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-eqz v0, :cond_1

    .line 965
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->containsElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 968
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 969
    .local v2, "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->containsElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 970
    return v1

    .line 972
    .end local v2    # "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_2
    goto :goto_0

    .line 973
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 966
    :cond_4
    :goto_1
    return v1
.end method

.method public final containsSpriteInCollision(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->containsSpriteInCollision(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->containsSpriteInCollision(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 296
    .local v2, "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0, v2, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->containsSpriteInCollision(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    return v1

    .line 299
    .end local v2    # "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_1
    goto :goto_0

    .line 300
    :cond_2
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->matchesTypeAndName(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 293
    :cond_3
    :goto_1
    return v1
.end method

.method public getElementType()Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    return-object v0
.end method

.method public getInternTokenList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 179
    .local v0, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$FormulaElement$ElementType:[I

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_1
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    .line 206
    goto :goto_0

    .line 202
    :pswitch_2
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    .line 203
    goto :goto_0

    .line 199
    :pswitch_3
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/utils/NumberFormats;->trimTrailingCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    .line 200
    goto :goto_0

    .line 196
    :pswitch_4
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_DEFINED_BRICK_INPUT:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    .line 197
    goto :goto_0

    .line 193
    :pswitch_5
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    .line 194
    goto :goto_0

    .line 190
    :pswitch_6
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addToken(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    .line 191
    goto :goto_0

    .line 187
    :pswitch_7
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addFunctionTokens(Ljava/util/List;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 188
    goto :goto_0

    .line 184
    :pswitch_8
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addOperatorTokens(Ljava/util/List;Ljava/lang/String;)V

    .line 185
    goto :goto_0

    .line 181
    :pswitch_9
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addBracketTokens(Ljava/util/List;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 182
    nop

    .line 211
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

.method public getParent()Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 1

    .line 861
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    return-object v0
.end method

.method public getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 2

    .line 264
    move-object v0, p0

    .line 265
    .local v0, "root":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :goto_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getParent()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getParent()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_0
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0}, Lorg/catrobat/catroid/utils/NumberFormats;->trimTrailingCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertFlattenBetweenParentAndElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 3
    .param p1, "parent"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p2, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 336
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->FUNCTION:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->FLATTEN:Lorg/catrobat/catroid/formulaeditor/Functions;

    .line 337
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 338
    .local v0, "flatten":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0, p1, p2, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->insertElementBeforeChildInFormulaTree(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 339
    return-void
.end method

.method public final insertFlattenForAllUserLists(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 2
    .param p1, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p2, "parent"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 308
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->insertFlattenForAllUserLists(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 311
    :cond_0
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->insertFlattenForAllUserLists(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 314
    :cond_1
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 315
    .local v1, "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {p0, v1, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->insertFlattenForAllUserLists(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 318
    .end local v1    # "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_2
    goto :goto_0

    .line 319
    :cond_3
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isNotUserListFunction(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    invoke-virtual {p0, p2, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->insertFlattenBetweenParentAndElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 322
    :cond_4
    return-void
.end method

.method public interpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;
    .locals 2
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 392
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rawInterpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    .line 393
    .local v0, "rawReturnValue":Ljava/lang/Object;
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->normalizeDegeneratedDoubleValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isBoolean(Lorg/catrobat/catroid/content/Scope;)Z
    .locals 2
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 919
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_0

    .line 920
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isUserVariableBoolean(Lorg/catrobat/catroid/content/Scope;)Z

    move-result v0

    return v0

    .line 921
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_1

    .line 922
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isUserListBoolean(Lorg/catrobat/catroid/content/Scope;)Z

    move-result v0

    return v0

    .line 923
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_DEFINED_BRICK_INPUT:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_2

    .line 924
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isUserDefinedBrickInputBoolean(Lorg/catrobat/catroid/content/Scope;)Z

    move-result v0

    return v0

    .line 926
    :cond_2
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isOtherBooleanFormulaElement()Z

    move-result v0

    return v0
.end method

.method public isNotUserListFunction(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Z
    .locals 2
    .param p1, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 325
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->FUNCTION:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->CONTAINS:Lorg/catrobat/catroid/formulaeditor/Functions;

    .line 327
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->NUMBER_OF_ITEMS:Lorg/catrobat/catroid/formulaeditor/Functions;

    .line 328
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->LIST_ITEM:Lorg/catrobat/catroid/formulaeditor/Functions;

    .line 329
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->INDEX_OF_ITEM:Lorg/catrobat/catroid/formulaeditor/Functions;

    .line 330
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->FLATTEN:Lorg/catrobat/catroid/formulaeditor/Functions;

    .line 331
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 325
    :goto_1
    return v0
.end method

.method public isNumber()Z
    .locals 4

    .line 977
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 978
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Operators;->getOperatorByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Operators;

    move-result-object v0

    .line 979
    .local v0, "operator":Lorg/catrobat/catroid/formulaeditor/Operators;
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 981
    .end local v0    # "operator":Lorg/catrobat/catroid/formulaeditor/Operators;
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
    .param p2, "value"    # Ljava/lang/String;

    .line 907
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    .line 908
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    .line 909
    return-void
.end method

.method public replaceElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 3
    .param p1, "current"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 880
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 881
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 882
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 883
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 884
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 885
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    iget-object v2, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 887
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    iget-object v2, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 890
    .end local v0    # "index":I
    :cond_1
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    .line 891
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    .line 893
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-eqz v0, :cond_2

    .line 894
    iput-object p0, v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 896
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-eqz v0, :cond_3

    .line 897
    iput-object p0, v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 899
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 900
    .local v1, "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    if-eqz v1, :cond_4

    .line 901
    iput-object p0, v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 903
    .end local v1    # "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_4
    goto :goto_2

    .line 904
    :cond_5
    return-void
.end method

.method public replaceWithSubElement(Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 7
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "rightChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 912
    new-instance v6, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getParent()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v3

    move-object v0, v6

    move-object v2, p1

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 915
    .local v0, "cloneThis":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    iput-object v0, v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 916
    return-void
.end method

.method public setLeftChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 0
    .param p1, "leftChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 870
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 871
    iput-object p0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 872
    return-void
.end method

.method public setRightChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 0
    .param p1, "rightChild"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 865
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 866
    iput-object p0, p1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->parent:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 867
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1030
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    .line 1031
    return-void
.end method

.method public updateCollisionFormulaToVersion(Lorg/catrobat/catroid/content/Project;)V
    .locals 2
    .param p1, "currentProject"    # Lorg/catrobat/catroid/content/Project;

    .line 372
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryUpdateCollisionFormulaToVersion(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Project;)V

    .line 373
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryUpdateCollisionFormulaToVersion(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Project;)V

    .line 374
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 375
    .local v1, "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0, v1, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryUpdateCollisionFormulaToVersion(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Project;)V

    .line 376
    .end local v1    # "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->type:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_1

    .line 378
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/sensing/CollisionDetection;->getSecondSpriteNameFromCollisionFormulaString(Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "secondSpriteName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 380
    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    .line 383
    .end local v0    # "secondSpriteName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public updateElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    .line 272
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->leftChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryUpdateElementByName(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)V

    .line 273
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->rightChild:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryUpdateElementByName(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)V

    .line 275
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->additionalChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 276
    .local v1, "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-direct {p0, v1, p1, p2, p3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->tryUpdateElementByName(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)V

    .line 277
    .end local v1    # "child":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0, p3, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->matchesTypeAndName(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->value:Ljava/lang/String;

    .line 282
    :cond_1
    return-void
.end method
