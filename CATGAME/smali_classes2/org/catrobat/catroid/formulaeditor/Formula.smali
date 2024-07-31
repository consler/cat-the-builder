.class public Lorg/catrobat/catroid/formulaeditor/Formula;
.super Ljava/lang/Object;
.source "Formula.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;
    }
.end annotation


# static fields
.field private static final ERROR_STRING:Ljava/lang/String; = "ERROR"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

.field private transient internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;


# direct methods
.method public constructor <init>(Ljava/lang/Double;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Double;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->initInverted(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->init(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Float;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->initInverted(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->init(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 72
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINOANALOG:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINOANALOG:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Functions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    goto :goto_0

    .line 74
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINODIGITAL:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINODIGITAL:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Functions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    goto :goto_0

    .line 77
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->STRING:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->init(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 2
    .param p1, "formulaElement"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 48
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getInternTokenList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 49
    return-void
.end method

.method private assertNotNaN(Ljava/lang/Double;)D
    .locals 2
    .param p1, "doubleReturnValue"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InterpretationException;
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 159
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InterpretationException;

    const-string v1, "NaN in interpretDouble()"

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InterpretationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
    .param p2, "s"    # Ljava/lang/String;

    .line 86
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 87
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getInternTokenList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 88
    return-void
.end method

.method private initInverted(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 91
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/Operators;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 92
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {v1, v2, p1, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setRightChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 93
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getInternTokenList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 94
    return-void
.end method

.method private interpretDoubleInternal(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;
    .locals 2
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 147
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 150
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .local v1, "doubleReturnValue":Ljava/lang/Double;
    goto :goto_0

    .line 152
    .end local v1    # "doubleReturnValue":Ljava/lang/Double;
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    .line 154
    .restart local v1    # "doubleReturnValue":Ljava/lang/Double;
    :goto_0
    return-object v1
.end method

.method private toLocalizedString(ZLorg/catrobat/catroid/formulaeditor/Formula$StringProvider;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Z
    .param p2, "stringProvider"    # Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;

    .line 256
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;->getTrueOrFalse(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryInterpretBooleanToString(Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;
    .locals 2
    .param p1, "stringProvider"    # Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 239
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretBooleanToString(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const-string v1, "ERROR"

    return-object v1
.end method

.method private tryInterpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;
    .locals 2
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 231
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const-string v1, "ERROR"

    return-object v1
.end method


# virtual methods
.method public addRequiredResources(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p1, "requiredResourcesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addRequiredResources(Ljava/util/Set;)V

    .line 219
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/Formula;->clone()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 2

    .line 210
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-eqz v0, :cond_0

    .line 211
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->clone()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    return-object v1

    .line 214
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public containsElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)Z
    .locals 1
    .param p1, "elementType"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    .line 201
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->containsElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)Z

    move-result v0

    return v0
.end method

.method public containsSpriteInCollision(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->containsSpriteInCollision(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public flattenAllLists()V
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->insertFlattenForAllUserLists(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 103
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 104
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getInternTokenList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setInternTokenFormulaList(Ljava/util/List;)V

    .line 105
    return-void
.end method

.method public getFormulaTree()Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    return-object v0
.end method

.method public getInternFormulaState()Lorg/catrobat/catroid/formulaeditor/InternFormulaState;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getInternFormulaState()Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    return-object v0
.end method

.method public getTrimmedFormulaString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 193
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->trimExternFormulaString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserFriendlyString(Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;
    .locals 1
    .param p1, "stringProvider"    # Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 222
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isBoolean(Lorg/catrobat/catroid/content/Scope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/Formula;->tryInterpretBooleanToString(Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_0
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/formulaeditor/Formula;->tryInterpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interpretBoolean(Lorg/catrobat/catroid/content/Scope;)Z
    .locals 1
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InterpretationException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public interpretBooleanToString(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;)Ljava/lang/String;
    .locals 2
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .param p2, "stringProvider"    # Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InterpretationException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretBoolean(Lorg/catrobat/catroid/content/Scope;)Z

    move-result v0

    .line 248
    .local v0, "booleanValue":Z
    invoke-direct {p0, v0, p2}, Lorg/catrobat/catroid/formulaeditor/Formula;->toLocalizedString(ZLorg/catrobat/catroid/formulaeditor/Formula$StringProvider;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;
    .locals 3
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InterpretationException;
        }
    .end annotation

    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDoubleInternal(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->assertNotNaN(Ljava/lang/Double;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 141
    .local v0, "exception":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InterpretationException;

    const-string v2, "Couldn\'t interpret Formula."

    invoke-direct {v1, v2, v0}, Lorg/catrobat/catroid/formulaeditor/InterpretationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;
    .locals 1
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InterpretationException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;
    .locals 1
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InterpretationException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public interpretObject(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;
    .locals 1
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 180
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;
    .locals 3
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InterpretationException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, "interpretation":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InterpretationException;

    const-string v2, "NaN in interpretString()"

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InterpretationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lorg/catrobat/catroid/utils/NumberFormats;->trimTrailingCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isNumber()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isNumber()Z

    move-result v0

    return v0
.end method

.method public setRoot(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 2
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 184
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 185
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getInternTokenList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 186
    return-void
.end method

.method public updateCollisionFormulas(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0, p1, p2, p3}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateCollisionFormula(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->updateElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)V

    .line 99
    return-void
.end method

.method public updateCollisionFormulasToVersion()V
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateCollisionFormulaToVersion(Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->updateCollisionFormulaToVersion(Lorg/catrobat/catroid/content/Project;)V

    .line 110
    return-void
.end method

.method public updateDirectionPropertyToVersion()V
    .locals 4

    .line 113
    const-string v0, "OBJECT_ROTATION"

    .line 114
    .local v0, "oldName":Ljava/lang/String;
    const-string v1, "MOTION_DIRECTION"

    .line 115
    .local v1, "newName":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateSensorTokens(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 116
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {v2, v0, v1, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->updateElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)V

    .line 117
    return-void
.end method

.method public updateUserlistName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateListReferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->updateElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)V

    .line 127
    return-void
.end method

.method public updateVariableName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateVariableReferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/Formula;->formulaTree:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->updateElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)V

    .line 122
    return-void
.end method
