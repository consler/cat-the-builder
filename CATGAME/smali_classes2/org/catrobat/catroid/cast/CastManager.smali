.class public final Lorg/catrobat/catroid/cast/CastManager;
.super Ljava/lang/Object;
.source "CastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/catrobat/catroid/cast/CastManager;

.field public static unsupportedBricks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private callback:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

.field private castButton:Landroid/view/MenuItem;

.field private deviceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

.field private initializingActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private isCastDeviceAvailable:Z

.field private isConnected:Z

.field private isGamepadButtonPressed:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/catrobat/catroid/formulaeditor/Sensors;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mediaRouter:Landroidx/mediarouter/media/MediaRouter;

.field private pausedScreenShowing:Z

.field private pausedView:Landroid/widget/RelativeLayout;

.field private remoteLayout:Landroid/widget/RelativeLayout;

.field private final routeInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private selectedDevice:Lcom/google/android/gms/cast/CastDevice;

.field private stageViewDisplayedOnCast:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lorg/catrobat/catroid/cast/CastManager;

    invoke-direct {v0}, Lorg/catrobat/catroid/cast/CastManager;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/cast/CastManager;->INSTANCE:Lorg/catrobat/catroid/cast/CastManager;

    .line 90
    new-instance v0, Lorg/catrobat/catroid/cast/CastManager$1;

    invoke-direct {v0}, Lorg/catrobat/catroid/cast/CastManager$1;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/cast/CastManager;->unsupportedBricks:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->routeInfos:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isGamepadButtonPressed:Ljava/util/EnumMap;

    .line 81
    const/4 v1, 0x0

    .line 99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 81
    iput-boolean v1, p0, Lorg/catrobat/catroid/cast/CastManager;->isConnected:Z

    .line 85
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedView:Landroid/widget/RelativeLayout;

    .line 87
    iput-boolean v1, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedScreenShowing:Z

    .line 99
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_A_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isGamepadButtonPressed:Ljava/util/EnumMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_B_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isGamepadButtonPressed:Ljava/util/EnumMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_LEFT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isGamepadButtonPressed:Ljava/util/EnumMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_RIGHT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isGamepadButtonPressed:Ljava/util/EnumMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_UP_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isGamepadButtonPressed:Ljava/util/EnumMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_DOWN_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/cast/CastManager;)Lorg/catrobat/catroid/stage/StageActivity;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/catrobat/catroid/cast/CastManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;

    .line 71
    iget-boolean v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isCastDeviceAvailable:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/catrobat/catroid/cast/CastManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lorg/catrobat/catroid/cast/CastManager;->isCastDeviceAvailable:Z

    return p1
.end method

.method static synthetic access$102(Lorg/catrobat/catroid/cast/CastManager;Lorg/catrobat/catroid/stage/StageActivity;)Lorg/catrobat/catroid/stage/StageActivity;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;
    .param p1, "x1"    # Lorg/catrobat/catroid/stage/StageActivity;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/catrobat/catroid/cast/CastManager;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->stageViewDisplayedOnCast:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/catrobat/catroid/cast/CastManager;Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;
    .param p1, "x1"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager;->stageViewDisplayedOnCast:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    return-object p1
.end method

