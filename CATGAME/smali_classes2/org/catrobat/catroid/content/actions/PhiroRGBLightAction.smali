.class public Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "PhiroRGBLightAction.java"


# static fields
.field private static final MAX_VALUE:I = 0xff

.field private static final MIN_VALUE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private blue:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private eyeEnum:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

.field private green:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private red:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 50
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    return-void
.end method

.method private updateFormulaValue(Lorg/catrobat/catroid/formulaeditor/Formula;)I
    .locals 4
    .param p1, "rgbFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 78
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v0, "rgbValue":I
    goto :goto_0

    .line 79
    .end local v0    # "rgbValue":I
    :catch_0
    move-exception v0

    .line 80
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v1, 0x0

    .line 81
    .local v1, "rgbValue":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 84
    .end local v1    # "rgbValue":I
    .local v0, "rgbValue":I
    :goto_0
    if-gez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    goto :goto_1

    .line 86
    :cond_0
    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 87
    const/16 v0, 0xff

    .line 90
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public setBlue(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "blue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 106
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->blue:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 107
    return-void
.end method

.method public setEyeEnum(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;)V
    .locals 0
    .param p1, "eyeEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    .line 94
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->eyeEnum:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    .line 95
    return-void
.end method

.method public setGreen(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "green"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 102
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->green:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 103
    return-void
.end method

.method public setRed(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "red"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 98
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->red:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 99
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 110
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 111
    return-void
.end method

.method protected update(F)V
    .locals 7
    .param p1, "percent"    # F

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->red:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->updateFormulaValue(Lorg/catrobat/catroid/formulaeditor/Formula;)I

    move-result v0

    .line 56
    .local v0, "redValue":I
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->green:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->updateFormulaValue(Lorg/catrobat/catroid/formulaeditor/Formula;)I

    move-result v1

    .line 57
    .local v1, "greenValue":I
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->blue:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->updateFormulaValue(Lorg/catrobat/catroid/formulaeditor/Formula;)I

    move-result v2

    .line 59
    .local v2, "blueValue":I
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v4, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->PHIRO:Ljava/lang/Class;

    invoke-interface {v3, v4}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;

    .line 61
    .local v3, "phiro":Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->eyeEnum:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    sget-object v5, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->LEFT:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-interface {v3, v0, v1, v2}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->setLeftRGBLightColor(III)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->eyeEnum:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    sget-object v5, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->RIGHT:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    invoke-interface {v3, v0, v1, v2}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->setRightRGBLightColor(III)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->eyeEnum:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    sget-object v5, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->BOTH:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    invoke-interface {v3, v0, v1, v2}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->setLeftRGBLightColor(III)V

    .line 67
    invoke-interface {v3, v0, v1, v2}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->setRightRGBLightColor(III)V

    goto :goto_0

    .line 69
    :cond_2
    sget-object v4, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: EyeEnum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->eyeEnum:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void
.end method
