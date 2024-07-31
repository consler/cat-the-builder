.class public Lorg/catrobat/catroid/stage/StageActivity;
.super Lcom/badlogic/gdx/backends/android/AndroidApplication;
.source "StageActivity.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/runtimepermissions/PermissionHandlingActivity;
.implements Lorg/catrobat/catroid/ui/runtimepermissions/PermissionAdaptingActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/stage/StageActivity$IntentListener;
    }
.end annotation


# static fields
.field private static final PERFORM_INTENT:I = 0x1

.field public static final REGISTER_INTENT:I = 0x0

.field public static final REQUEST_START_STAGE:I = 0x65

.field public static final SHOW_DIALOG:I = 0x2

.field public static final SHOW_TOAST:I = 0x3

.field public static final TAG:Ljava/lang/String;

.field public static activeStageActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/catroid/stage/StageActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static intentListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/catroid/stage/StageActivity$IntentListener;",
            ">;"
        }
    .end annotation
.end field

.field public static messageHandler:Landroid/os/Handler;

.field private static nfcTagMessage:Landroid/nfc/NdefMessage;

.field static numberOfSpritesCloned:I

.field public static randomGenerator:Ljava/util/Random;

.field public static stageListener:Lorg/catrobat/catroid/stage/StageListener;


# instance fields
.field brickDialogManager:Lorg/catrobat/catroid/stage/BrickDialogManager;

.field cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

.field configuration:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

.field public idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

.field nfcAdapter:Landroid/nfc/NfcAdapter;

.field pendingIntent:Landroid/app/PendingIntent;

.field private permissionRequestActivityExtension:Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;

.field private resizePossible:Z

.field stageAudioFocus:Lorg/catrobat/catroid/io/StageAudioFocus;

.field stageDialog:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

.field public stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

