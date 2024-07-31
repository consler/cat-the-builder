.class public Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;
.super Ljava/lang/Object;
.source "TextBlockFunctionProvider.java"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private interpretFunctionTextBlockSize(D)D
    .locals 2
    .param p1, "argument"    # D

    .line 75
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;->checkTextDetectionEnabled()V

    .line 76
    sget-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->INSTANCE:Lorg/catrobat/catroid/utils/TextBlockUtil;

    double-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/utils/TextBlockUtil;->getSize(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private interpretFunctionTextBlockX(D)D
    .locals 2
    .param p1, "argument"    # D

    .line 65
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;->checkTextDetectionEnabled()V

    .line 66
    sget-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->INSTANCE:Lorg/catrobat/catroid/utils/TextBlockUtil;

    double-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/utils/TextBlockUtil;->getCenterCoordinates(I)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    return-wide v0
.end method

.method private interpretFunctionTextBlockY(D)D
    .locals 2
    .param p1, "argument"    # D

    .line 70
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;->checkTextDetectionEnabled()V

    .line 71
    sget-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->INSTANCE:Lorg/catrobat/catroid/utils/TextBlockUtil;

    double-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/utils/TextBlockUtil;->getCenterCoordinates(I)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public static synthetic lambda$BjIxh-ROBjYWGzf3xEH25ouApHg(Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;->interpretFunctionTextBlockSize(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$R2e3fLbBStnKbiAG_lRXIO3T75M(Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;->interpretFunctionTextBlockY(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$aRcFfn5ukFSkIbt9EjtcN8WP7Jw(Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;->interpretFunctionTextBlockX(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$checkTextDetectionEnabled$0(Lorg/catrobat/catroid/camera/CameraManager;)V
    .locals 0
    .param p0, "cameraManager"    # Lorg/catrobat/catroid/camera/CameraManager;

    .line 50
    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/CameraManager;->startDetection()Z

    return-void
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

    .line 39
    .local p1, "formulaFunctions":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/formulaeditor/Functions;Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;>;"
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TEXT_BLOCK_X:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TextBlockFunctionProvider$aRcFfn5ukFSkIbt9EjtcN8WP7Jw;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TextBlockFunctionProvider$aRcFfn5ukFSkIbt9EjtcN8WP7Jw;-><init>(Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TEXT_BLOCK_Y:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TextBlockFunctionProvider$R2e3fLbBStnKbiAG_lRXIO3T75M;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TextBlockFunctionProvider$R2e3fLbBStnKbiAG_lRXIO3T75M;-><init>(Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Functions;->TEXT_BLOCK_SIZE:Lorg/catrobat/catroid/formulaeditor/Functions;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TextBlockFunctionProvider$BjIxh-ROBjYWGzf3xEH25ouApHg;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TextBlockFunctionProvider$BjIxh-ROBjYWGzf3xEH25ouApHg;-><init>(Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/function/UnaryFunction;-><init>(Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public checkTextDetectionEnabled()V
    .locals 3

    .line 48
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v0

    .line 49
    .local v0, "cameraManager":Lorg/catrobat/catroid/camera/CameraManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/camera/CameraManager;->getDetectionOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TextBlockFunctionProvider$k74wORVGoxxJOinDGT-5dZ5tKKs;

    invoke-direct {v2, v0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TextBlockFunctionProvider$k74wORVGoxxJOinDGT-5dZ5tKKs;-><init>(Lorg/catrobat/catroid/camera/CameraManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :cond_0
    return-void
.end method

.method public interpretFunctionTextBlock(D)Ljava/lang/String;
    .locals 2
    .param p1, "argument"    # D

    .line 55
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;->checkTextDetectionEnabled()V

    .line 56
    sget-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->INSTANCE:Lorg/catrobat/catroid/utils/TextBlockUtil;

    double-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/utils/TextBlockUtil;->getTextBlock(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interpretFunctionTextBlockLanguage(D)Ljava/lang/String;
    .locals 2
    .param p1, "argument"    # D

    .line 60
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;->checkTextDetectionEnabled()V

    .line 61
    sget-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->INSTANCE:Lorg/catrobat/catroid/utils/TextBlockUtil;

    double-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/utils/TextBlockUtil;->getTextBlockLanguage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
