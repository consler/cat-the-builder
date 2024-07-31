.class public final Lorg/catrobat/paintroid/command/implementation/RotateCommand;
.super Ljava/lang/Object;
.source "RotateCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;,
        Lorg/catrobat/paintroid/command/implementation/RotateCommand$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
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
    .param p1, "rotateDirection"    # Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

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

    .line 68
    return-void
.end method

.method public final getRotateDirection()Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/RotateCommand;->rotateDirection:Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-object/from16 v0, p2

    const-string v1, "canvas"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layerModel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object v1, v8

    .local v1, "$this$apply":Landroid/graphics/Matrix;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-apply-RotateCommand$run$rotateMatrix$1":I
    move-object/from16 v10, p0

    iget-object v4, v10, Lorg/catrobat/paintroid/command/implementation/RotateCommand;->rotateDirection:Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    sget-object v5, Lorg/catrobat/paintroid/command/implementation/RotateCommand$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 39
    :cond_1
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 42
    :goto_0
    nop

    .line 37
    .end local v1    # "$this$apply":Landroid/graphics/Matrix;
    .end local v3    # "$i$a$-apply-RotateCommand$run$rotateMatrix$1":I
    nop

    .line 43
    .local v8, "rotateMatrix":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 44
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    .line 46
    .local v11, "currentLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    invoke-interface {v11}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .local v3, "it":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 47
    .local v12, "$i$a$-let-RotateCommand$run$1":I
    nop

    .line 48
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 49
    invoke-interface/range {p2 .. p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v6

    invoke-interface/range {p2 .. p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    .line 47
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 51
    .local v4, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v11, v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    .end local v4    # "rotatedBitmap":Landroid/graphics/Bitmap;
    nop

    .line 46
    .end local v3    # "it":Landroid/graphics/Bitmap;
    .end local v12    # "$i$a$-let-RotateCommand$run$1":I
    nop

    .line 53
    :cond_2
    invoke-interface {v11}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getTransparentBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_3

    .local v13, "it":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 54
    .local v3, "$i$a$-let-RotateCommand$run$2":I
    nop

    .line 55
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 56
    invoke-interface/range {p2 .. p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v16

    invoke-interface/range {p2 .. p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v17

    const/16 v19, 0x1

    .line 54
    move-object/from16 v18, v8

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 58
    .restart local v4    # "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v11, v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setTransparentBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    .end local v4    # "rotatedBitmap":Landroid/graphics/Bitmap;
    nop

    .line 53
    .end local v3    # "$i$a$-let-RotateCommand$run$2":I
    .end local v13    # "it":Landroid/graphics/Bitmap;
    nop

    .line 44
    .end local v11    # "currentLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    :cond_3
    goto :goto_1

    .line 61
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v3

    .line 62
    .local v3, "tmpWidth":I
    invoke-interface/range {p2 .. p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v4

    invoke-interface {v0, v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setWidth(I)V

    .line 63
    invoke-interface {v0, v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setHeight(I)V

    .line 64
    return-void
.end method
