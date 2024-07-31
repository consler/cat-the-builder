.class public final Lorg/catrobat/catroid/stage/StageLifeCycleController;
.super Ljava/lang/Object;
.source "StageLifeCycleController.java"


# static fields
.field private static final REQUEST_PERMISSIONS_STAGE_RESOURCE_CREATE:I = 0x259

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lorg/catrobat/catroid/stage/StageLifeCycleController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/stage/StageLifeCycleController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "no."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static stageCreate(Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 7
    .param p0, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;

    .line 70
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->finish()V

    .line 72
    sget-object v0, Lorg/catrobat/catroid/stage/StageLifeCycleController;->TAG:Ljava/lang/String;

    const-string v1, "no current project set, cowardly refusing to run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    sput v0, Lorg/catrobat/catroid/stage/StageActivity;->numberOfSpritesCloned:I

    .line 78
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->isCurrentProjectLandscapeMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/stage/StageActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/stage/StageActivity;->setRequestedOrientation(I)V

    .line 84
    :goto_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;->resetAllUserData(Lorg/catrobat/catroid/content/Project;)V

    .line 86
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Scene;

    .line 87
    .local v3, "scene":Lorg/catrobat/catroid/content/Scene;
    iput-boolean v2, v3, Lorg/catrobat/catroid/content/Scene;->firstStart:Z

    .line 88
    .end local v3    # "scene":Lorg/catrobat/catroid/content/Scene;
    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 92
    new-instance v1, Lorg/catrobat/catroid/stage/StageListener;

    invoke-direct {v1}, Lorg/catrobat/catroid/stage/StageListener;-><init>()V

    sput-object v1, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    .line 93
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    sget-object v3, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    const v4, 0x7f1301c6

    invoke-direct {v1, p0, v3, v4}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;-><init>(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageListener;I)V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity;->stageDialog:Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    .line 94
    new-instance v1, Lorg/catrobat/catroid/stage/BrickDialogManager;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/stage/BrickDialogManager;-><init>(Lorg/catrobat/catroid/stage/StageActivity;)V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity;->brickDialogManager:Lorg/catrobat/catroid/stage/BrickDialogManager;

    .line 95
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->calculateScreenSizes()V

    .line 97
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity;->configuration:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 98
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity;->configuration:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageActivity;->configuration:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageActivity;->configuration:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-object v5, p0, Lorg/catrobat/catroid/stage/StageActivity;->configuration:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    const/16 v6, 0x8

    iput v6, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iput v6, v4, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iput v6, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iput v6, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    .line 99
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/stage/StageActivity;->setRequestedOrientation(I)V

    .line 101
    const v0, 0x7f0d002e

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/stage/StageActivity;->setContentView(I)V

    .line 102
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/cast/CastManager;->initializeGamepadActivity(Lorg/catrobat/catroid/stage/StageActivity;)V

    .line 103
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageActivity;->configuration:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 104
    invoke-virtual {p0, v1, v3}, Lorg/catrobat/catroid/stage/StageActivity;->initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/cast/CastManager;->addStageViewToLayout(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;)V

    goto :goto_2

    .line 106
    :cond_3
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity;->configuration:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/stage/StageActivity;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 110
    :goto_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->getGdxGraphics()Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->getGdxGraphics()Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 112
    .local v0, "glView":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v3, -0x3

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 113
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 115
    .end local v0    # "glView":Landroid/view/SurfaceView;
    :cond_4
    new-instance v0, Lorg/catrobat/catroid/io/StageAudioFocus;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/io/StageAudioFocus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->stageAudioFocus:Lorg/catrobat/catroid/io/StageAudioFocus;

    .line 116
    new-instance v0, Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/stage/StageResourceHolder;-><init>(Lorg/catrobat/catroid/stage/StageActivity;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

    .line 117
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->reset()V

    .line 119
    invoke-static {}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getProjectsRuntimePermissionList()Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "requiredPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity;->stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-virtual {v1}, Lorg/catrobat/catroid/stage/StageResourceHolder;->initResources()V

    goto :goto_3

    .line 123
    :cond_5
    new-instance v1, Lorg/catrobat/catroid/stage/StageLifeCycleController$1;

    const/16 v2, 0x259

    const v3, 0x7f120710

    invoke-direct {v1, v2, v0, v3, p0}, Lorg/catrobat/catroid/stage/StageLifeCycleController$1;-><init>(ILjava/util/List;ILorg/catrobat/catroid/stage/StageActivity;)V

    .line 127
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/stage/StageLifeCycleController$1;->execute(Landroid/app/Activity;)V

    .line 129
    :goto_3
    return-void
.end method

.method static stageDestroy(Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 3
    .param p0, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;

    .line 242
    invoke-static {}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getProjectsRuntimePermissionList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->checkPermission(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->brickDialogManager:Lorg/catrobat/catroid/stage/BrickDialogManager;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->brickDialogManager:Lorg/catrobat/catroid/stage/BrickDialogManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/BrickDialogManager;->dismissAllDialogs()V

    .line 246
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    .line 247
    .local v0, "service":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    if-eqz v0, :cond_1

    .line 248
    invoke-interface {v0}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->destroy()V

    .line 250
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity;->vibrationManager:Lorg/catrobat/catroid/utils/VibrationManager;

    .line 251
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageActivity;->cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

    if-eqz v2, :cond_2

    .line 252
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageActivity;->cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

    invoke-virtual {v2}, Lorg/catrobat/catroid/camera/CameraManager;->destroy()V

    .line 253
    iput-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity;->cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

    .line 255
    :cond_2
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->destroy()V

    .line 256
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/cast/CastManager;->onStageDestroyed()V

    .line 259
    :cond_3
    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v2}, Lorg/catrobat/catroid/stage/StageListener;->finish()V

    .line 260
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->manageLoadAndFinish()V

    .line 261
    sput-object v1, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    .line 263
    .end local v0    # "service":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    :cond_4
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyPlayingScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 264
    return-void
.end method

.method static stagePause(Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 4
    .param p0, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;

    .line 132
    invoke-static {}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getProjectsRuntimePermissionList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->checkPermission(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "illegalStateException":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/catrobat/catroid/stage/StageLifeCycleController;->TAG:Ljava/lang/String;

    const-string v2, "Disabling NFC foreground dispatching went wrong!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "illegalStateException":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->getSpritesFromStage()Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "sprites":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 145
    .local v2, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v3, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->pauseParticleEffect()V

    .line 146
    .end local v2    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_1

    .line 151
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    sput-wide v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->timerPauseValue:D

    .line 153
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->stopSensorListeners()V

    .line 154
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/io/SoundManager;->pause()V

    .line 155
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->pause()V

    .line 156
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v1}, Lorg/catrobat/catroid/stage/StageListener;->menuPause()V

    .line 157
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity;->stageAudioFocus:Lorg/catrobat/catroid/io/StageAudioFocus;

    invoke-virtual {v1}, Lorg/catrobat/catroid/io/StageAudioFocus;->releaseAudioFocus()V

    .line 158
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity;->cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity;->cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

    invoke-virtual {v1}, Lorg/catrobat/catroid/camera/CameraManager;->pause()V

    .line 161
    :cond_2
    sget-object v1, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    .line 162
    invoke-static {v1}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    .line 163
    .local v1, "bluetoothDeviceService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    if-eqz v1, :cond_3

    .line 164
    invoke-interface {v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->pause()V

    .line 166
    :cond_3
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageActivity;->vibrationManager:Lorg/catrobat/catroid/utils/VibrationManager;

    if-eqz v2, :cond_4

    .line 167
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageActivity;->vibrationManager:Lorg/catrobat/catroid/utils/VibrationManager;

    invoke-virtual {v2}, Lorg/catrobat/catroid/utils/VibrationManager;->pause()V

    .line 169
    :cond_4
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/catrobat/catroid/cast/CastManager;->setRemoteLayoutToPauseScreen(Landroid/content/Context;)V

    .line 173
    .end local v0    # "sprites":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    .end local v1    # "bluetoothDeviceService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    :cond_5
    return-void
.end method

.method public static stageResume(Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 7
    .param p0, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;

    .line 176
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->dialogIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/stage/StageResourceHolder;->getProjectsRuntimePermissionList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->checkPermission(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 181
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getRequiredResources()Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    move-result-object v0

    .line 182
    .local v0, "resourcesSet":Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v1

    .line 184
    .local v1, "spriteList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    invoke-static {p0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->startSensorListener(Landroid/content/Context;)V

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 187
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getPlaySoundBricks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 188
    iget-object v2, p0, Lorg/catrobat/catroid/stage/StageActivity;->stageAudioFocus:Lorg/catrobat/catroid/io/StageAudioFocus;

    invoke-virtual {v2}, Lorg/catrobat/catroid/io/StageAudioFocus;->requestAudioFocus()V

    .line 189
    goto :goto_1

    .line 191
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_1
    goto :goto_0

    .line 193
    :cond_2
    :goto_1
    nop

    .line 194
    invoke-virtual {p0}, Lorg/catrobat/catroid/stage/StageActivity;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v2}, Lorg/catrobat/catroid/stage/StageListener;->getSpritesFromStage()Ljava/util/List;

    move-result-object v2

    .line 195
    .local v2, "sprites":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    if-eqz v2, :cond_3

    .line 196
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/Sprite;

    .line 197
    .local v4, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v5, v4, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Look;->resumeParticleEffect()V

    .line 198
    .end local v4    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_2

    .line 201
    :cond_3
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageActivity;->vibrationManager:Lorg/catrobat/catroid/utils/VibrationManager;

    if-eqz v3, :cond_4

    .line 202
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageActivity;->vibrationManager:Lorg/catrobat/catroid/utils/VibrationManager;

    invoke-virtual {v3}, Lorg/catrobat/catroid/utils/VibrationManager;->resume()V

    .line 205
    :cond_4
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0xa

    .line 206
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x6

    .line 207
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 208
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Project;->hasMultiplayerVariables()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 210
    :cond_5
    :try_start_0
    sget-object v3, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v3}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    invoke-interface {v3}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->start()V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_3

    .line 211
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v4, Lorg/catrobat/catroid/stage/StageLifeCycleController;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v3    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :cond_6
    :goto_3
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageActivity;->cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

    if-eqz v3, :cond_7

    .line 217
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageActivity;->cameraManager:Lorg/catrobat/catroid/camera/CameraManager;

    invoke-virtual {v3}, Lorg/catrobat/catroid/camera/CameraManager;->resume()V

    .line 220
    :cond_7
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 221
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageActivity;->stageAudioFocus:Lorg/catrobat/catroid/io/StageAudioFocus;

    invoke-virtual {v3}, Lorg/catrobat/catroid/io/StageAudioFocus;->requestAudioFocus()V

    .line 224
    :cond_8
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_9

    .line 226
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v4, p0, Lorg/catrobat/catroid/stage/StageActivity;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [[Ljava/lang/String;

    invoke-virtual {v3, p0, v4, v5, v6}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 229
    :cond_9
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 230
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/cast/CastManager;->resumeRemoteLayoutFromPauseScreen()V

    .line 233
    :cond_a
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/io/SoundManager;->resume()V

    .line 234
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->resume()V

    .line 235
    iget-object v3, p0, Lorg/catrobat/catroid/stage/StageActivity;->stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-virtual {v3}, Lorg/catrobat/catroid/stage/StageResourceHolder;->initFinished()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 236
    sget-object v3, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v3}, Lorg/catrobat/catroid/stage/StageListener;->menuResume()V

    .line 239
    .end local v0    # "resourcesSet":Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;
    .end local v1    # "spriteList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    .end local v2    # "sprites":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    :cond_b
    return-void
.end method
