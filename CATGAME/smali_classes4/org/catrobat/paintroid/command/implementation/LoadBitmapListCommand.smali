.class public final Lorg/catrobat/paintroid/command/implementation/LoadBitmapListCommand;
.super Ljava/lang/Object;
.source "LoadBitmapListCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadBitmapListCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadBitmapListCommand.kt\norg/catrobat/paintroid/command/implementation/LoadBitmapListCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,44:1\n1828#2,3:45\n*E\n*S KotlinDebug\n*F\n+ 1 LoadBitmapListCommand.kt\norg/catrobat/paintroid/command/implementation/LoadBitmapListCommand\n*L\n33#1,3:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R.\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/LoadBitmapListCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "loadedImageList",
        "",
        "Landroid/graphics/Bitmap;",
        "(Ljava/util/List;)V",
        "<set-?>",
        "getLoadedImageList",
        "()Ljava/util/List;",
        "freeResources",
        "",
        "run",
        "canvas",
        "Landroid/graphics/Canvas;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
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
.field private loadedImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "loadedImageList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "loadedImageList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/LoadBitmapListCommand;->loadedImageList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    .line 42
    return-void
.end method

.method public final getLoadedImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/LoadBitmapListCommand;->loadedImageList:Ljava/util/List;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/LoadBitmapListCommand;->loadedImageList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 45
    .local v1, "$i$f$forEachIndexed":I
    const/4 v2, 0x0

    .line 46
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index$iv":I
    .local v5, "index$iv":I
    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v6, v4

    check-cast v6, Landroid/graphics/Bitmap;

    .local v2, "index":I
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 34
    .local v7, "$i$a$-forEachIndexed-LoadBitmapListCommand$run$1":I
    new-instance v8, Lorg/catrobat/paintroid/model/Layer;

    if-eqz v6, :cond_1

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    invoke-direct {v8, v9}, Lorg/catrobat/paintroid/model/Layer;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    .local v8, "currentLayer":Lorg/catrobat/paintroid/model/Layer;
    move-object v9, v8

    check-cast v9, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    invoke-interface {p2, v2, v9}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->addLayerAt(ILorg/catrobat/paintroid/contract/LayerContracts$Layer;)Z

    .line 36
    .end local v8    # "currentLayer":Lorg/catrobat/paintroid/model/Layer;
    move v2, v5

    .end local v2    # "index":I
    .end local v4    # "item$iv":Ljava/lang/Object;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "$i$a$-forEachIndexed-LoadBitmapListCommand$run$1":I
    goto :goto_0

    .line 47
    .end local v5    # "index$iv":I
    .local v2, "index$iv":I
    :cond_2
    nop

    .line 37
    .end local v0    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEachIndexed":I
    .end local v2    # "index$iv":I
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->setCurrentLayer(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V

    .line 38
    return-void
.end method
