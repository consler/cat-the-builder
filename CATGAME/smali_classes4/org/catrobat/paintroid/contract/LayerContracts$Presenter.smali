.class public interface abstract Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;
.super Ljava/lang/Object;
.source "LayerContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/contract/LayerContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0003H&J\u0008\u0010\u0011\u001a\u00020\nH&J\u0008\u0010\u0012\u001a\u00020\u0013H&J \u0010\u0014\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0013H&J\u0018\u0010\u0018\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH&J\u0008\u0010\u001b\u001a\u00020\nH&J\u0008\u0010\u001c\u001a\u00020\nH&J\u0008\u0010\u001d\u001a\u00020\nH&J\u0010\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020 H&J\u0010\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020#H&J\u0010\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H&J\u0010\u0010\'\u001a\u00020\n2\u0006\u0010(\u001a\u00020)H&J\u0018\u0010*\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0000X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006+"
    }
    d2 = {
        "Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;",
        "",
        "layerCount",
        "",
        "getLayerCount",
        "()I",
        "presenter",
        "getPresenter",
        "()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;",
        "addLayer",
        "",
        "getLayerItem",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
        "position",
        "getLayerItemId",
        "",
        "hideLayer",
        "invalidate",
        "isShown",
        "",
        "onBindLayerViewHolderAtPosition",
        "viewHolder",
        "Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;",
        "isOpen",
        "onStartDragging",
        "view",
        "Landroid/view/View;",
        "onStopDragging",
        "refreshLayerMenuViewHolder",
        "removeLayer",
        "setAdapter",
        "layerAdapter",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;",
        "setBottomNavigationViewHolder",
        "bottomNavigationViewHolder",
        "Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;",
        "setDefaultToolController",
        "defaultToolController",
        "Lorg/catrobat/paintroid/controller/DefaultToolController;",
        "setDrawingSurface",
        "drawingSurface",
        "Lorg/catrobat/paintroid/ui/DrawingSurface;",
        "unhideLayer",
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
.method public abstract addLayer()V
.end method

.method public abstract getLayerCount()I
.end method

.method public abstract getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
.end method

.method public abstract getLayerItemId(I)J
.end method

.method public abstract getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;
.end method

.method public abstract hideLayer(I)V
.end method

.method public abstract invalidate()V
.end method

.method public abstract isShown()Z
.end method

.method public abstract onBindLayerViewHolderAtPosition(ILorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;Z)V
.end method

.method public abstract onStartDragging(ILandroid/view/View;)V
.end method

.method public abstract onStopDragging()V
.end method

.method public abstract refreshLayerMenuViewHolder()V
.end method

.method public abstract removeLayer()V
.end method

.method public abstract setAdapter(Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;)V
.end method

.method public abstract setBottomNavigationViewHolder(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V
.end method

.method public abstract setDefaultToolController(Lorg/catrobat/paintroid/controller/DefaultToolController;)V
.end method

.method public abstract setDrawingSurface(Lorg/catrobat/paintroid/ui/DrawingSurface;)V
.end method

.method public abstract unhideLayer(ILorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;)V
.end method
