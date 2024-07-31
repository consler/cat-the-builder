.class public Lorg/catrobat/catroid/formulaeditor/function/ArduinoFunctionProvider;
.super Ljava/lang/Object;
.source "ArduinoFunctionProvider.java"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getArduino()Lorg/catrobat/catroid/devices/arduino/Arduino;
    .locals 2

    .line 58
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->ARDUINO:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/arduino/Arduino;

    return-object v0
.end method

.method private interpretFunctionArduinoAnalog(D)D
    .locals 5
    .param p1, "argument"    # D

    .line 42
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/function/ArduinoFunctionProvider;->getArduino()Lorg/catrobat/catroid/devices/arduino/Arduino;

    move-result-object v0

    .line 43
    .local v0, "arduino":Lorg/catrobat/catroid/devices/arduino/Arduino;
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    cmpg-double v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    cmpl-double v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    double-to-int v1, p1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/devices/arduino/Arduino;->getAnalogArduinoPin(I)D

    move-result-wide v1

    return-wide v1

    .line 44
    :cond_1
    :goto_0
    return-wide v1
.end method

.method private interpretFunctionArduinoDigital(D)D
    .locals 5
    .param p1, "argument"    # D

    .line 50
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/function/ArduinoFunctionProvider;->getArduino()Lorg/catrobat/catroid/devices/arduino/Arduino;

    move-result-object v0

    .line 51
    .local v0, "arduino":Lorg/catrobat/catroid/devices/arduino/Arduino;
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    cmpg-double v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/high16 v3, 0x402a000000000000L    # 13.0

    cmpl-double v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    double-to-int v1, p1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/devices/arduino/Arduino;->getDigitalArduinoPin(I)D

    move-result-wide v1

    return-wide v1

    .line 52
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public static synthetic lambda$rlkCFBUQ8wv7qOcfc8MlFeeA2Z8(Lorg/catrobat/catroid/formulaeditor/function/ArduinoFunctionProvider;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/function/ArduinoFunctionProvider;->interpretFunctionArduinoDigital(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$v2SwWiCx5ZTcAGWRTgYW-A2O_Q4(Lorg/catrobat/catroid/formulaeditor/function/ArduinoFunctionProvider;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/function/ArduinoFunctionProvider;->interpretFunctionArduinoAnalog(D)D

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
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINODIGITAL:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ArduinoFunctionProvider$rlkCFBUQ8wv7qOcfc8MlFeeA2Z8;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ArduinoFunctionProvider$rlkCFBUQ8wv7qOcfc8MlFeeA2Z8;-><init>(Lorg/catrobat/catroid/formulaeditor/function/ArduinoFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINOANALOG:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ArduinoFunctionProvider$v2SwWiCx5ZTcAGWRTgYW-A2O_Q4;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ArduinoFunctionProvider$v2SwWiCx5ZTcAGWRTgYW-A2O_Q4;-><init>(Lorg/catrobat/catroid/formulaeditor/function/ArduinoFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
