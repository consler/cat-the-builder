.class public final Lorg/catrobat/paintroid/model/LayerModel$Companion;
.super Ljava/lang/Object;
.source "LayerModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/model/LayerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayerModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerModel.kt\norg/catrobat/paintroid/model/LayerModel$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1#2:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0004J\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/paintroid/model/LayerModel$Companion;",
        "",
        "()V",
        "getBitmapListOfAllLayers",
        "",
        "Landroid/graphics/Bitmap;",
        "layers",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
        "getBitmapOfAllLayersToSave",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 66
    invoke-direct {p0}, Lorg/catrobat/paintroid/model/LayerModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBitmapListOfAllLayers(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "layers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "layers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 86
    .local v0, "bitmapList":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    .line 87
    .local v2, "layer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v2    # "layer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    goto :goto_0

    .line 89
    :cond_0
    return-object v0
.end method

.method public final getBitmapOfAllLayersToSave(Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "layers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const-string v0, "layers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    return-object v1

    .line 71
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "referenceBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    move-object v2, v0

    .local v2, "it":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 73
    .local v3, "$i$a$-let-LayerModel$Companion$getBitmapOfAllLayersToSave$bitmap$1":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 72
    .end local v2    # "it":Landroid/graphics/Bitmap;
    .end local v3    # "$i$a$-let-LayerModel$Companion$getBitmapOfAllLayersToSave$bitmap$1":I
    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 75
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 94
    .local v3, "it":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 75
    .local v4, "$i$a$-let-LayerModel$Companion$getBitmapOfAllLayersToSave$canvas$1":I
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .end local v3    # "it":Landroid/graphics/Bitmap;
    .end local v4    # "$i$a$-let-LayerModel$Companion$getBitmapOfAllLayersToSave$canvas$1":I
    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    move-object v3, v5

    .line 76
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 77
    .local v4, "layerListIterator":Ljava/util/ListIterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 78
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    .line 79
    .local v5, "layer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    invoke-interface {v5}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 94
    .local v6, "it":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 79
    .local v7, "$i$a$-let-LayerModel$Companion$getBitmapOfAllLayersToSave$1":I
    if-eqz v3, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    .end local v5    # "layer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v6    # "it":Landroid/graphics/Bitmap;
    .end local v7    # "$i$a$-let-LayerModel$Companion$getBitmapOfAllLayersToSave$1":I
    :cond_3
    goto :goto_2

    .line 81
    :cond_4
    return-object v2
.end method
