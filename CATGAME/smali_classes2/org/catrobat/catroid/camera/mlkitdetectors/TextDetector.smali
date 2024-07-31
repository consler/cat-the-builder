.class public final Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetector;
.super Ljava/lang/Object;
.source "TextDetector.kt"

# interfaces
.implements Lorg/catrobat/catroid/camera/mlkitdetectors/Detector;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetector;",
        "Lorg/catrobat/catroid/camera/mlkitdetectors/Detector;",
        "()V",
        "processImage",
        "",
        "mediaImage",
        "Landroid/media/Image;",
        "onCompleteListener",
        "Lorg/catrobat/catroid/camera/DetectorsCompleteListener;",
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
.field public static final INSTANCE:Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetector;

    invoke-direct {v0}, Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetector;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetector;->INSTANCE:Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processImage(Landroid/media/Image;Lorg/catrobat/catroid/camera/DetectorsCompleteListener;)V
    .locals 1
    .param p1, "mediaImage"    # Landroid/media/Image;
    .param p2, "onCompleteListener"    # Lorg/catrobat/catroid/camera/DetectorsCompleteListener;

    const-string v0, "mediaImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompleteListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    return-void
.end method
