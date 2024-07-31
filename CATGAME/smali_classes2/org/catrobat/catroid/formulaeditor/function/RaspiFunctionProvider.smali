.class public Lorg/catrobat/catroid/formulaeditor/function/RaspiFunctionProvider;
.super Ljava/lang/Object;
.source "RaspiFunctionProvider.java"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private booleanToDouble(Z)D
    .locals 2
    .param p1, "value"    # Z

    .line 55
    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private interpretFunctionRaspiDigital(Ljava/lang/Double;)D
    .locals 7
    .param p1, "argument"    # Ljava/lang/Double;

    .line 41
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    .line 42
    .local v0, "connection":Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
    const-wide/16 v1, 0x0

    if-nez p1, :cond_0

    .line 43
    return-wide v1

    .line 46
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v3

    .line 47
    .local v3, "pin":I
    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->getPin(I)Z

    move-result v4

    invoke-direct {p0, v4}, Lorg/catrobat/catroid/formulaeditor/function/RaspiFunctionProvider;->booleanToDouble(Z)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 48
    .end local v3    # "pin":I
    :catch_0
    move-exception v3

    .line 49
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RPi: exception during getPin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v3    # "e":Ljava/lang/Exception;
    return-wide v1
.end method

.method public static synthetic lambda$W33Md5T24O8XEuJy9qSAAJsbPBo(Lorg/catrobat/catroid/formulaeditor/function/RaspiFunctionProvider;Ljava/lang/Double;)D
    .locals 0

    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/function/RaspiFunctionProvider;->interpretFunctionRaspiDigital(Ljava/lang/Double;)D

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

    .line 37
    .local p1, "formulaFunctions":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;>;"
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->RASPIDIGITAL:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$RaspiFunctionProvider$W33Md5T24O8XEuJy9qSAAJsbPBo;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$RaspiFunctionProvider$W33Md5T24O8XEuJy9qSAAJsbPBo;-><init>(Lorg/catrobat/catroid/formulaeditor/function/RaspiFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method
