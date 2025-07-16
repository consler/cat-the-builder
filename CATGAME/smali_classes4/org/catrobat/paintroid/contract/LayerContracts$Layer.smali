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
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0013\u001a\u00020\u000eH&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\r\u001a\u00020\u000eX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
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
        "opacityPercentage",
        "",
        "getOpacityPercentage",
        "()I",
        "setOpacityPercentage",
        "(I)V",
        "getValueForOpacityPercentage",
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
.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getOpacityPercentage()I
.end method

.method public abstract getValueForOpacityPercentage()I
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setOpacityPercentage(I)V
.end method

.method public abstract setVisible(Z)V
.end method
