.class public interface abstract Lorg/catrobat/paintroid/contract/LayerContracts$Model;
.super Ljava/lang/Object;
.source "LayerContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/contract/LayerContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010*\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0003H&J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0019\u001a\u00020\tH&J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0003H&J\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001e2\u0006\u0010\u0019\u001a\u00020\tH&J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\tH&J\u0008\u0010!\u001a\u00020\"H&J\u0018\u0010#\u001a\u00020\"2\u0006\u0010 \u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0003H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000bR\u0018\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u000b\"\u0004\u0008\u0016\u0010\r\u00a8\u0006$"
    }
    d2 = {
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "",
        "currentLayer",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
        "getCurrentLayer",
        "()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
        "setCurrentLayer",
        "(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V",
        "height",
        "",
        "getHeight",
        "()I",
        "setHeight",
        "(I)V",
        "layerCount",
        "getLayerCount",
        "layers",
        "",
        "getLayers",
        "()Ljava/util/List;",
        "width",
        "getWidth",
        "setWidth",
        "addLayerAt",
        "",
        "index",
        "layer",
        "getLayerAt",
        "getLayerIndexOf",
        "listIterator",
        "",
        "removeLayerAt",
        "position",
        "reset",
        "",
        "setLayerAt",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract addLayerAt(ILorg/catrobat/paintroid/contract/LayerContracts$Layer;)Z
.end method

.method public abstract getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
.end method

.method public abstract getLayerCount()I
.end method

.method public abstract getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I
.end method

.method public abstract getLayers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidth()I
.end method

.method public abstract listIterator(I)Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeLayerAt(I)Z
.end method

.method public abstract reset()V
.end method

.method public abstract setCurrentLayer(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V
.end method

.method public abstract setHeight(I)V
.end method

.method public abstract setLayerAt(ILorg/catrobat/paintroid/contract/LayerContracts$Layer;)V
.end method

.method public abstract setWidth(I)V
.end method