.method static synthetic access$1202(Lorg/catrobat/catroid/cast/CastManager;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager;->remoteLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/catrobat/catroid/cast/CastManager;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedView:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$1402(Lorg/catrobat/catroid/cast/CastManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedScreenShowing:Z

    return p1
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/cast/CastManager;Landroid/widget/ImageButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;
    .param p1, "x1"    # Landroid/widget/ImageButton;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/cast/CastManager;->handleGamepadTouch(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/cast/CastManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->routeInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/cast/CastManager;)Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object v0
.end method

.method static synthetic access$500(Lorg/catrobat/catroid/cast/CastManager;)Landroidx/mediarouter/media/MediaRouter;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouter:Landroidx/mediarouter/media/MediaRouter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/catrobat/catroid/cast/CastManager;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->castButton:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$700(Lorg/catrobat/catroid/cast/CastManager;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->deviceAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/catrobat/catroid/cast/CastManager;)Lcom/google/android/gms/cast/CastDevice;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->selectedDevice:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method static synthetic access$802(Lorg/catrobat/catroid/cast/CastManager;Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/cast/CastDevice;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;
    .param p1, "x1"    # Lcom/google/android/gms/cast/CastDevice;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager;->selectedDevice:Lcom/google/android/gms/cast/CastDevice;

    return-object p1
.end method

.method static synthetic access$900(Lorg/catrobat/catroid/cast/CastManager;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/cast/CastManager;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->initializingActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public static getInstance()Lorg/catrobat/catroid/cast/CastManager;
    .locals 1

    .line 108
    sget-object v0, Lorg/catrobat/catroid/cast/CastManager;->INSTANCE:Lorg/catrobat/catroid/cast/CastManager;

    return-object v0
.end method

.method private declared-synchronized handleGamepadTouch(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    monitor-enter p0

    .line 230
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 232
    monitor-exit p0

    return-void

    .line 235
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 236
    monitor-exit p0

    return-void

    .line 239
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 243
    .local v0, "isActionDown":Z
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 271
    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_4

    .line 255
    :pswitch_0
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1201c7

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "buttonPressedName":Ljava/lang/String;
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_UP_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 257
    .local v3, "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    goto :goto_3

    .line 267
    .end local v2    # "buttonPressedName":Ljava/lang/String;
    .end local v3    # "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    :pswitch_1
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1201c6

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2    # "buttonPressedName":Ljava/lang/String;
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_RIGHT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 269
    .restart local v3    # "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    goto :goto_3

    .line 263
    .end local v2    # "buttonPressedName":Ljava/lang/String;
    .end local v3    # "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    :pswitch_2
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1201c5

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 264
    .restart local v2    # "buttonPressedName":Ljava/lang/String;
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_LEFT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 265
    .restart local v3    # "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    goto :goto_3

    .line 259
    .end local v2    # "buttonPressedName":Ljava/lang/String;
    .end local v3    # "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    :pswitch_3
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1201c4

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    .restart local v2    # "buttonPressedName":Ljava/lang/String;
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_DOWN_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 261
    .restart local v3    # "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    goto :goto_3

    .line 250
    .end local v2    # "buttonPressedName":Ljava/lang/String;
    .end local v3    # "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    :pswitch_4
    if-eqz v0, :cond_3

    const v2, 0x7f08010d

    goto :goto_1

    :cond_3
    const v2, 0x7f08010c

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 251
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1201c3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 252
    .restart local v2    # "buttonPressedName":Ljava/lang/String;
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_B_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 253
    .restart local v3    # "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    goto :goto_3

    .line 245
    .end local v2    # "buttonPressedName":Ljava/lang/String;
    .end local v3    # "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    :pswitch_5
    if-eqz v0, :cond_4

    const v2, 0x7f08010b

    goto :goto_2

    :cond_4
    const v2, 0x7f08010a

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 246
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1201c2

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    .restart local v2    # "buttonPressedName":Ljava/lang/String;
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_A_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 248
    .restart local v3    # "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    nop

    .line 273
    :goto_3
    invoke-virtual {p0, v3, v0}, Lorg/catrobat/catroid/cast/CastManager;->setButtonPress(Lorg/catrobat/catroid/formulaeditor/Sensors;Z)V

    .line 275
    if-eqz v0, :cond_5

    .line 276
    iget-object v4, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v4}, Lorg/catrobat/catroid/stage/StageActivity;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v4, v2}, Lorg/catrobat/catroid/stage/StageListener;->gamepadPressed(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->performHapticFeedback(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :cond_5
    monitor-exit p0

    return-void

    .line 271
    .end local v2    # "buttonPressedName":Ljava/lang/String;
    .end local v3    # "buttonPressed":Lorg/catrobat/catroid/formulaeditor/Sensors;
    :goto_4
    :try_start_3
    const-string v2, "Unknown button pressed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    .end local v0    # "isActionDown":Z
    .end local p1    # "button":Landroid/widget/ImageButton;
    .end local p2    # "event":Landroid/view/MotionEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x7f0a03c0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initGamepadListeners()V
    .locals 6

    .line 195
    new-instance v0, Lorg/catrobat/catroid/cast/CastManager$2;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/cast/CastManager$2;-><init>(Lorg/catrobat/catroid/cast/CastManager;)V

    .line 203
    .local v0, "pauseButtonListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v2, 0x7f0a03c6

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/stage/StageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v1, Lorg/catrobat/catroid/cast/CastManager$3;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/cast/CastManager$3;-><init>(Lorg/catrobat/catroid/cast/CastManager;)V

    .line 213
    .local v1, "otl":Landroid/view/View$OnTouchListener;
    const/4 v2, 0x6

    new-array v2, v2, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 215
    const v4, 0x7f0a03c0

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/stage/StageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 216
    const v5, 0x7f0a03c1

    invoke-virtual {v3, v5}, Lorg/catrobat/catroid/stage/StageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 217
    const v5, 0x7f0a03c5

    invoke-virtual {v3, v5}, Lorg/catrobat/catroid/stage/StageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 218
    const v5, 0x7f0a03c2

    invoke-virtual {v3, v5}, Lorg/catrobat/catroid/stage/StageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 219
    const v5, 0x7f0a03c3

    invoke-virtual {v3, v5}, Lorg/catrobat/catroid/stage/StageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const/4 v5, 0x4

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 220
    const v5, 0x7f0a03c4

    invoke-virtual {v3, v5}, Lorg/catrobat/catroid/stage/StageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const/4 v5, 0x5

    aput-object v3, v2, v5

    .line 223
    .local v2, "gamepadButtons":[Landroid/widget/ImageButton;
    array-length v3, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 224
    .local v5, "btn":Landroid/widget/ImageButton;
    invoke-virtual {v5, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    .end local v5    # "btn":Landroid/widget/ImageButton;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback()V
    .locals 4

    .line 174
    new-instance v0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;-><init>(Lorg/catrobat/catroid/cast/CastManager;Lorg/catrobat/catroid/cast/CastManager$1;)V

    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->callback:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    .line 175
    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 176
    return-void
.end method

.method public declared-synchronized addStageViewToLayout(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;)V
    .locals 5
    .param p1, "stageView"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    monitor-enter p0

    .line 282
    :try_start_0
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager;->stageViewDisplayedOnCast:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    .line 283
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->remoteLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager;->initializingActivity:Landroidx/appcompat/app/AppCompatActivity;

    const v2, 0x106000b

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 284
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->remoteLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 285
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->remoteLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager;->stageViewDisplayedOnCast:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 286
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 287
    .local v0, "project":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/XmlHeader;->getVirtualScreenWidth()I

    move-result v3

    .line 288
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/XmlHeader;->getVirtualScreenHeight()I

    move-result v4

    .line 287
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 281
    .end local v0    # "project":Lorg/catrobat/catroid/content/Project;
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    .end local p1    # "stageView":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized currentlyConnecting()Z
    .locals 1

    monitor-enter p0

    .line 292
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->selectedDevice:Lcom/google/android/gms/cast/CastDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceAdapter()Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->deviceAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public getMediaRouter()Landroidx/mediarouter/media/MediaRouter;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouter:Landroidx/mediarouter/media/MediaRouter;

    return-object v0
.end method

.method public getRouteInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->routeInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedDevice()Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->selectedDevice:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method public declared-synchronized initializeCast(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    monitor-enter p0

    .line 160
    :try_start_0
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager;->initializingActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 162
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouter:Landroidx/mediarouter/media/MediaRouter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 163
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    :try_start_1
    new-instance v0, Lorg/catrobat/catroid/ui/adapter/CastDevicesAdapter;

    const v1, 0x7f0d015f

    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager;->routeInfos:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1, v2}, Lorg/catrobat/catroid/ui/adapter/CastDevicesAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->deviceAdapter:Landroid/widget/ArrayAdapter;

    .line 166
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 167
    new-instance v0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    const-string v1, "CEBB9229"

    .line 168
    invoke-static {v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 170
    invoke-virtual {p0}, Lorg/catrobat/catroid/cast/CastManager;->setCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 159
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    .end local p1    # "activity":Landroidx/appcompat/app/AppCompatActivity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initializeGamepadActivity(Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 0
    .param p1, "gamepadActivity"    # Lorg/catrobat/catroid/stage/StageActivity;

    monitor-enter p0

    .line 112
    :try_start_0
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager;->gamepadActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 113
    invoke-direct {p0}, Lorg/catrobat/catroid/cast/CastManager;->initGamepadListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 111
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    .end local p1    # "gamepadActivity":Lorg/catrobat/catroid/stage/StageActivity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isButtonPressed(Lorg/catrobat/catroid/formulaeditor/Sensors;)Z
    .locals 1
    .param p1, "btnSensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 147
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isGamepadButtonPressed:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 131
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStageDestroyed()V
    .locals 1

    monitor-enter p0

    .line 348
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->initializingActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/cast/CastManager;->setRemoteLayoutToIdleScreen(Landroid/content/Context;)V

    .line 351
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->stageViewDisplayedOnCast:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    .line 352
    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedView:Landroid/widget/RelativeLayout;

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedScreenShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openDeviceSelectorOrDisconnectDialog()V
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->initializingActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/cast/CastManager;->openDeviceSelectorOrDisconnectDialog(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 191
    return-void
.end method

.method public declared-synchronized openDeviceSelectorOrDisconnectDialog(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    monitor-enter p0

    .line 296
    :try_start_0
    new-instance v0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;-><init>()V

    .line 297
    .local v0, "dialog":Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 295
    .end local v0    # "dialog":Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    .end local p1    # "activity":Landroidx/appcompat/app/AppCompatActivity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resumeRemoteLayoutFromPauseScreen()V
    .locals 2

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->remoteLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedScreenShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "routeInfo"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 307
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 308
    return-void
.end method

.method public setButtonPress(Lorg/catrobat/catroid/formulaeditor/Sensors;Z)V
    .locals 2
    .param p1, "btn"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .param p2, "b"    # Z

    .line 151
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isGamepadButtonPressed:Ljava/util/EnumMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public declared-synchronized setCallback()V
    .locals 1

    monitor-enter p0

    .line 179
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/cast/CastManager;->setCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 178
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallback(I)V
    .locals 3
    .param p1, "callbackFlag"    # I

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->callback:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;-><init>(Lorg/catrobat/catroid/cast/CastManager;Lorg/catrobat/catroid/cast/CastManager$1;)V

    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->callback:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    .line 186
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager;->callback:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 182
    .end local p1    # "callbackFlag":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCastButton(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "castButton"    # Landroid/view/MenuItem;

    monitor-enter p0

    .line 301
    :try_start_0
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager;->castButton:Landroid/view/MenuItem;

    .line 302
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager;->mediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->isRouteAvailable(Landroidx/mediarouter/media/MediaRouteSelector;I)Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    iget-boolean v0, p0, Lorg/catrobat/catroid/cast/CastManager;->isConnected:Z

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/cast/CastManager;->setIsConnected(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 300
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    .end local p1    # "castButton":Landroid/view/MenuItem;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIsConnected(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    monitor-enter p0

    .line 118
    if-eqz p1, :cond_0

    const v0, 0x7f080122

    goto :goto_0

    :cond_0
    const v0, 0x7f080123

    .line 119
    .local v0, "drawableId":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager;->castButton:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 120
    iput-boolean p1, p0, Lorg/catrobat/catroid/cast/CastManager;->isConnected:Z

    .line 121
    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager;->initializingActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 117
    .end local v0    # "drawableId":I
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    .end local p1    # "isConnected":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRemoteLayout(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "remoteLayout"    # Landroid/widget/RelativeLayout;

    monitor-enter p0

    .line 311
    :try_start_0
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager;->remoteLayout:Landroid/widget/RelativeLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    .line 310
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    .end local p1    # "remoteLayout":Landroid/widget/RelativeLayout;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRemoteLayoutToIdleScreen(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->remoteLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 316
    const v0, 0x7f080274

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 317
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager;->remoteLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 314
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRemoteLayoutToPauseScreen(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->remoteLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedScreenShowing:Z

    if-nez v0, :cond_0

    .line 324
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0113

    const/4 v3, 0x0

    .line 325
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedView:Landroid/widget/RelativeLayout;

    .line 326
    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastManager;->remoteLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 327
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 328
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    .line 329
    .local v2, "p":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/XmlHeader;->getVirtualScreenHeight()I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 330
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/XmlHeader;->getVirtualScreenWidth()I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 331
    iget-object v3, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v3, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedView:Landroid/widget/RelativeLayout;

    const/high16 v4, 0x66000000

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 333
    iput-boolean v1, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedScreenShowing:Z

    .line 335
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "p":Lorg/catrobat/catroid/content/Project;
    .end local p0    # "this":Lorg/catrobat/catroid/cast/CastManager;
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 336
    iput-boolean v1, p0, Lorg/catrobat/catroid/cast/CastManager;->pausedScreenShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_1
    monitor-exit p0

    return-void

    .line 321
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startCastButtonAnimation()V
    .locals 2

    .line 125
    const v0, 0x7f08005c

    .line 126
    .local v0, "drawableId":I
    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager;->castButton:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 127
    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastManager;->castButton:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 128
    return-void
.end method
