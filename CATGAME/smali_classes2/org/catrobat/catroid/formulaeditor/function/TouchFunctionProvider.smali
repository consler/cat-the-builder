.class public Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;
.super Ljava/lang/Object;
.source "TouchFunctionProvider.java"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private interpretFunctionFingerTouched(D)D
    .locals 2
    .param p1, "argument"    # D

    .line 49
    double-to-int v0, p1

    invoke-static {v0}, Lorg/catrobat/catroid/utils/TouchUtil;->isFingerTouching(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private interpretFunctionIndexCurrentTouch(D)D
    .locals 2
    .param p1, "argument"    # D

    .line 53
    double-to-int v0, p1

    invoke-static {v0}, Lorg/catrobat/catroid/utils/TouchUtil;->getIndexOfCurrentTouch(I)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method private interpretFunctionMultiFingerX(D)D
    .locals 2
    .param p1, "argument"    # D

    .line 45
    double-to-int v0, p1

    invoke-static {v0}, Lorg/catrobat/catroid/utils/TouchUtil;->getX(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method private interpretFunctionMultiFingerY(D)D
    .locals 2
    .param p1, "argument"    # D

    .line 41
    double-to-int v0, p1

    invoke-static {v0}, Lorg/catrobat/catroid/utils/TouchUtil;->getY(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static synthetic lambda$5loOiyPPMWjxYIFTMBgfxn3WDus(Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;->interpretFunctionIndexCurrentTouch(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$BVJZRJLeXFVPWIjz7laQTf28yxE(Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;->interpretFunctionFingerTouched(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$XIK15PmL2sxudLckpTOKaXhpEPY(Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;->interpretFunctionMultiFingerY(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$tBTRZgR-RFaDuwwH6pi33Y1fB7U(Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;->interpretFunctionMultiFingerX(D)D

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

    .line 34
    .local p1, "formulaFunctions":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;>;"
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->MULTI_FINGER_TOUCHED:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TouchFunctionProvider$BVJZRJLeXFVPWIjz7laQTf28yxE;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TouchFunctionProvider$BVJZRJLeXFVPWIjz7laQTf28yxE;-><init>(Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->MULTI_FINGER_X:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TouchFunctionProvider$tBTRZgR-RFaDuwwH6pi33Y1fB7U;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TouchFunctionProvider$tBTRZgR-RFaDuwwH6pi33Y1fB7U;-><init>(Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->MULTI_FINGER_Y:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TouchFunctionProvider$XIK15PmL2sxudLckpTOKaXhpEPY;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TouchFunctionProvider$XIK15PmL2sxudLckpTOKaXhpEPY;-><init>(Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->INDEX_CURRENT_TOUCH:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TouchFunctionProvider$5loOiyPPMWjxYIFTMBgfxn3WDus;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TouchFunctionProvider$5loOiyPPMWjxYIFTMBgfxn3WDus;-><init>(Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method
