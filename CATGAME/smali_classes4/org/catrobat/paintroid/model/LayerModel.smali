.class public final Lorg/catrobat/paintroid/model/LayerModel;
.super Ljava/lang/Object;
.source "LayerModel.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/LayerContracts$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/model/LayerModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010*\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 %2\u00020\u0001:\u0001%B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0004H\u0016J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0004H\u0016J\u0016\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001f2\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\nH\u0016J\u0008\u0010\"\u001a\u00020#H\u0016J\u0018\u0010$\u001a\u00020#2\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000cR\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000e\u00a8\u0006&"
    }
    d2 = {
        "Lorg/catrobat/paintroid/model/LayerModel;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "()V",
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
        "Ljava/util/ArrayList;",
        "getLayers",
        "()Ljava/util/ArrayList;",
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
        "Companion",
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
.field public static final Companion:Lorg/catrobat/paintroid/model/LayerModel$Companion;


# instance fields
.field private currentLayer:Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

.field private height:I

.field private final layers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/model/LayerModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/model/LayerModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/model/LayerModel;->Companion:Lorg/catrobat/paintroid/model/LayerModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/model/LayerModel;->layers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addLayerAt(ILorg/catrobat/paintroid/contract/LayerContracts$Layer;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "layer"    # Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    const-string v0, "layer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    nop

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/LayerModel;->getLayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    move v0, v1

    .line 44
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    nop

    .line 49
    return v0
.end method

.method public getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/catrobat/paintroid/model/LayerModel;->currentLayer:Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/catrobat/paintroid/model/LayerModel;->height:I

    return v0
.end method

.method public getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .locals 1
    .param p1, "index"    # I

    .line 39
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/LayerModel;->getLayers()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    return-object v0
.end method

.method public getLayerCount()I
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/LayerModel;->getLayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I
    .locals 1
    .param p1, "layer"    # Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    const-string v0, "layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/LayerModel;->getLayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getLayers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/model/LayerModel;->layers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getLayers()Ljava/util/List;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/LayerModel;->getLayers()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/catrobat/paintroid/model/LayerModel;->width:I

    return v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/LayerModel;->getLayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    const-string v1, "layers.listIterator(index)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeLayerAt(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 59
    nop

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/LayerModel;->getLayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    move v0, v1

    .line 59
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    nop

    .line 64
    return v0
.end method

.method public reset()V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/LayerModel;->getLayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    return-void
.end method

.method public setCurrentLayer(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    .line 28
    iput-object p1, p0, Lorg/catrobat/paintroid/model/LayerModel;->currentLayer:Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 30
    iput p1, p0, Lorg/catrobat/paintroid/model/LayerModel;->height:I

    return-void
.end method

.method public setLayerAt(ILorg/catrobat/paintroid/contract/LayerContracts$Layer;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "layer"    # Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    const-string v0, "layer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/LayerModel;->getLayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 29
    iput p1, p0, Lorg/catrobat/paintroid/model/LayerModel;->width:I

    return-void
.end method
