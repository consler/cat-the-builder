.class public final Lorg/catrobat/paintroid/command/implementation/RotateCommand;
.super Ljava/lang/Object;
.source "RotateCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/implementation/RotateCommand$Companion;,
        Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;,
        Lorg/catrobat/paintroid/command/implementation/RotateCommand$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000f\u0010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/RotateCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "rotateDirection",
        "Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;",
        "(Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;)V",
        "<set-?>",
        "getRotateDirection",
        "()Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;",
        "freeResources",
        "",
        "run",
        "canvas",
        "Landroid/graphics/Canvas;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "Companion",
        "RotateDirection",
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


# static fields
.field private static final ANGLE:F = 90.0f

.field public static final Companion:Lorg/catrobat/paintroid/command/implementation/RotateCommand$Companion;


# instance fields
.field private rotateDirection:Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/RotateCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/implementation/RotateCommand$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/command/implementation/RotateCommand;->Companion:Lorg/catrobat/paintroid/command/implementation/RotateCommand$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;)V
    .locals 1

    const-string v0, "rotateDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/RotateCommand;->rotateDirection:Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    return-void
.end method

.method public final getRotateDirection()Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/RotateCommand;->rotateDirection:Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layerModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/RotateCommand;->getRotateDirection()Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    move-result-object v0

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/RotateCommand$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42b40000    # 90.0f

    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_0
    const/4 v0, 0x0

    .line 43
    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Iterator;

    .line 44
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    .line 47
    invoke-interface {v8}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v3

    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v5, p1

    .line 46
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "rotatedBitmap"

    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 52
    :cond_2
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result p1

    .line 53
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v0

    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setWidth(I)V

    .line 54
    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setHeight(I)V

    return-void
.end method
