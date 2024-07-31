.class public interface abstract Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
.super Ljava/lang/Object;
.source "LayerContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/contract/LayerContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Layer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\tH&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u0005\"\u0004\u0008\u000f\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "isVisible",
        "",
        "()Z",
        "setVisible",
        "(Z)V",
        "transparentBitmap",
        "getTransparentBitmap",
        "setTransparentBitmap",
        "switchBitmaps",
        "",
        "isUnhide",
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

.method public abstract getTransparentBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setTransparentBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract switchBitmaps(Z)V
.end method
