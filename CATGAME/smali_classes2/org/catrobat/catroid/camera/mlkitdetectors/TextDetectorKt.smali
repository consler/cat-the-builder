.class public final Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetectorKt;
.super Ljava/lang/Object;
.source "TextDetector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\"\u001b\u0010\u0000\u001a\u00020\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "textDetectionClient",
        "",
        "getTextDetectionClient",
        "()Lkotlin/Unit;",
        "textDetectionClient$delegate",
        "Lkotlin/Lazy;",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final textDetectionClient$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetectorKt$textDetectionClient$2;->INSTANCE:Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetectorKt$textDetectionClient$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetectorKt;->textDetectionClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final getTextDetectionClient()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lorg/catrobat/catroid/camera/mlkitdetectors/TextDetectorKt;->textDetectionClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    return-object v0
.end method
