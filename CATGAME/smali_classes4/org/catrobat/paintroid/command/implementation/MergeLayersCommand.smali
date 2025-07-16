.class public final Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;
.super Ljava/lang/Object;
.source "MergeLayersCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u001e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "position",
        "",
        "mergeWith",
        "(II)V",
        "<set-?>",
        "getMergeWith",
        "()I",
        "getPosition",
        "freeResources",
        "",
        "run",
        "canvas",
        "Landroid/graphics/Canvas;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "Companion",
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
.field public static final Companion:Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mergeWith:I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;->Companion:Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand$Companion;

    const-string v0, "MergeLayersCommand"

    .line 33
    sput-object v0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;->position:I

    .line 30
    iput p2, p0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;->mergeWith:I

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    return-void
.end method

.method public final getMergeWith()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;->mergeWith:I

    return v0
.end method

.method public final getPosition()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;->position:I

    return v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layerModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget p1, p0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;->position:I

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object p1

    .line 38
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;->mergeWith:I

    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 41
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 46
    iget v2, p0, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;->position:I

    invoke-interface {p2, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->removeLayerAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "copyBitmap"

    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setCurrentLayer(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_0
    if-nez v3, :cond_4

    .line 56
    sget-object p1, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;->TAG:Ljava/lang/String;

    const-string p2, "Could not merge layers!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
