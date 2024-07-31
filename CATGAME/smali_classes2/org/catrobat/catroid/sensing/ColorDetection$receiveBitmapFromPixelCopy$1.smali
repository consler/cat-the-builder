.class final Lorg/catrobat/catroid/sensing/ColorDetection$receiveBitmapFromPixelCopy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ColorDetection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/sensing/ColorDetection;-><init>(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/stage/StageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<no name provided>",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/sensing/ColorDetection;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/sensing/ColorDetection;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/sensing/ColorDetection$receiveBitmapFromPixelCopy$1;->this$0:Lorg/catrobat/catroid/sensing/ColorDetection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/sensing/ColorDetection$receiveBitmapFromPixelCopy$1;->invoke(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/ColorDetection$receiveBitmapFromPixelCopy$1;->this$0:Lorg/catrobat/catroid/sensing/ColorDetection;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/sensing/ColorDetection;->setCameraBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    return-void
.end method
