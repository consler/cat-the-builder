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
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000fH&J\u0008\u0010\u0012\u001a\u00020\u000bH&J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0017"
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
        "bindView",
        "",
        "getViewLayout",
        "Landroid/widget/LinearLayout;",
        "isSelected",
        "",
        "setLayerVisibilityCheckbox",
        "setTo",
        "setMergable",
        "setSelected",
        "updateImageView",
        "layer",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
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


# virtual methods
.method public abstract bindView()V
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getViewLayout()Landroid/widget/LinearLayout;
.end method

.method public abstract isSelected()Z
.end method

.method public abstract setLayerVisibilityCheckbox(Z)V
.end method

.method public abstract setMergable()V
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract updateImageView(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V
.end method