.field public vibrationManager:Lorg/catrobat/catroid/utils/VibrationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-class v0, Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/stage/StageActivity;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/stage/StageActivity;->intentListeners:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/stage/StageActivity;->randomGenerator:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->configuration:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 123
    new-instance v0, Landroidx/test/espresso/idling/CountingIdlingResource;

    const-string v1, "StageActivity"

    invoke-direct {v0, v1}, Landroidx/test/espresso/idling/CountingIdlingResource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    .line 124
    new-instance v0, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->permissionRequestActivityExtension:Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/stage/StageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p1, "x1"    # I

    .line 91
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/stage/StageActivity;->startQueuedIntent(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/stage/StageActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/stage/StageActivity;->showToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static finishStage()V
    .locals 2

    .line 511
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/stage/StageActivity;

    .line 512
    .local v0, "stageActivity":Lorg/catrobat/catroid/stage/StageActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->finish()V

    .line 515
    :cond_0
    return-void
.end method

.method public static finishTestWithResult(Lorg/catrobat/catroid/stage/TestResult;)V
    .locals 4
    .param p0, "testResult"    # Lorg/catrobat/catroid/stage/TestResult;

    .line 518
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/stage/StageActivity;

    .line 519
    .local v0, "stageActivity":Lorg/catrobat/catroid/stage/StageActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 521
    .local v1, "resultIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/TestResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ASSERTION_MESSAGE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/TestResult;->getResultCode()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/stage/StageActivity;->setResult(ILandroid/content/Intent;)V

    .line 523
    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->finish()V

    .line 525
    .end local v1    # "resultIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static getActiveCameraManager()Lorg/catrobat/catroid/camera/CameraManager;
    .locals 1

    .line 286
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/stage/StageActivity;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageActivity;->cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

    return-object v0

    .line 289
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getActiveVibrationManager()Lorg/catrobat/catroid/utils/VibrationManager;
    .locals 1

    .line 293
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/stage/StageActivity;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageActivity;->vibrationManager:Lorg/catrobat/catroid/utils/VibrationManager;

    return-object v0

    .line 296
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAndIncrementNumberOfClonedSprites()I
    .locals 1

    .line 384
    sget v0, Lorg/catrobat/catroid/stage/StageActivity;->numberOfSpritesCloned:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/catrobat/catroid/stage/StageActivity;->numberOfSpritesCloned:I

    return v0
.end method

.method public static getNfcTagMessage()Landroid/nfc/NdefMessage;
    .locals 1

    .line 396
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->nfcTagMessage:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method public static handlePlayButton(Lorg/catrobat/catroid/ProjectManager;Landroid/app/Activity;)V
    .locals 5
    .param p0, "projectManager"    # Lorg/catrobat/catroid/ProjectManager;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 490
    invoke-virtual {p0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    .line 491
    .local v0, "currentScene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    .line 493
    .local v1, "defaultScene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyPlayingScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 495
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ProjectManager;->setStartScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 496
    invoke-static {p1}, Lorg/catrobat/catroid/stage/StageActivity;->startStageActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 498
    :cond_0
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;

    invoke-direct {v2, p1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12063c

    new-instance v4, Lorg/catrobat/catroid/stage/-$$Lambda$StageActivity$HlYOqKA2cs8ITenoJtPdqTekguE;

    invoke-direct {v4, p1}, Lorg/catrobat/catroid/stage/-$$Lambda$StageActivity$HlYOqKA2cs8ITenoJtPdqTekguE;-><init>(Landroid/app/Activity;)V

    .line 499
    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 500
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 501
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 503
    :goto_0
    return-void
.end method

.method private isApplicationSentToBackground(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 153
    .local v0, "activityManager":Landroid/app/ActivityManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_1

    .line 154
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 156
    .local v4, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    return v3

    .line 159
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "topActivity":Landroid/content/ComponentName;
    :cond_0
    goto :goto_2

    .line 160
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, "runningProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 162
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_3

    .line 163
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 164
    .local v9, "activeProcess":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 165
    return v3

    .line 163
    .end local v9    # "activeProcess":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 169
    .end local v5    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    goto :goto_0

    .line 172
    .end local v1    # "runningProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_4
    :goto_2
    return v2
.end method

.method private isInLandscapeMode()Z
    .locals 1

    .line 348
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageActivity;->isInPortraitMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isInPortraitMode()Z
    .locals 2

    .line 344
    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$handlePlayButton$2(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 499
    invoke-static {p0}, Lorg/catrobat/catroid/stage/StageActivity;->startStageActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public static resetNumberOfClonedSprites()V
    .locals 1

    .line 388
    const/4 v0, 0x0

    sput v0, Lorg/catrobat/catroid/stage/StageActivity;->numberOfSpritesCloned:I

    .line 389
    return-void
.end method

.method public static setNfcTagMessage(Landroid/nfc/NdefMessage;)V
    .locals 0
    .param p0, "message"    # Landroid/nfc/NdefMessage;

    .line 392
    sput-object p0, Lorg/catrobat/catroid/stage/StageActivity;->nfcTagMessage:Landroid/nfc/NdefMessage;

    .line 393
    return-void
.end method

.method private showToastMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 232
    invoke-static {p0, p1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private startQueuedIntent(I)V
    .locals 4
    .param p1, "intentKey"    # I

    .line 416
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->intentListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 417
    return-void

    .line 419
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->intentListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/stage/StageActivity$IntentListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/stage/StageActivity$IntentListener;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 420
    .local v0, "queuedIntent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 421
    return-void

    .line 423
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 424
    .local v1, "pack":Ljava/lang/Package;
    if-eqz v1, :cond_2

    .line 425
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "calling_package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/stage/StageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 428
    return-void
.end method

.method private static startStageActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 506
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/stage/StageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 508
    return-void
.end method

.method private swapWidthAndHeight()V
    .locals 2

    .line 352
    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    .line 353
    .local v0, "tmp":I
    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    sput v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    .line 354
    sput v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    .line 355
    return-void
.end method


# virtual methods
.method public adaptToDeniedPermissions(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 455
    .local p1, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;-><init>()V

    .line 456
    .local v0, "requiredResources":Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 458
    .local v1, "project":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Scene;

    .line 459
    .local v3, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Sprite;

    .line 460
    .local v5, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getAllBricks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 461
    .local v7, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v7, v0}, Lorg/catrobat/catroid/content/bricks/Brick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 462
    invoke-static {v0}, Lorg/catrobat/catroid/ui/runtimepermissions/BrickResourcesToRuntimePermissions;->translate(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)Ljava/util/List;

    move-result-object v8

    .line 463
    .local v8, "requiredPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 465
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 466
    const/4 v9, 0x1

    invoke-interface {v7, v9}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 468
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->clear()V

    .line 469
    .end local v7    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v8    # "requiredPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 470
    .end local v5    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_1
    goto :goto_1

    .line 471
    .end local v3    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_2
    goto :goto_0

    .line 472
    :cond_3
    return-void
.end method

.method public addToRequiresPermissionTaskList(Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V
    .locals 1
    .param p1, "task"    # Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;

    .line 481
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->permissionRequestActivityExtension:Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->addToRequiresPermissionTaskList(Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V

    .line 482
    return-void
.end method

.method calculateScreenSizes()V
    .locals 11

    .line 304
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/utils/ScreenValueHandler;->updateScreenWidthAndHeight(Landroid/content/Context;)V

    .line 305
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    .line 306
    .local v0, "virtualScreenWidth":I
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v1

    iget v1, v1, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    .line 308
    .local v1, "virtualScreenHeight":I
    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageActivity;->isInLandscapeMode()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-ge v1, v0, :cond_2

    .line 309
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageActivity;->isInPortraitMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/StageActivity;->swapWidthAndHeight()V

    .line 313
    :cond_2
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 314
    .local v2, "aspectRatio":F
    invoke-static {}, Lorg/catrobat/catroid/common/ScreenValues;->getAspectRatio()F

    move-result v3

    .line 316
    .local v3, "screenAspectRatio":F
    sget v4, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    if-ne v0, v4, :cond_3

    sget v4, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    if-eq v1, v4, :cond_7

    .line 317
    :cond_3
    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_7

    .line 318
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 325
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/catrobat/catroid/stage/StageActivity;->resizePossible:Z

    .line 327
    sget v4, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 328
    .local v4, "ratioHeight":F
    sget v5, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 330
    .local v5, "ratioWidth":F
    cmpg-float v6, v2, v3

    const/high16 v7, 0x40000000    # 2.0f

    if-gez v6, :cond_5

    .line 331
    div-float v6, v4, v5

    .line 332
    .local v6, "scale":F
    sget-object v8, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    sget v9, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-int v9, v9

    iput v9, v8, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortWidth:I

    .line 333
    sget-object v8, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    sget v9, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    sget-object v10, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget v10, v10, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortWidth:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v7, v9

    iput v7, v8, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortX:I

    .line 334
    sget-object v7, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    sget v8, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    iput v8, v7, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortHeight:I

    .end local v6    # "scale":F
    goto :goto_0

    .line 335
    :cond_5
    cmpl-float v6, v2, v3

    if-lez v6, :cond_6

    .line 336
    div-float v6, v5, v4

    .line 337
    .restart local v6    # "scale":F
    sget-object v8, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    sget v9, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-int v9, v9

    iput v9, v8, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortHeight:I

    .line 338
    sget-object v8, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    sget v9, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    sget-object v10, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget v10, v10, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortHeight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v7, v9

    iput v7, v8, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortY:I

    .line 339
    sget-object v7, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    sget v8, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    iput v8, v7, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortWidth:I

    goto :goto_1

    .line 335
    .end local v6    # "scale":F
    :cond_6
    :goto_0
    nop

    .line 341
    :goto_1
    return-void

    .line 319
    .end local v4    # "ratioHeight":F
    .end local v5    # "ratioWidth":F
    :cond_7
    :goto_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/catrobat/catroid/stage/StageActivity;->resizePossible:Z

    .line 320
    sget-object v4, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    sget v5, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    iput v5, v4, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortWidth:I

    .line 321
    sget-object v4, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    sget v5, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    iput v5, v4, Lorg/catrobat/catroid/stage/StageListener;->maxViewPortHeight:I

    .line 322
    return-void
.end method

.method public dialogIsShowing()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->stageDialog:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->brickDialogManager:Lorg/catrobat/catroid/stage/BrickDialogManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/BrickDialogManager;->dialogIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .locals 1

    .line 359
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    return-object v0
.end method

.method getGdxGraphics()Lcom/badlogic/gdx/backends/android/AndroidGraphics;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public getResizePossible()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->resizePossible:Z

    return v0
.end method

.method public jsDestroy()V
    .locals 1

    .line 378
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->finish()V

    .line 379
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->manageLoadAndFinish()V

    .line 380
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->exit()V

    .line 381
    return-void
.end method

.method public synthetic lambda$null$0$StageActivity()V
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {v0}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V

    return-void
.end method

.method public synthetic lambda$onBackPressed$1$StageActivity(Z)V
    .locals 1
    .param p1, "success"    # Z

    .line 265
    new-instance v0, Lorg/catrobat/catroid/stage/-$$Lambda$StageActivity$ySwRP_8-OpAVdiocwZOnwjD_kvY;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/stage/-$$Lambda$StageActivity$ySwRP_8-OpAVdiocwZOnwjD_kvY;-><init>(Lorg/catrobat/catroid/stage/StageActivity;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/stage/StageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .line 364
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    return-void
.end method

.method public manageLoadAndFinish()V
    .locals 2

    .line 271
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->pause()V

    .line 272
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->finish()V

    .line 274
    invoke-static {}, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->getInstance()Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->shutDownTextToSpeech()V

    .line 277
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    .line 278
    .local v0, "service":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->pause()V

    .line 282
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->disconnect()V

    .line 283
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 432
    const/16 v0, 0x1e61

    if-eq p2, v0, :cond_0

    const/16 v0, 0x22b8

    if-ne p2, v0, :cond_1

    .line 434
    :cond_0
    const-string v0, "ASSERTION_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/stage/StageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 437
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    const-string v3, "TestResult"

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 439
    .local v2, "testResult":Landroid/content/ClipData;
    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 442
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    .end local v2    # "testResult":Landroid/content/ClipData;
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->intentListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 443
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->intentListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/stage/StageActivity$IntentListener;

    .line 444
    .local v0, "asker":Lorg/catrobat/catroid/stage/StageActivity$IntentListener;
    if-eqz p3, :cond_2

    .line 445
    invoke-interface {v0, p2, p3}, Lorg/catrobat/catroid/stage/StageActivity$IntentListener;->onIntentResult(ILandroid/content/Intent;)V

    .line 447
    :cond_2
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->intentListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 448
    .end local v0    # "asker":Lorg/catrobat/catroid/stage/StageActivity$IntentListener;
    goto :goto_0

    .line 449
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/catrobat/catroid/stage/StageResourceHolder;->onActivityResult(IILandroid/content/Intent;)V

    .line 451
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 262
    invoke-static {p0}, Lorg/catrobat/catroid/stage/StageLifeCycleController;->stagePause(Lorg/catrobat/catroid/stage/StageActivity;)V

    .line 263
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {v0}, Landroidx/test/espresso/idling/CountingIdlingResource;->increment()V

    .line 264
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    new-instance v1, Lorg/catrobat/catroid/stage/-$$Lambda$StageActivity$oBH6Hw68WEDdnbPVLHuhozxvRtI;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/stage/-$$Lambda$StageActivity$oBH6Hw68WEDdnbPVLHuhozxvRtI;-><init>(Lorg/catrobat/catroid/stage/StageActivity;)V

    const-string v2, "automatic_screenshot.png"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/stage/StageListener;->requestTakingScreenshot(Ljava/lang/String;Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;)V

    .line 266
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->stageDialog:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->show()V

    .line 268
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-static {p0}, Lorg/catrobat/catroid/stage/StageLifeCycleController;->stageCreate(Lorg/catrobat/catroid/stage/StageActivity;)V

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    .line 132
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 189
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0}, Lorg/catrobat/catroid/stage/StageLifeCycleController;->stageDestroy(Lorg/catrobat/catroid/stage/StageActivity;)V

    .line 192
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onDestroy()V

    .line 193
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 237
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onNewIntent(Landroid/content/Intent;)V

    .line 238
    invoke-static {p1}, Lorg/catrobat/catroid/nfc/NfcHandler;->processIntent(Landroid/content/Intent;)V

    .line 240
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->nfcTagMessage:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 242
    .local v0, "currentTag":Landroid/nfc/Tag;
    const-class v1, Lorg/catrobat/catroid/stage/StageActivity;

    monitor-enter v1

    .line 243
    :try_start_0
    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->nfcTagMessage:Landroid/nfc/NdefMessage;

    invoke-static {v0, v2}, Lorg/catrobat/catroid/nfc/NfcHandler;->writeTag(Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V

    .line 244
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/catrobat/catroid/stage/StageActivity;->setNfcTagMessage(Landroid/nfc/NdefMessage;)V

    .line 245
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 247
    .end local v0    # "currentTag":Landroid/nfc/Tag;
    :cond_0
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 136
    invoke-static {p0}, Lorg/catrobat/catroid/stage/StageLifeCycleController;->stagePause(Lorg/catrobat/catroid/stage/StageActivity;)V

    .line 137
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onPause()V

    .line 139
    sget-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/Survey;->endStageTime()V

    .line 142
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/stage/StageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 144
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-direct {p0, p0}, Lorg/catrobat/catroid/stage/StageActivity;->isApplicationSentToBackground(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/common/Survey;->endAppTime(Landroid/content/Context;)V

    .line 148
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 486
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->permissionRequestActivityExtension:Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 487
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 177
    invoke-static {p0}, Lorg/catrobat/catroid/stage/StageLifeCycleController;->stageResume(Lorg/catrobat/catroid/stage/StageActivity;)V

    .line 178
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onResume()V

    .line 179
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    .line 181
    sget-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/common/Survey;->startAppTime(Landroid/content/Context;)V

    .line 183
    sget-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/Survey;->startStageTime()V

    .line 185
    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 374
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 375
    return-void
.end method

.method public declared-synchronized queueIntent(Lorg/catrobat/catroid/stage/StageActivity$IntentListener;)V
    .locals 4
    .param p1, "asker"    # Lorg/catrobat/catroid/stage/StageActivity$IntentListener;

    monitor-enter p0

    .line 400
    :try_start_0
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 401
    monitor-exit p0

    return-void

    .line 405
    :cond_0
    :try_start_1
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->randomGenerator:Ljava/util/Random;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 406
    .local v0, "newIdentId":I
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->intentListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 408
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->intentListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 412
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    .line 399
    .end local v0    # "newIdentId":I
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "message":Landroid/os/Message;
    .end local p0    # "this":Lorg/catrobat/catroid/stage/StageActivity;
    .end local p1    # "asker":Lorg/catrobat/catroid/stage/StageActivity$IntentListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setupAskHandler()V
    .locals 3

    .line 200
    move-object v0, p0

    .line 201
    .local v0, "currentStage":Lorg/catrobat/catroid/stage/StageActivity;
    new-instance v1, Lorg/catrobat/catroid/stage/StageActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lorg/catrobat/catroid/stage/StageActivity$1;-><init>(Lorg/catrobat/catroid/stage/StageActivity;Landroid/os/Looper;Lorg/catrobat/catroid/stage/StageActivity;)V

    sput-object v1, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    .line 225
    return-void
.end method
