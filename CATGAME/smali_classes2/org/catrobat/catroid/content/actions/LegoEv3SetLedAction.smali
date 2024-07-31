.class public Lorg/catrobat/catroid/content/actions/LegoEv3SetLedAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "LegoEv3SetLedAction.java"


# instance fields
.field private btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private ledStatusEnum:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 37
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LegoEv3SetLedAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    return-void
.end method


# virtual methods
.method public setLedStatusEnum(Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;)V
    .locals 0
    .param p1, "ledStatusEnum"    # Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    .line 86
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3SetLedAction;->ledStatusEnum:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    .line 87
    return-void
.end method

.method protected update(F)V
    .locals 4
    .param p1, "percent"    # F

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/LegoEv3SetLedAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_EV3:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;

    .line 43
    .local v0, "ev3":Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;
    if-nez v0, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 49
    .local v1, "ledStatus":I
    sget-object v2, Lorg/catrobat/catroid/content/actions/LegoEv3SetLedAction$1;->$SwitchMap$org$catrobat$catroid$content$bricks$LegoEv3SetLedBrick$LedStatus:[I

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/LegoEv3SetLedAction;->ledStatusEnum:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    const/16 v1, 0x9

    goto :goto_0

    .line 75
    :pswitch_1
    const/16 v1, 0x8

    .line 76
    goto :goto_0

    .line 72
    :pswitch_2
    const/4 v1, 0x7

    .line 73
    goto :goto_0

    .line 69
    :pswitch_3
    const/4 v1, 0x6

    .line 70
    goto :goto_0

    .line 66
    :pswitch_4
    const/4 v1, 0x5

    .line 67
    goto :goto_0

    .line 63
    :pswitch_5
    const/4 v1, 0x4

    .line 64
    goto :goto_0

    .line 60
    :pswitch_6
    const/4 v1, 0x3

    .line 61
    goto :goto_0

    .line 57
    :pswitch_7
    const/4 v1, 0x2

    .line 58
    goto :goto_0

    .line 54
    :pswitch_8
    const/4 v1, 0x1

    .line 55
    goto :goto_0

    .line 51
    :pswitch_9
    const/4 v1, 0x0

    .line 52
    nop

    .line 82
    :goto_0
    invoke-interface {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;->setLed(I)V

    .line 83
    return-void

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
