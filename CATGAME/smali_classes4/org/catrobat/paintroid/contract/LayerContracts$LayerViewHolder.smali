.class public interface abstract Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;
.super Ljava/lang/Object;
.source "LayerContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/contract/LayerContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LayerViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000bH&J\u0008\u0010\u0010\u001a\u00020\rH&J\u0008\u0010\u0011\u001a\u00020\rH&J$\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H&J\u0012\u0010\u0018\u001a\u00020\r2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "view",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "isSelected",
        "",
        "setDeselected",
        "",
        "setLayerVisibilityCheckbox",
        "setTo",
        "setMergable",
        "setSelected",
        "position",
        "",
        "bottomNavigationViewHolder",
        "Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;",
        "defaultToolController",
        "Lorg/catrobat/paintroid/controller/DefaultToolController;",
        "updateImageView",
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
.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract isSelected()Z
.end method

.method public abstract setDeselected()V
.end method

.method public abstract setLayerVisibilityCheckbox(Z)V
.end method

.method public abstract setMergable()V
.end method

.method public abstract setSelected()V
.end method

.method public abstract setSelected(ILorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;Lorg/catrobat/paintroid/controller/DefaultToolController;)V
.end method

.method public abstract updateImageView(Landroid/graphics/Bitmap;)V
.end method
