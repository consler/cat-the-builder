.class public final Lorg/catrobat/catroid/camera/FaceTextPoseDetectorHuawei;
.super Ljava/lang/Object;
.source "FaceTextPoseDetectorHuawei.kt"

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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/catroid/camera/FaceTextPoseDetectorHuawei;",
        "Landroidx/camera/core/ImageAnalysis$Analyzer;",
        "()V",
        "DETECTION_PROCESS_ERROR_MESSAGE",
        "",
        "QUADRANT_DEGREES",
        "",
        "faceDetected",
        "",
        "poseDetected",
        "textDetected",
        "analyze",
        "",
        "imageProxy",
        "Landroidx/camera/core/ImageProxy;",
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
.field private static final DETECTION_PROCESS_ERROR_MESSAGE:Ljava/lang/String; = "Could not analyze image."

.field public static final INSTANCE:Lorg/catrobat/catroid/camera/FaceTextPoseDetectorHuawei;

.field private static final QUADRANT_DEGREES:I = 0x5a

.field private static faceDetected:Z

.field private static poseDetected:Z

.field private static textDetected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/catrobat/catroid/camera/FaceTextPoseDetectorHuawei;

    invoke-direct {v0}, Lorg/catrobat/catroid/camera/FaceTextPoseDetectorHuawei;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/camera/FaceTextPoseDetectorHuawei;->INSTANCE:Lorg/catrobat/catroid/camera/FaceTextPoseDetectorHuawei;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public analyze(Landroidx/camera/core/ImageProxy;)V
    .locals 1
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;

    const-string v0, "imageProxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    return-void
.end method
