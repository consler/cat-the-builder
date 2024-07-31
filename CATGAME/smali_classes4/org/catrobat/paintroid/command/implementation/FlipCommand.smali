.class public final Lorg/catrobat/paintroid/command/implementation/FlipCommand;
.super Ljava/lang/Object;
.source "FlipCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/FlipCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "flipDirection",
        "Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;",
        "(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)V",
        "<set-?>",
        "getFlipDirection",
        "()Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;",
        "freeResources",
        "",
        "run",
        "canvas",
        "Landroid/graphics/Canvas;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "FlipDirection",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private flipDirection:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)V
    .locals 1
    .param p1, "flipDirection"    # Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    const-string v0, "flipDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/FlipCommand;->flipDirection:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    .line 62
    return-void
.end method

.method public final getFlipDirection()Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/FlipCommand;->flipDirection:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/graphics/Matrix;
    const/4 v2, 0x0

    .line 35
    .local v2, "$i$a$-apply-FlipCommand$run$flipMatrix$1":I
    iget-object v3, p0, Lorg/catrobat/paintroid/command/implementation/FlipCommand;->flipDirection:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    sget-object v4, Lorg/catrobat/paintroid/command/implementation/FlipCommand$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 42
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1, v7, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 38
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 45
    :goto_0
    nop

    .line 34
    .end local v1    # "$this$apply":Landroid/graphics/Matrix;
    .end local v2    # "$i$a$-apply-FlipCommand$run$flipMatrix$1":I
    nop

    .line 46
    .local v0, "flipMatrix":Landroid/graphics/Matrix;
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 47
    .local v3, "$i$a$-let-FlipCommand$run$1":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 48
    .local v4, "bitmapCopy":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .local v5, "flipCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 50
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v4, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 51
    .end local v4    # "bitmapCopy":Landroid/graphics/Bitmap;
    .end local v5    # "flipCanvas":Landroid/graphics/Canvas;
    nop

    .line 46
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "$i$a$-let-FlipCommand$run$1":I
    :cond_2
    nop

    .line 52
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getTransparentBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 53
    .local v3, "$i$a$-let-FlipCommand$run$2":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 54
    .restart local v4    # "bitmapCopy":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .restart local v5    # "flipCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 56
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v4, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 57
    .end local v4    # "bitmapCopy":Landroid/graphics/Bitmap;
    .end local v5    # "flipCanvas":Landroid/graphics/Canvas;
    nop

    .line 52
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "$i$a$-let-FlipCommand$run$2":I
    :cond_3
    nop

    .line 58
    return-void
.end method
