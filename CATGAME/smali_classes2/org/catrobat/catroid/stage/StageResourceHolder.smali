.class public Lorg/catrobat/catroid/stage/StageResourceHolder;
.super Ljava/lang/Object;
.source "StageResourceHolder.java"

# interfaces
.implements Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask$OnPolygonLoadedListener;


# static fields
.field private static final REQUEST_CONNECT_DEVICE:I = 0x3e8

.field private static final REQUEST_GPS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private failedResources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private requiredResourceCounter:I

.field private requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

.field private stageActivity:Lorg/catrobat/catroid/stage/StageActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/stage/StageResourceHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 0
    .param p1, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 91
    invoke-static {}, Lorg/catrobat/catroid/utils/TouchUtil;->reset()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/stage/StageResourceHolder;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/stage/StageResourceHolder;

    .line 76
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->nfcInitialize()V

    return-void
.end method

.method private connectBTDevice(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;>;"
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    .line 508
    .local v0, "btService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const/16 v2, 0x3e8

    invoke-interface {v0, p1, v1, v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->connectDevice(Ljava/lang/Class;Landroid/app/Activity;I)Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;->ALREADY_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    if-ne v1, v2, :cond_0

    .line 510
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    .line 512
    :cond_0
    return-void
.end method

.method private connectRaspberrySocket()V
    .locals 7

    .line 515
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getRaspiHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "host":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getRaspiPort(Landroid/content/Context;)I

    move-result v1

    .line 518
    .local v1, "port":I
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->connect(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1202d6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->endStageActivity()V

    .line 524
    :goto_0
    return-void
.end method

.method private getCameraManager()Lorg/catrobat/catroid/camera/CameraManager;
    .locals 2

    .line 376
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageActivity;->cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    new-instance v1, Lorg/catrobat/catroid/camera/CameraManager;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/camera/CameraManager;-><init>(Lorg/catrobat/catroid/stage/StageActivity;)V

    iput-object v1, v0, Lorg/catrobat/catroid/stage/StageActivity;->cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

    .line 379
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageActivity;->cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

    return-object v0
.end method

.method public static getProjectsRuntimePermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getRequiredResources()Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lorg/catrobat/catroid/ui/runtimepermissions/BrickResourcesToRuntimePermissions;->translate(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private nfcInitialize()V
    .locals 3

    .line 527
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 528
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 529
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v2, 0x7f1205b5

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 530
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/stage/StageActivity;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 532
    :cond_0
    if-nez v0, :cond_1

    .line 533
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v2, 0x7f1205bb

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    goto :goto_1

    .line 532
    :cond_1
    :goto_0
    nop

    .line 536
    :goto_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    .line 537
    return-void
.end method

.method private showResourceFailedErrorDialog()V
    .locals 6

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v2, 0x7f1206dc

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "failedResourcesMessage":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->failedResources:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 398
    .local v1, "resourceIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/16 v3, 0x17

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_1

    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 465
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206cc

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    goto :goto_0

    .line 445
    :pswitch_0
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206d7

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    goto :goto_0

    .line 457
    :pswitch_1
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206d8

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    goto :goto_0

    .line 461
    :pswitch_2
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206de

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    goto :goto_0

    .line 409
    :pswitch_3
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206d0

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    goto :goto_0

    .line 405
    :pswitch_4
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206d5

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    goto/16 :goto_0

    .line 401
    :pswitch_5
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206cd

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    goto/16 :goto_0

    .line 425
    :pswitch_6
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206d3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    goto/16 :goto_0

    .line 421
    :pswitch_7
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206ce

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    goto/16 :goto_0

    .line 413
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206d4

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    goto/16 :goto_0

    .line 429
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206cf

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    goto/16 :goto_0

    .line 437
    :cond_2
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206da

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    goto/16 :goto_0

    .line 433
    :cond_3
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206d2

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    goto/16 :goto_0

    .line 453
    :cond_4
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206d9

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    goto/16 :goto_0

    .line 441
    :cond_5
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206d1

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    goto/16 :goto_0

    .line 449
    :cond_6
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f12075a

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    goto/16 :goto_0

    .line 417
    :cond_7
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1206e0

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    goto/16 :goto_0

    .line 471
    :cond_8
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v5, 0x7f13023d

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1206dd

    .line 472
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 473
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v4, 0x7f1205ff

    .line 474
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/stage/-$$Lambda$StageResourceHolder$fjkV9xjVoMUavluLHxVWkNKY6hU;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/stage/-$$Lambda$StageResourceHolder$fjkV9xjVoMUavluLHxVWkNKY6hU;-><init>(Lorg/catrobat/catroid/stage/StageResourceHolder;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 475
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 476
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 477
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public endStageActivity()V
    .locals 3

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v0, "returnToActivityIntent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/catrobat/catroid/stage/StageActivity;->setResult(ILandroid/content/Intent;)V

    .line 392
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/stage/StageActivity;->finish()V

    .line 393
    return-void
.end method

.method public getVibrationManager()Lorg/catrobat/catroid/utils/VibrationManager;
    .locals 2

    .line 383
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageActivity;->vibrationManager:Lorg/catrobat/catroid/utils/VibrationManager;

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    new-instance v1, Lorg/catrobat/catroid/utils/VibrationManager;

    invoke-direct {v1}, Lorg/catrobat/catroid/utils/VibrationManager;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/stage/StageActivity;->vibrationManager:Lorg/catrobat/catroid/utils/VibrationManager;

    .line 386
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageActivity;->vibrationManager:Lorg/catrobat/catroid/utils/VibrationManager;

    return-object v0
.end method

.method public initFinished()Z
    .locals 1

    .line 341
    iget v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourceCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->failedResources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initFinishedRunStage()V
    .locals 4

    .line 346
    :try_start_0
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    invoke-interface {v0}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->initialise()V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v1, Lorg/catrobat/catroid/stage/StageResourceHolder;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v0    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->setupAskHandler()V

    .line 352
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 352
    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/stage/StageActivity;->pendingIntent:Landroid/app/PendingIntent;

    .line 354
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/stage/StageActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 355
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/stage/StageListener;->setPaused(Z)V

    .line 356
    return-void
.end method

.method public initResources()V
    .locals 7

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->failedResources:Ljava/util/Set;

    .line 102
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getRequiredResources()Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 103
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->size()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourceCounter:I

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->getInstance(Landroid/content/Context;)Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    move-result-object v0

    .line 106
    .local v0, "sensorHandler":Lorg/catrobat/catroid/formulaeditor/SensorHandler;
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 114
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->inclinationAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 122
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->compassAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 130
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    invoke-direct {v1}, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;-><init>()V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->setSensorLoudness(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)V

    .line 132
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    .line 135
    :cond_6
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 136
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const-string v3, "location"

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->setLocationManager(Landroid/location/LocationManager;)V

    .line 137
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->gpsAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_3

    .line 140
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v1, "checkIntent":Landroid/content/Intent;
    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v3, v1, v2}, Lorg/catrobat/catroid/stage/StageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    .end local v1    # "checkIntent":Landroid/content/Intent;
    :cond_8
    :goto_3
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 147
    const-class v1, Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    invoke-static {v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    .line 148
    .local v1, "mobileServiceAvailability":Lorg/catrobat/catroid/utils/MobileServiceAvailability;
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isGmsAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 149
    sget-object v3, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->Companion:Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;

    invoke-virtual {v3}, Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;->getInstance()Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v3, v4, p0}, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->initTextToSpeech(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V

    goto :goto_4

    .line 150
    :cond_9
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isHmsAvailable(Landroid/content/Context;)Z

    .line 155
    .end local v1    # "mobileServiceAvailability":Lorg/catrobat/catroid/utils/MobileServiceAvailability;
    :cond_a
    :goto_4
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 156
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_NXT:Ljava/lang/Class;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/stage/StageResourceHolder;->connectBTDevice(Ljava/lang/Class;)V

    .line 159
    :cond_b
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 160
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_EV3:Ljava/lang/Class;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/stage/StageResourceHolder;->connectBTDevice(Ljava/lang/Class;)V

    .line 163
    :cond_c
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 164
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->PHIRO:Ljava/lang/Class;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/stage/StageResourceHolder;->connectBTDevice(Ljava/lang/Class;)V

    .line 167
    :cond_d
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 168
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->ARDUINO:Ljava/lang/Class;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/stage/StageResourceHolder;->connectBTDevice(Ljava/lang/Class;)V

    .line 171
    :cond_e
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->hasMultiplayerVariables()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 172
    iget v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourceCounter:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourceCounter:I

    .line 173
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->MULTIPLAYER:Ljava/lang/Class;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/stage/StageResourceHolder;->connectBTDevice(Ljava/lang/Class;)V

    .line 176
    :cond_f
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 177
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->getHasBackCamera()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 178
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_5

    .line 180
    :cond_10
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 184
    :cond_11
    :goto_5
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 185
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->getHasFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 186
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_6

    .line 188
    :cond_12
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 192
    :cond_13
    :goto_6
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 193
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->getHasFrontCamera()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->getHasBackCamera()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_7

    .line 196
    :cond_14
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    goto :goto_8

    .line 194
    :cond_15
    :goto_7
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    .line 200
    :cond_16
    :goto_8
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 201
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->getHasFlash()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 202
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_9

    .line 204
    :cond_17
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 208
    :cond_18
    :goto_9
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 209
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const-string v3, "vibrator"

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 210
    .local v1, "vibration":Landroid/os/Vibrator;
    if-eqz v1, :cond_19

    .line 211
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getVibrationManager()Lorg/catrobat/catroid/utils/VibrationManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/utils/VibrationManager;->setVibration(Landroid/os/Vibrator;)V

    .line 212
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_a

    .line 214
    :cond_19
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 218
    .end local v1    # "vibration":Landroid/os/Vibrator;
    :cond_1a
    :goto_a
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_1c

    .line 219
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 220
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v5, 0x7f1205b4

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v6, 0x7f1205ff

    .line 222
    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/catrobat/catroid/stage/StageResourceHolder$1;

    invoke-direct {v6, p0}, Lorg/catrobat/catroid/stage/StageResourceHolder$1;-><init>(Lorg/catrobat/catroid/stage/StageResourceHolder;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 229
    .local v4, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 230
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "alert":Landroid/app/AlertDialog;
    goto :goto_b

    .line 231
    :cond_1b
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->nfcInitialize()V

    .line 235
    :cond_1c
    :goto_b
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 236
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->startDetection()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 237
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_c

    .line 239
    :cond_1d
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 243
    :cond_1e
    :goto_c
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v3, 0x1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 244
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->startDetection()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 245
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_d

    .line 247
    :cond_1f
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 251
    :cond_20
    :goto_d
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 252
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->startDetection()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 253
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_e

    .line 255
    :cond_21
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 259
    :cond_22
    :goto_e
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 260
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->startDetection()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 261
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_f

    .line 263
    :cond_23
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 267
    :cond_24
    :goto_f
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 268
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/cast/CastManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 269
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_11

    .line 271
    :cond_25
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isCastSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 272
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1201bf

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10

    .line 273
    :cond_26
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 274
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1201c1

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10

    .line 276
    :cond_27
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1201c0

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :goto_10
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->endStageActivity()V

    .line 282
    :cond_28
    :goto_11
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 283
    new-instance v1, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;-><init>(Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask$OnPolygonLoadedListener;)V

    .line 284
    .local v1, "task":Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;
    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    .end local v1    # "task":Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;
    :cond_29
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 288
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 289
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v4, 0x7f13023d

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1202f1

    .line 290
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12069e

    new-instance v3, Lorg/catrobat/catroid/stage/-$$Lambda$StageResourceHolder$Ati2PWbupAVl-E57nMp1A2z2-Vc;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/stage/-$$Lambda$StageResourceHolder$Ati2PWbupAVl-E57nMp1A2z2-Vc;-><init>(Lorg/catrobat/catroid/stage/StageResourceHolder;)V

    .line 291
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1201b8

    new-instance v3, Lorg/catrobat/catroid/stage/-$$Lambda$StageResourceHolder$PP4MKmEBxTcUFkV_VLRbPBpt_RI;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/stage/-$$Lambda$StageResourceHolder$PP4MKmEBxTcUFkV_VLRbPBpt_RI;-><init>(Lorg/catrobat/catroid/stage/StageResourceHolder;)V

    .line 294
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/stage/-$$Lambda$StageResourceHolder$KGu9JT3T-mfEUSnH-Il9X_s7VDA;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/stage/-$$Lambda$StageResourceHolder$KGu9JT3T-mfEUSnH-Il9X_s7VDA;-><init>(Lorg/catrobat/catroid/stage/StageResourceHolder;)V

    .line 297
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_12

    .line 303
    :cond_2a
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    .line 307
    :cond_2b
    :goto_12
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 308
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 309
    .local v1, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->enableRaspberryInterruptPinsForProject(Lorg/catrobat/catroid/content/Project;)V

    .line 310
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->connectRaspberrySocket()V

    .line 313
    .end local v1    # "currentProject":Lorg/catrobat/catroid/content/Project;
    :cond_2c
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 314
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->DOWNLOAD_DIRECTORY:Ljava/io/File;

    .line 316
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_13

    .line 319
    :cond_2d
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    goto :goto_14

    .line 317
    :cond_2e
    :goto_13
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    .line 323
    .end local v1    # "directory":Ljava/io/File;
    :cond_2f
    :goto_14
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 324
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    .line 327
    :cond_30
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->initFinished()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 336
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->initFinishedRunStage()V

    .line 338
    :cond_31
    return-void
.end method

.method public synthetic lambda$initResources$0$StageResourceHolder(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 292
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/StageActivity;->startActivity(Landroid/content/Intent;)V

    .line 293
    return-void
.end method

.method public synthetic lambda$initResources$1$StageResourceHolder(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 295
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->endStageActivity()V

    .line 296
    return-void
.end method

.method public synthetic lambda$initResources$2$StageResourceHolder(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 298
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->endStageActivity()V

    .line 299
    return-void
.end method

.method public synthetic lambda$showResourceFailedErrorDialog$3$StageResourceHolder(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 474
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->endStageActivity()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 480
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->endStageActivity()V

    goto :goto_1

    .line 482
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->endStageActivity()V

    goto :goto_0

    .line 484
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    .line 485
    nop

    .line 491
    :goto_0
    goto :goto_1

    .line 493
    :cond_3
    if-nez p2, :cond_4

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->gpsAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 494
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_1

    .line 496
    :cond_4
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceFailed(I)V

    .line 498
    nop

    .line 503
    :goto_1
    return-void
.end method

.method public onFinished()V
    .locals 0

    .line 542
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    .line 543
    return-void
.end method

.method public declared-synchronized resourceFailed(I)V
    .locals 3
    .param p1, "failedResource"    # I

    monitor-enter p0

    .line 359
    :try_start_0
    sget-object v0, Lorg/catrobat/catroid/stage/StageResourceHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resourceFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->failedResources:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 358
    .end local p0    # "this":Lorg/catrobat/catroid/stage/StageResourceHolder;
    .end local p1    # "failedResource":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resourceInitialized()V
    .locals 1

    monitor-enter p0

    .line 365
    :try_start_0
    iget v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourceCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->requiredResourceCounter:I

    .line 366
    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder;->failedResources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->initFinishedRunStage()V

    goto :goto_0

    .line 370
    .end local p0    # "this":Lorg/catrobat/catroid/stage/StageResourceHolder;
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->showResourceFailedErrorDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
