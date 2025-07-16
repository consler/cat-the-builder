.class public final Lorg/catrobat/paintroid/command/implementation/FlipCommand;
.super Ljava/lang/Object;
.source "FlipCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;,
        Lorg/catrobat/paintroid/command/implementation/FlipCommand$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
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
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private flipDirection:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;)V
    .locals 1

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

    return-void
.end method

.method public final getFlipDirection()Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/FlipCommand;->flipDirection:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layerModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 35
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/FlipCommand;->getFlipDirection()Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    move-result-object v0

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/FlipCommand$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 42
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 38
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 46
    :goto_0
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p2, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 50
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method
