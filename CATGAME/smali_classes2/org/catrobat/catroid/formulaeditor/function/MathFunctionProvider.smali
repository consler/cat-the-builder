.class public Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;
.super Ljava/lang/Object;
.source "MathFunctionProvider.java"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private interpretFunctionArcTan2(DD)D
    .locals 4
    .param p1, "firstArgument"    # D
    .param p3, "secondArgument"    # D

    .line 79
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v0, v2

    return-wide v0

    .line 82
    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private interpretFunctionMod(DD)D
    .locals 4
    .param p1, "dividend"    # D
    .param p3, "divisor"    # D

    .line 61
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_3

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    cmpl-double v2, p3, v0

    if-lez v2, :cond_1

    .line 66
    :goto_0
    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    .line 67
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr p1, v2

    goto :goto_0

    .line 70
    :cond_1
    cmpl-double v0, p1, v0

    if-lez v0, :cond_2

    .line 71
    rem-double v0, p1, p3

    add-double/2addr v0, p3

    return-wide v0

    .line 75
    :cond_2
    rem-double v0, p1, p3

    return-wide v0

    .line 62
    :cond_3
    :goto_1
    return-wide p1
.end method

.method static synthetic lambda$addFunctionsToMap$0(D)Ljava/lang/Object;
    .locals 2
    .param p0, "argument"    # D

    .line 36
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addFunctionsToMap$1(D)Ljava/lang/Object;
    .locals 2
    .param p0, "argument"    # D

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addFunctionsToMap$2(D)Ljava/lang/Object;
    .locals 2
    .param p0, "argument"    # D

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addFunctionsToMap$3(D)Ljava/lang/Object;
    .locals 2
    .param p0, "argument"    # D

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addFunctionsToMap$4([Ljava/lang/Double;)Ljava/lang/Object;
    .locals 2
    .param p0, "args"    # [Ljava/lang/Double;

    .line 45
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addFunctionsToMap$5(D)Ljava/lang/Object;
    .locals 2
    .param p0, "argument"    # D

    .line 46
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addFunctionsToMap$6(D)Ljava/lang/Object;
    .locals 2
    .param p0, "argument"    # D

    .line 47
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addFunctionsToMap$7(D)Ljava/lang/Object;
    .locals 2
    .param p0, "argument"    # D

    .line 48
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addFunctionsToMap$8([Ljava/lang/Double;)Ljava/lang/Object;
    .locals 2
    .param p0, "args"    # [Ljava/lang/Double;

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addFunctionsToMap$9([Ljava/lang/Double;)Ljava/lang/Object;
    .locals 2
    .param p0, "args"    # [Ljava/lang/Double;

    .line 56
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$gOuh7e80FOARFUbii08PNh6kAdY(Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;DD)D
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;->interpretFunctionMod(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$t9-SfACI50Cfy7MaNhhSptW0FrU(Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;DD)D
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;->interpretFunctionArcTan2(DD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public addFunctionsToMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            "Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "formulaFunctions":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;>;"
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->SIN:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$YKnEkZkz8J9F487lSVxg14QsMd0;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$YKnEkZkz8J9F487lSVxg14QsMd0;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->COS:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$WV87ThwMJLDQm6Kass8cCSt7ZV0;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$WV87ThwMJLDQm6Kass8cCSt7ZV0;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TAN:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$5kDnoAjlrAFDVoB8slD6Q9VS9sI;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$5kDnoAjlrAFDVoB8slD6Q9VS9sI;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCTAN2:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$t9-SfACI50Cfy7MaNhhSptW0FrU;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$t9-SfACI50Cfy7MaNhhSptW0FrU;-><init>(Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->LN:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ZjEo7O_SVvLTRRQ5i7UQtkfTeC0;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ZjEo7O_SVvLTRRQ5i7UQtkfTeC0;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->LOG:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$YYYrirGtKKTNDr8lUVE3jLm_Ycc;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$YYYrirGtKKTNDr8lUVE3jLm_Ycc;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->SQRT:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$H5nTUAiM7amz5zr4Sy3uNyD0yWU;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$H5nTUAiM7amz5zr4Sy3uNyD0yWU;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ABS:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$V6uABN2dBaBxgl1Ct2TWaCm7lo8;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$V6uABN2dBaBxgl1Ct2TWaCm7lo8;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ROUND:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$pXmxwyylxGzCf4rhlFtn3eO-sls;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$pXmxwyylxGzCf4rhlFtn3eO-sls;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->PI:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$TZIaA6EEs0SdzpNdeZr3j8JJk5s;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$TZIaA6EEs0SdzpNdeZr3j8JJk5s;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCSIN:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$jiB9KDSeBOPKLSSxO64ldr9x0HY;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$jiB9KDSeBOPKLSSxO64ldr9x0HY;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCCOS:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$gRDQXwWz33xw-jMvecRPzvVK3RA;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$gRDQXwWz33xw-jMvecRPzvVK3RA;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCTAN:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$2wIPg0Ef1hRovJBKHrIV6wA3Vgg;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$2wIPg0Ef1hRovJBKHrIV6wA3Vgg;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->EXP:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$__1L7a1QgziXKcN5XGmVWyUC7Tk;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$__1L7a1QgziXKcN5XGmVWyUC7Tk;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->POWER:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$5whMm3Nc0GKEhhdrptk34WPjXWY;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$5whMm3Nc0GKEhhdrptk34WPjXWY;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->FLOOR:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ZoXgSMIULSJuyYEgVxvSd967HUU;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ZoXgSMIULSJuyYEgVxvSd967HUU;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->CEIL:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$hbBM8me1tjbrha3aqvXB-Zd_iN4;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$hbBM8me1tjbrha3aqvXB-Zd_iN4;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->MAX:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$WcgSqNvIZw1OZe1OlkSXUE_zpFk;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$WcgSqNvIZw1OZe1OlkSXUE_zpFk;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->MIN:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$Got65Itl82x6tcKhfSBUMimHQLE;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$Got65Itl82x6tcKhfSBUMimHQLE;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TRUE:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$v48IWLyyT0RksXjoqB-qlHAGs8s;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$v48IWLyyT0RksXjoqB-qlHAGs8s;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->FALSE:Lorg/catrobat/catroid/formulaeditor/Functions;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$a-Ze_ZuuHRc1hmYEzpk2Bq-jEF0;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$a-Ze_ZuuHRc1hmYEzpk2Bq-jEF0;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->MOD:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$gOuh7e80FOARFUbii08PNh6kAdY;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$gOuh7e80FOARFUbii08PNh6kAdY;-><init>(Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
