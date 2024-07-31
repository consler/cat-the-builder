.class public Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;
.super Ljava/lang/Object;
.source "InternFormulaKeyboardAdapter.java"


# static fields
.field public static final FORMULA_EDITOR_COLLIDE_RESOURCE_ID:I = 0x3

.field public static final FORMULA_EDITOR_USER_DEFINED_BRICK_INPUT_RESOURCE_ID:I = 0x2

.field public static final FORMULA_EDITOR_USER_LIST_RESOURCE_ID:I = 0x1

.field public static final FORMULA_EDITOR_USER_VARIABLE_RESOURCE_ID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildBracketClose()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 605
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 606
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    return-object v0
.end method

.method private buildBracketOpen()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 600
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    return-object v0
.end method

.method private buildCollideWithFormula(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "formula"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 630
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 631
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2, p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    return-object v0
.end method

.method private buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "function"    # Lorg/catrobat/catroid/formulaeditor/Functions;
    .param p2, "firstParameter"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .param p3, "firstParameterNumberValue"    # Ljava/lang/String;
    .param p4, "secondParameter"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .param p5, "secondParameterNumberValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 682
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 683
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-direct {v1, p2, p3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-direct {v1, p4, p5}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    return-object v0
.end method

.method private buildDoubleParameterFunctionWithNegativeValues(Lorg/catrobat/catroid/formulaeditor/Functions;ZLorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;ZLorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "function"    # Lorg/catrobat/catroid/formulaeditor/Functions;
    .param p2, "isFirstParameterNegative"    # Z
    .param p3, "firstParameter"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .param p4, "firstParameterNumberValue"    # Ljava/lang/String;
    .param p5, "isSecondParameterNegative"    # Z
    .param p6, "secondParameter"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .param p7, "secondParameterNumberValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            "Z",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 718
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    if-eqz p2, :cond_0

    .line 721
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-direct {v1, p3, p4}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    if-eqz p5, :cond_1

    .line 726
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_1
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-direct {v1, p6, p7}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    return-object v0
.end method

.method private buildFunctionWithoutParametersAndBrackets(Lorg/catrobat/catroid/formulaeditor/Functions;)Ljava/util/List;
    .locals 4
    .param p1, "function"    # Lorg/catrobat/catroid/formulaeditor/Functions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 703
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 704
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    return-object v0
.end method

.method private buildNumber(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "numberValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 642
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 643
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2, p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    return-object v0
.end method

.method private buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;
    .locals 4
    .param p1, "sensors"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/Sensors;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 648
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 649
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    return-object v0
.end method

.method private buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;
    .locals 4
    .param p1, "operator"    # Lorg/catrobat/catroid/formulaeditor/Operators;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/Operators;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 654
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 655
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    return-object v0
.end method

.method private buildPeriod()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 636
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 637
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->PERIOD:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    return-object v0
.end method

.method private buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;
    .locals 4
    .param p1, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/Sensors;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 660
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 661
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    return-object v0
.end method

.method private buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "function"    # Lorg/catrobat/catroid/formulaeditor/Functions;
    .param p2, "firstParameter"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .param p3, "parameterNumberValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 694
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 695
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-direct {v1, p2, p3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    return-object v0
.end method

.method private buildString(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "myString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 709
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 710
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2, p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    return-object v0
.end method

.method private buildTripleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "function"    # Lorg/catrobat/catroid/formulaeditor/Functions;
    .param p2, "firstParameter"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .param p3, "firstParameterNumberValue"    # Ljava/lang/String;
    .param p4, "secondParameter"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .param p5, "secondParameterNumberValue"    # Ljava/lang/String;
    .param p6, "thirdParameter"    # Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .param p7, "thirdParameterNumberValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 668
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 669
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-direct {v1, p2, p3}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-direct {v1, p4, p5}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    invoke-direct {v1, p6, p7}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    return-object v0
.end method

.method private buildUserDefinedBrickInput(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "userDefinedBrickInput"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 623
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 624
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_DEFINED_BRICK_INPUT:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2, p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    return-object v0
.end method

.method private buildUserList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "userListName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 612
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2, p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    return-object v0
.end method

.method private buildUserVariable(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "userVariableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 618
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/InternToken;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {v1, v2, p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;-><init>(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    return-object v0
.end method


# virtual methods
.method public createInternTokenListByResourceId(ILjava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 55
    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildUserVariable(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildUserList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 63
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildUserDefinedBrickInput(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 67
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildCollideWithFormula(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 71
    :cond_3
    const v0, 0x7f0a03b1

    if-ne p1, v0, :cond_4

    .line 72
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "4"

    const-string v1, "0"

    const-string v2, "1"

    sparse-switch p1, :sswitch_data_0

    .line 595
    const/4 v0, 0x0

    return-object v0

    .line 225
    :sswitch_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->Z_ACCELERATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 241
    :sswitch_1
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->Y_INCLINATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 223
    :sswitch_2
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->Y_ACCELERATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 239
    :sswitch_3
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->X_INCLINATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 221
    :sswitch_4
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->X_ACCELERATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 237
    :sswitch_5
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->USER_LANGUAGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 413
    :sswitch_6
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->TIMER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 427
    :sswitch_7
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->TIME_SECOND:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 425
    :sswitch_8
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->TIME_MINUTE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 423
    :sswitch_9
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->TIME_HOUR:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 565
    :sswitch_a
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_FROM_CAMERA:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 567
    :sswitch_b
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCKS_NUMBER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 259
    :sswitch_c
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 257
    :sswitch_d
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 255
    :sswitch_e
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_SIZE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 253
    :sswitch_f
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_DETECTED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 335
    :sswitch_10
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_WRIST_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 333
    :sswitch_11
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_WRIST_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 359
    :sswitch_12
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_THUMB_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 357
    :sswitch_13
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_THUMB_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 319
    :sswitch_14
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_SHOULDER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 317
    :sswitch_15
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_SHOULDER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 343
    :sswitch_16
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_PINKY_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 341
    :sswitch_17
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_PINKY_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 375
    :sswitch_18
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_KNEE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 373
    :sswitch_19
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_KNEE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 351
    :sswitch_1a
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 349
    :sswitch_1b
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 367
    :sswitch_1c
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HIP_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 365
    :sswitch_1d
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HIP_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 391
    :sswitch_1e
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HEEL_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 389
    :sswitch_1f
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HEEL_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 399
    :sswitch_20
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_FOOT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 397
    :sswitch_21
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_FOOT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 295
    :sswitch_22
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_OUTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 293
    :sswitch_23
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_OUTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 287
    :sswitch_24
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_INNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 285
    :sswitch_25
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_INNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 291
    :sswitch_26
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_CENTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 289
    :sswitch_27
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_CENTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 327
    :sswitch_28
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ELBOW_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 325
    :sswitch_29
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ELBOW_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 303
    :sswitch_2a
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EAR_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 301
    :sswitch_2b
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EAR_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 383
    :sswitch_2c
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ANKLE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 381
    :sswitch_2d
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ANKLE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 271
    :sswitch_2e
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->NOSE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 269
    :sswitch_2f
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->NOSE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 267
    :sswitch_30
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->NECK_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 265
    :sswitch_31
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->NECK_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 311
    :sswitch_32
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_RIGHT_CORNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 309
    :sswitch_33
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_RIGHT_CORNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 307
    :sswitch_34
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_LEFT_CORNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 305
    :sswitch_35
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_LEFT_CORNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 243
    :sswitch_36
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LOUDNESS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 231
    :sswitch_37
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LONGITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 233
    :sswitch_38
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LOCATION_ACCURACY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 440
    :sswitch_39
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_4:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 438
    :sswitch_3a
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_3:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 436
    :sswitch_3b
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_2:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 434
    :sswitch_3c
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_1:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 449
    :sswitch_3d
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_4:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 447
    :sswitch_3e
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_3:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 445
    :sswitch_3f
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_2:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 443
    :sswitch_40
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_1:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 331
    :sswitch_41
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_WRIST_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 329
    :sswitch_42
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_WRIST_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 355
    :sswitch_43
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_THUMB_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 353
    :sswitch_44
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_THUMB_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 315
    :sswitch_45
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_SHOULDER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 313
    :sswitch_46
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_SHOULDER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 339
    :sswitch_47
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_PINKY_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 337
    :sswitch_48
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_PINKY_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 371
    :sswitch_49
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_KNEE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 369
    :sswitch_4a
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_KNEE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 347
    :sswitch_4b
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 345
    :sswitch_4c
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 363
    :sswitch_4d
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HIP_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 361
    :sswitch_4e
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HIP_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 387
    :sswitch_4f
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HEEL_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 385
    :sswitch_50
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HEEL_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 395
    :sswitch_51
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_FOOT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 393
    :sswitch_52
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_FOOT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 283
    :sswitch_53
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_OUTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 281
    :sswitch_54
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_OUTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 275
    :sswitch_55
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_INNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 273
    :sswitch_56
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_INNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 279
    :sswitch_57
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_CENTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 277
    :sswitch_58
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_CENTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 323
    :sswitch_59
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ELBOW_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 321
    :sswitch_5a
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ELBOW_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 299
    :sswitch_5b
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EAR_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 297
    :sswitch_5c
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EAR_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 379
    :sswitch_5d
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ANKLE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 377
    :sswitch_5e
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ANKLE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 229
    :sswitch_5f
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LATITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 263
    :sswitch_60
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->HEAD_TOP_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 261
    :sswitch_61
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->HEAD_TOP_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 456
    :sswitch_62
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_UP_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 462
    :sswitch_63
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_RIGHT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 460
    :sswitch_64
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_LEFT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 458
    :sswitch_65
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_DOWN_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 454
    :sswitch_66
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_B_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 452
    :sswitch_67
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_A_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 251
    :sswitch_68
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 249
    :sswitch_69
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 247
    :sswitch_6a
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_SIZE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 245
    :sswitch_6b
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_DETECTED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 475
    :sswitch_6c
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_USB_REMAINING_TIME:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 473
    :sswitch_6d
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_USB_ACTIVE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 481
    :sswitch_6e
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_RECORDING:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 479
    :sswitch_6f
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_RECORD_READY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 483
    :sswitch_70
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_NUM_FRAMES:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 471
    :sswitch_71
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_INITIALIZED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 469
    :sswitch_72
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_FLYING:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 467
    :sswitch_73
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_EMERGENCY_STATE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 477
    :sswitch_74
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_CAMERA_READY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 465
    :sswitch_75
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_BATTERY_STATUS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 415
    :sswitch_76
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DATE_YEAR:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 421
    :sswitch_77
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DATE_WEEKDAY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 417
    :sswitch_78
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DATE_MONTH:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 419
    :sswitch_79
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->DATE_DAY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 227
    :sswitch_7a
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->COMPASS_DIRECTION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 218
    :sswitch_7b
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->COLOR_EQUALS_COLOR:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v7, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "#ff0000"

    const-string v6, "#fe0000"

    const-string v8, "1"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildTripleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 216
    :sswitch_7c
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->COLOR_AT_XY:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "100"

    const-string v6, "200"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 235
    :sswitch_7d
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->ALTITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 407
    :sswitch_7e
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_SIDE_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 405
    :sswitch_7f
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_SIDE_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 403
    :sswitch_80
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_FRONT_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 401
    :sswitch_81
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_FRONT_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 411
    :sswitch_82
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_BOTTOM_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 409
    :sswitch_83
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_BOTTOM_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 497
    :sswitch_84
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->POW:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 543
    :sswitch_85
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_Y_VELOCITY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 525
    :sswitch_86
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 541
    :sswitch_87
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_X_VELOCITY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 523
    :sswitch_88
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 527
    :sswitch_89
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_TRANSPARENCY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 533
    :sswitch_8a
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_SIZE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 537
    :sswitch_8b
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LOOK_DIRECTION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 535
    :sswitch_8c
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOTION_DIRECTION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 552
    :sswitch_8d
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_NUMBER_OF_LOOKS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 547
    :sswitch_8e
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_LOOK_NUMBER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 549
    :sswitch_8f
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_LOOK_NAME:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 539
    :sswitch_90
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_LAYER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 558
    :sswitch_91
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_DISTANCE_TO:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 531
    :sswitch_92
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_COLOR:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 529
    :sswitch_93
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_BRIGHTNESS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 554
    :sswitch_94
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_BACKGROUND_NUMBER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 556
    :sswitch_95
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_BACKGROUND_NAME:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 545
    :sswitch_96
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_ANGULAR_VELOCITY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 431
    :sswitch_97
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->NFC_TAG_MESSAGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 429
    :sswitch_98
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->NFC_TAG_ID:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 513
    :sswitch_99
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_OR:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 501
    :sswitch_9a
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->NOT_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 515
    :sswitch_9b
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_NOT:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 503
    :sswitch_9c
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->SMALLER_THAN:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 505
    :sswitch_9d
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->SMALLER_OR_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 507
    :sswitch_9e
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->GREATER_THAN:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 509
    :sswitch_9f
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->GREATER_OR_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 499
    :sswitch_a0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 511
    :sswitch_a1
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_AND:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 588
    :sswitch_a2
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->SPEECH_RECOGNITION_LANGUAGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 157
    :sswitch_a3
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TRUE:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildFunctionWithoutParametersAndBrackets(Lorg/catrobat/catroid/formulaeditor/Functions;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 562
    :sswitch_a4
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->COLLIDES_WITH_FINGER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 572
    :sswitch_a5
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TEXT_BLOCK_Y:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 569
    :sswitch_a6
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TEXT_BLOCK_X:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 575
    :sswitch_a7
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TEXT_BLOCK_SIZE:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 581
    :sswitch_a8
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TEXT_BLOCK_LANGUAGE_FROM_CAMERA:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 578
    :sswitch_a9
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TEXT_BLOCK_FROM_CAMERA:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 102
    :sswitch_aa
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TAN:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "45"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 110
    :sswitch_ab
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->SQRT:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v1, v2, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 98
    :sswitch_ac
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->SIN:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "90"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 118
    :sswitch_ad
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ROUND:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "1.6"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 174
    :sswitch_ae
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->REGEX:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, " an? ([^ .]+)"

    const-string v6, "I am a panda."

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 195
    :sswitch_af
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->RASPIDIGITAL:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v2, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 112
    :sswitch_b0
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->RAND:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "1"

    const-string v6, "6"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 136
    :sswitch_b1
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->POWER:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "2"

    const-string v6, "3"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 108
    :sswitch_b2
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->PI:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildFunctionWithoutParametersAndBrackets(Lorg/catrobat/catroid/formulaeditor/Functions;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 593
    :sswitch_b3
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->OBJECT_WITH_ID_VISIBLE:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 166
    :sswitch_b4
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->NUMBER_OF_ITEMS:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "list name"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 212
    :sswitch_b5
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->NUMBER_CURRENT_TOUCHES:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 206
    :sswitch_b6
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->MULTI_FINGER_Y:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 204
    :sswitch_b7
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->MULTI_FINGER_X:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 120
    :sswitch_b8
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->MOD:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "3"

    const-string v6, "2"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 148
    :sswitch_b9
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->MIN:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "7"

    const-string v6, "2"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 144
    :sswitch_ba
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->MAX:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "5"

    const-string v6, "4"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 106
    :sswitch_bb
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->LOG:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "10"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 104
    :sswitch_bc
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->LN:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "2.718281828459"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 177
    :sswitch_bd
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->LIST_ITEM:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "1"

    const-string v6, "list name"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 161
    :sswitch_be
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->LETTER:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "1"

    const-string v6, "hello world"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 164
    :sswitch_bf
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->LENGTH:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "hello world"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 171
    :sswitch_c0
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->JOIN3:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v7, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "hello"

    const-string v6, " world"

    const-string v8, "!"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildTripleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 168
    :sswitch_c1
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->JOIN:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "hello"

    const-string v6, " world"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 208
    :sswitch_c2
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->MULTI_FINGER_TOUCHED:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 202
    :sswitch_c3
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->FINGER_TOUCHED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 210
    :sswitch_c4
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LAST_FINGER_INDEX:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 184
    :sswitch_c5
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->INDEX_OF_ITEM:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "1"

    const-string v6, "list_name"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 214
    :sswitch_c6
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->INDEX_CURRENT_TOUCH:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 152
    :sswitch_c7
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->IF_THEN_ELSE:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 153
    const-string v0, "FALSE"

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/Functions;->getFunctionByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Functions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Functions;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v7, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 152
    const-string v6, "2"

    const-string v8, "3"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildTripleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 591
    :sswitch_c8
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ID_OF_DETECTED_OBJECT:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 140
    :sswitch_c9
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->FLOOR:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "0.7"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 188
    :sswitch_ca
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->FLATTEN:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "list_name"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 200
    :sswitch_cb
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->FINGER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 198
    :sswitch_cc
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->FINGER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 159
    :sswitch_cd
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->FALSE:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildFunctionWithoutParametersAndBrackets(Lorg/catrobat/catroid/formulaeditor/Functions;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 134
    :sswitch_ce
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->EXP:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 100
    :sswitch_cf
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->COS:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "360"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 180
    :sswitch_d0
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->CONTAINS:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "list name"

    const-string v6, "1"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 586
    :sswitch_d1
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->COLOR_TOUCHES_COLOR:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v4, "#ff0000"

    const-string v6, "#ff0000"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 560
    :sswitch_d2
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->COLLIDES_WITH_EDGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildObject(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 584
    :sswitch_d3
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->COLLIDES_WITH_COLOR:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "#ff0000"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 142
    :sswitch_d4
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->CEIL:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "0.3"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 190
    :sswitch_d5
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINODIGITAL:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v2, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 192
    :sswitch_d6
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINOANALOG:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v2, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 130
    :sswitch_d7
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCTAN2:Lorg/catrobat/catroid/formulaeditor/Functions;

    const/4 v3, 0x1

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const/4 v6, 0x0

    sget-object v7, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v5, "1"

    const-string v8, "0"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildDoubleParameterFunctionWithNegativeValues(Lorg/catrobat/catroid/formulaeditor/Functions;ZLorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;ZLorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 128
    :sswitch_d8
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCTAN:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 124
    :sswitch_d9
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCSIN:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v2, "0.5"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 126
    :sswitch_da
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCCOS:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v2, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 116
    :sswitch_db
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ABS:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildSingleParameterFunction(Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 489
    :sswitch_dc
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->PLUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 493
    :sswitch_dd
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->MULT:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 491
    :sswitch_de
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 495
    :sswitch_df
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->DIVIDE:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildOperator(Lorg/catrobat/catroid/formulaeditor/Operators;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 486
    :sswitch_e0
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildPeriod()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 518
    :sswitch_e1
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildBracketOpen()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 520
    :sswitch_e2
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildBracketClose()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 95
    :sswitch_e3
    const-string v0, "9"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 93
    :sswitch_e4
    const-string v0, "8"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 91
    :sswitch_e5
    const-string v0, "7"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 89
    :sswitch_e6
    const-string v0, "6"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 87
    :sswitch_e7
    const-string v0, "5"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 85
    :sswitch_e8
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 83
    :sswitch_e9
    const-string v0, "3"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 81
    :sswitch_ea
    const-string v0, "2"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 79
    :sswitch_eb
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 77
    :sswitch_ec
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaKeyboardAdapter;->buildNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0397 -> :sswitch_ec
        0x7f0a0398 -> :sswitch_eb
        0x7f0a0399 -> :sswitch_ea
        0x7f0a039a -> :sswitch_e9
        0x7f0a039b -> :sswitch_e8
        0x7f0a039c -> :sswitch_e7
        0x7f0a039d -> :sswitch_e6
        0x7f0a039e -> :sswitch_e5
        0x7f0a039f -> :sswitch_e4
        0x7f0a03a0 -> :sswitch_e3
        0x7f0a03a1 -> :sswitch_e2
        0x7f0a03a2 -> :sswitch_e1
        0x7f0a03a6 -> :sswitch_e0
        0x7f0a03a8 -> :sswitch_df
        0x7f0a03ac -> :sswitch_de
        0x7f0a03ad -> :sswitch_dd
        0x7f0a03af -> :sswitch_dc
        0x7f12036c -> :sswitch_db
        0x7f12036e -> :sswitch_da
        0x7f120370 -> :sswitch_d9
        0x7f120372 -> :sswitch_d8
        0x7f120373 -> :sswitch_d7
        0x7f120376 -> :sswitch_d6
        0x7f120377 -> :sswitch_d5
        0x7f120378 -> :sswitch_d4
        0x7f12037a -> :sswitch_d3
        0x7f12037c -> :sswitch_d2
        0x7f12037e -> :sswitch_d1
        0x7f120380 -> :sswitch_d0
        0x7f120382 -> :sswitch_cf
        0x7f120384 -> :sswitch_ce
        0x7f120386 -> :sswitch_cd
        0x7f120387 -> :sswitch_cc
        0x7f120388 -> :sswitch_cb
        0x7f120389 -> :sswitch_ca
        0x7f12038b -> :sswitch_c9
        0x7f12038d -> :sswitch_c8
        0x7f12038e -> :sswitch_c7
        0x7f120390 -> :sswitch_c6
        0x7f120391 -> :sswitch_c5
        0x7f120393 -> :sswitch_c4
        0x7f120394 -> :sswitch_c3
        0x7f120395 -> :sswitch_c2
        0x7f120396 -> :sswitch_c1
        0x7f120397 -> :sswitch_c0
        0x7f12039a -> :sswitch_bf
        0x7f12039c -> :sswitch_be
        0x7f12039e -> :sswitch_bd
        0x7f1203a0 -> :sswitch_bc
        0x7f1203a2 -> :sswitch_bb
        0x7f1203a4 -> :sswitch_ba
        0x7f1203a6 -> :sswitch_b9
        0x7f1203a8 -> :sswitch_b8
        0x7f1203aa -> :sswitch_b7
        0x7f1203ab -> :sswitch_b6
        0x7f1203ad -> :sswitch_b5
        0x7f1203ae -> :sswitch_b4
        0x7f1203b0 -> :sswitch_b3
        0x7f1203b1 -> :sswitch_b2
        0x7f1203b4 -> :sswitch_b1
        0x7f1203b6 -> :sswitch_b0
        0x7f1203b8 -> :sswitch_af
        0x7f1203b9 -> :sswitch_ae
        0x7f1203be -> :sswitch_ad
        0x7f1203c0 -> :sswitch_ac
        0x7f1203c2 -> :sswitch_ab
        0x7f1203c4 -> :sswitch_aa
        0x7f1203c6 -> :sswitch_a9
        0x7f1203c7 -> :sswitch_a8
        0x7f1203c9 -> :sswitch_a7
        0x7f1203ca -> :sswitch_a6
        0x7f1203cb -> :sswitch_a5
        0x7f1203cd -> :sswitch_a4
        0x7f1203ce -> :sswitch_a3
        0x7f1203e9 -> :sswitch_a2
        0x7f1203eb -> :sswitch_a1
        0x7f1203ee -> :sswitch_a0
        0x7f1203ef -> :sswitch_9f
        0x7f1203f0 -> :sswitch_9e
        0x7f1203f1 -> :sswitch_9d
        0x7f1203f2 -> :sswitch_9c
        0x7f1203f3 -> :sswitch_9b
        0x7f1203f4 -> :sswitch_9a
        0x7f1203f5 -> :sswitch_99
        0x7f1203f7 -> :sswitch_98
        0x7f1203f8 -> :sswitch_97
        0x7f1203fa -> :sswitch_96
        0x7f1203fb -> :sswitch_95
        0x7f1203fc -> :sswitch_94
        0x7f1203fd -> :sswitch_93
        0x7f1203fe -> :sswitch_92
        0x7f1203ff -> :sswitch_91
        0x7f120401 -> :sswitch_90
        0x7f120403 -> :sswitch_8f
        0x7f120404 -> :sswitch_8e
        0x7f120406 -> :sswitch_8d
        0x7f120407 -> :sswitch_8d
        0x7f120408 -> :sswitch_8c
        0x7f120409 -> :sswitch_8b
        0x7f12040a -> :sswitch_8a
        0x7f12040b -> :sswitch_89
        0x7f12040c -> :sswitch_88
        0x7f12040d -> :sswitch_87
        0x7f12040e -> :sswitch_86
        0x7f12040f -> :sswitch_85
        0x7f120414 -> :sswitch_84
        0x7f120417 -> :sswitch_83
        0x7f120418 -> :sswitch_82
        0x7f120419 -> :sswitch_81
        0x7f12041a -> :sswitch_80
        0x7f12041b -> :sswitch_7f
        0x7f12041c -> :sswitch_7e
        0x7f12041e -> :sswitch_7d
        0x7f12041f -> :sswitch_7c
        0x7f120421 -> :sswitch_7b
        0x7f120423 -> :sswitch_7a
        0x7f120424 -> :sswitch_79
        0x7f120425 -> :sswitch_78
        0x7f120426 -> :sswitch_77
        0x7f120427 -> :sswitch_76
        0x7f120428 -> :sswitch_75
        0x7f120429 -> :sswitch_74
        0x7f12042a -> :sswitch_73
        0x7f12042b -> :sswitch_72
        0x7f12042c -> :sswitch_71
        0x7f12042d -> :sswitch_70
        0x7f12042e -> :sswitch_6f
        0x7f12042f -> :sswitch_6e
        0x7f120430 -> :sswitch_6d
        0x7f120431 -> :sswitch_6c
        0x7f120432 -> :sswitch_6b
        0x7f120433 -> :sswitch_6a
        0x7f120434 -> :sswitch_69
        0x7f120435 -> :sswitch_68
        0x7f120436 -> :sswitch_67
        0x7f120437 -> :sswitch_66
        0x7f120438 -> :sswitch_65
        0x7f120439 -> :sswitch_64
        0x7f12043a -> :sswitch_63
        0x7f12043b -> :sswitch_62
        0x7f12043c -> :sswitch_61
        0x7f12043d -> :sswitch_60
        0x7f12043e -> :sswitch_5f
        0x7f12043f -> :sswitch_5e
        0x7f120440 -> :sswitch_5d
        0x7f120441 -> :sswitch_5c
        0x7f120442 -> :sswitch_5b
        0x7f120443 -> :sswitch_5a
        0x7f120444 -> :sswitch_59
        0x7f120445 -> :sswitch_58
        0x7f120446 -> :sswitch_57
        0x7f120447 -> :sswitch_56
        0x7f120448 -> :sswitch_55
        0x7f120449 -> :sswitch_54
        0x7f12044a -> :sswitch_53
        0x7f12044b -> :sswitch_52
        0x7f12044c -> :sswitch_51
        0x7f12044d -> :sswitch_50
        0x7f12044e -> :sswitch_4f
        0x7f12044f -> :sswitch_4e
        0x7f120450 -> :sswitch_4d
        0x7f120451 -> :sswitch_4c
        0x7f120452 -> :sswitch_4b
        0x7f120453 -> :sswitch_4a
        0x7f120454 -> :sswitch_49
        0x7f120455 -> :sswitch_48
        0x7f120456 -> :sswitch_47
        0x7f120457 -> :sswitch_46
        0x7f120458 -> :sswitch_45
        0x7f120459 -> :sswitch_44
        0x7f12045a -> :sswitch_43
        0x7f12045b -> :sswitch_42
        0x7f12045c -> :sswitch_41
        0x7f12045d -> :sswitch_40
        0x7f12045e -> :sswitch_3f
        0x7f12045f -> :sswitch_3e
        0x7f120460 -> :sswitch_3d
        0x7f12046d -> :sswitch_3c
        0x7f12046e -> :sswitch_3b
        0x7f12046f -> :sswitch_3a
        0x7f120470 -> :sswitch_39
        0x7f120476 -> :sswitch_38
        0x7f120477 -> :sswitch_37
        0x7f120478 -> :sswitch_36
        0x7f120479 -> :sswitch_35
        0x7f12047a -> :sswitch_34
        0x7f12047b -> :sswitch_33
        0x7f12047c -> :sswitch_32
        0x7f12047d -> :sswitch_31
        0x7f12047e -> :sswitch_30
        0x7f12047f -> :sswitch_2f
        0x7f120480 -> :sswitch_2e
        0x7f120481 -> :sswitch_2d
        0x7f120482 -> :sswitch_2c
        0x7f120483 -> :sswitch_2b
        0x7f120484 -> :sswitch_2a
        0x7f120485 -> :sswitch_29
        0x7f120486 -> :sswitch_28
        0x7f120487 -> :sswitch_27
        0x7f120488 -> :sswitch_26
        0x7f120489 -> :sswitch_25
        0x7f12048a -> :sswitch_24
        0x7f12048b -> :sswitch_23
        0x7f12048c -> :sswitch_22
        0x7f12048d -> :sswitch_21
        0x7f12048e -> :sswitch_20
        0x7f12048f -> :sswitch_1f
        0x7f120490 -> :sswitch_1e
        0x7f120491 -> :sswitch_1d
        0x7f120492 -> :sswitch_1c
        0x7f120493 -> :sswitch_1b
        0x7f120494 -> :sswitch_1a
        0x7f120495 -> :sswitch_19
        0x7f120496 -> :sswitch_18
        0x7f120497 -> :sswitch_17
        0x7f120498 -> :sswitch_16
        0x7f120499 -> :sswitch_15
        0x7f12049a -> :sswitch_14
        0x7f12049b -> :sswitch_13
        0x7f12049c -> :sswitch_12
        0x7f12049d -> :sswitch_11
        0x7f12049e -> :sswitch_10
        0x7f12049f -> :sswitch_f
        0x7f1204a0 -> :sswitch_e
        0x7f1204a1 -> :sswitch_d
        0x7f1204a2 -> :sswitch_c
        0x7f1204a3 -> :sswitch_b
        0x7f1204a4 -> :sswitch_a
        0x7f1204a5 -> :sswitch_9
        0x7f1204a6 -> :sswitch_8
        0x7f1204a7 -> :sswitch_7
        0x7f1204a8 -> :sswitch_6
        0x7f1204a9 -> :sswitch_5
        0x7f1204aa -> :sswitch_4
        0x7f1204ab -> :sswitch_3
        0x7f1204ac -> :sswitch_2
        0x7f1204ad -> :sswitch_1
        0x7f1204ae -> :sswitch_0
    .end sparse-switch
.end method
