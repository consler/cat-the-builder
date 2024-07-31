.class public Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "LegoEv3MotorTurnAngleAction.java"


# static fields
.field private static final MAX_SPEED:I = 0x64

.field private static final POWER_DOWN_RAMP_DEGREES:I = 0x14


# instance fields
.field private btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private degrees:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private motorEnum:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorTurnAngleBrick$Motor;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 47
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    return-void
.end method


# virtual methods
.method public setDegrees(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "degrees"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 108
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;->degrees:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 109
    return-void
.end method

.method public setMotorEnum(Lorg/catrobat/catroid/content/bricks/LegoEv3MotorTurnAngleBrick$Motor;)V
    .locals 0
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoEv3MotorTurnAngleBrick$Motor;

    .line 104
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorTurnAngleBrick$Motor;

    .line 105
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 112
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 113
    return-void
.end method

.method protected update(F)V
    .locals 16
    .param p1, "percent"    # F

    move-object/from16 v1, p0

    .line 53
    :try_start_0
    iget-object v0, v1, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;->degrees:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, v1, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, "degreesValue":I
    goto :goto_0

    .line 54
    .end local v0    # "degreesValue":I
    :catch_0
    move-exception v0

    .line 55
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v2, 0x0

    .line 56
    .local v2, "degreesValue":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Formula interpretation for this specific Brick failed."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 59
    .end local v2    # "degreesValue":I
    .local v0, "degreesValue":I
    :goto_0
    move v2, v0

    .line 60
    .local v2, "tmpAngle":I
    const/4 v3, 0x1

    .line 61
    .local v3, "direction":I
    if-gez v0, :cond_0

    .line 62
    const/4 v3, -0x1

    .line 63
    mul-int/lit8 v4, v0, -0x2

    add-int v2, v0, v4

    .line 66
    :cond_0
    const/4 v4, 0x0

    .line 67
    .local v4, "step2Angle":I
    const/4 v5, 0x0

    .line 68
    .local v5, "step3Angle":I
    const/16 v6, 0x14

    if-le v2, v6, :cond_1

    .line 69
    add-int/lit8 v4, v2, -0x14

    .line 70
    const/16 v5, 0x14

    goto :goto_1

    .line 72
    :cond_1
    move v4, v2

    .line 75
    :goto_1
    iget-object v6, v1, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v7, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_EV3:Ljava/lang/Class;

    invoke-interface {v6, v7}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;

    .line 76
    .local v14, "ev3":Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;
    if-nez v14, :cond_2

    .line 77
    return-void

    .line 80
    :cond_2
    const/4 v6, 0x0

    .line 82
    .local v6, "outputField":B
    sget-object v7, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction$1;->$SwitchMap$org$catrobat$catroid$content$bricks$LegoEv3MotorTurnAngleBrick$Motor:[I

    iget-object v8, v1, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorTurnAngleBrick$Motor;

    invoke-virtual {v8}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorTurnAngleBrick$Motor;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3

    move v15, v6

    goto :goto_2

    .line 96
    :cond_3
    const/4 v6, 0x6

    move v15, v6

    goto :goto_2

    .line 93
    :cond_4
    const/16 v6, 0x8

    .line 94
    move v15, v6

    goto :goto_2

    .line 90
    :cond_5
    const/4 v6, 0x4

    .line 91
    move v15, v6

    goto :goto_2

    .line 87
    :cond_6
    const/4 v6, 0x2

    .line 88
    move v15, v6

    goto :goto_2

    .line 84
    :cond_7
    const/4 v6, 0x1

    .line 85
    move v15, v6

    .line 100
    .end local v6    # "outputField":B
    .local v15, "outputField":B
    :goto_2
    const/4 v8, 0x0

    mul-int/lit8 v9, v3, 0x64

    const/4 v10, 0x0

    const/4 v13, 0x1

    move-object v6, v14

    move v7, v15

    move v11, v4

    move v12, v5

    invoke-interface/range {v6 .. v13}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;->moveMotorStepsSpeed(BIIIIIZ)V

    .line 101
    return-void
.end method
