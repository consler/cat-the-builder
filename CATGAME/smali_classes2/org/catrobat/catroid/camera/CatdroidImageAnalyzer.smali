.class public final Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;
.super Ljava/lang/Object;
.source "CatdroidImageAnalyzer.kt"

# interfaces
.implements Landroidx/camera/core/ImageAnalysis$Analyzer;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0017J\u0010\u0010\r\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;",
        "Landroidx/camera/core/ImageAnalysis$Analyzer;",
        "()V",
        "DETECTION_PROCESS_ERROR_MESSAGE",
        "",
        "activeDetectors",
        "Ljava/util/ArrayList;",
        "Lorg/catrobat/catroid/camera/mlkitdetectors/Detector;",
        "Lkotlin/collections/ArrayList;",
        "analyze",
        "",
        "imageProxy",
        "Landroidx/camera/core/ImageProxy;",
        "setActiveDetectorsWithContext",
        "context",
        "Landroid/content/Context;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final DETECTION_PROCESS_ERROR_MESSAGE:Ljava/lang/String; = "Could not analyze image."

.field public static final INSTANCE:Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;

.field private static final activeDetectors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/camera/mlkitdetectors/Detector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;

    invoke-direct {v0}, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;->INSTANCE:Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;->activeDetectors:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public analyze(Landroidx/camera/core/ImageProxy;)V
    .locals 1
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;

    const-string v0, "imageProxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public final setActiveDetectorsWithContext(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    sget-object v0, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;->activeDetectors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    if-eqz p1, :cond_4

    move-object v0, p1

    .local v0, "it":Landroid/content/Context;
    const/4 v1, 0x0

    .line 58
    .local v1, "$i$a$-let-CatdroidImageAnalyzer$setActiveDetectorsWithContext$1":I
    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isAIFaceDetectionSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;->activeDetectors:Ljava/util/ArrayList;

    sget-object v3, Lorg/catrobat/catroid/camera/mlkitdetectors/FaceDetector;->INSTANCE:Lorg/catrobat/catroid/camera/mlkitdetectors/FaceDetector;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isAIPoseDetectionSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    sget-object v2, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;->activeDetectors:Ljava/util/ArrayList;

    sget-object v3, Lorg/catrobat/catroid/camera/mlkitdetectors/PoseDetector;->INSTANCE:Lorg/catrobat/catroid/camera/mlkitdetectors/PoseDetector;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isAITextRecognitionSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    sget-object v2, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;->activeDetectors:Ljava/util/ArrayList;

    sget-object v3, Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetector;->INSTANCE:Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetector;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isAIObjectDetectionSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    sget-object v2, Lorg/catrobat/catroid/camera/CatdroidImageAnalyzer;->activeDetectors:Ljava/util/ArrayList;

    sget-object v3, Lorg/catrobat/catroid/camera/mlkitdetectors/ObjectDetector;->INSTANCE:Lorg/catrobat/catroid/camera/mlkitdetectors/ObjectDetector;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_3
    nop

    .line 57
    .end local v0    # "it":Landroid/content/Context;
    .end local v1    # "$i$a$-let-CatdroidImageAnalyzer$setActiveDetectorsWithContext$1":I
    nop

    .line 71
    :cond_4
    return-void
.end method
