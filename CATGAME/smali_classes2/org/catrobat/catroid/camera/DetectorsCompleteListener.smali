.class public final Lorg/catrobat/catroid/camera/DetectorsCompleteListener;
.super Ljava/lang/Object;
.source "CatdroidImageAnalyzer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/catrobat/catroid/camera/DetectorsCompleteListener;",
        "",
        "numActiveDetectors",
        "",
        "imageProxy",
        "Landroidx/camera/core/ImageProxy;",
        "(ILandroidx/camera/core/ImageProxy;)V",
        "finishedDetectors",
        "onComplete",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private finishedDetectors:I

.field private final imageProxy:Landroidx/camera/core/ImageProxy;

.field private final numActiveDetectors:I


# direct methods
.method public constructor <init>(ILandroidx/camera/core/ImageProxy;)V
    .locals 1
    .param p1, "numActiveDetectors"    # I
    .param p2, "imageProxy"    # Landroidx/camera/core/ImageProxy;

    const-string v0, "imageProxy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/catroid/camera/DetectorsCompleteListener;->numActiveDetectors:I

    iput-object p2, p0, Lorg/catrobat/catroid/camera/DetectorsCompleteListener;->imageProxy:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 80
    iget v0, p0, Lorg/catrobat/catroid/camera/DetectorsCompleteListener;->finishedDetectors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/camera/DetectorsCompleteListener;->finishedDetectors:I

    iget v1, p0, Lorg/catrobat/catroid/camera/DetectorsCompleteListener;->numActiveDetectors:I

    if-lt v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/camera/DetectorsCompleteListener;->imageProxy:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->close()V

    .line 83
    :cond_0
    return-void
.end method
