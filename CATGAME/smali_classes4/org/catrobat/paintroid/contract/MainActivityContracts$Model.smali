.class public interface abstract Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;
.super Ljava/lang/Object;
.source "MainActivityContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/contract/MainActivityContracts;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008f\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\r\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u0018\u0010\u000f\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u0018\u0010\u0011\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000cR\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0005\"\u0004\u0008\u0015\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;",
        "",
        "cameraImageUri",
        "Landroid/net/Uri;",
        "getCameraImageUri",
        "()Landroid/net/Uri;",
        "setCameraImageUri",
        "(Landroid/net/Uri;)V",
        "isFullscreen",
        "",
        "()Z",
        "setFullscreen",
        "(Z)V",
        "isOpenedFromCatroid",
        "setOpenedFromCatroid",
        "isOpenedFromFormulaEditorInCatroid",
        "setOpenedFromFormulaEditorInCatroid",
        "isSaved",
        "setSaved",
        "savedPictureUri",
        "getSavedPictureUri",
        "setSavedPictureUri",
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
.method public abstract getCameraImageUri()Landroid/net/Uri;
.end method

.method public abstract getSavedPictureUri()Landroid/net/Uri;
.end method

.method public abstract isFullscreen()Z
.end method

.method public abstract isOpenedFromCatroid()Z
.end method

.method public abstract isOpenedFromFormulaEditorInCatroid()Z
.end method

.method public abstract isSaved()Z
.end method

.method public abstract setCameraImageUri(Landroid/net/Uri;)V
.end method

.method public abstract setFullscreen(Z)V
.end method

.method public abstract setOpenedFromCatroid(Z)V
.end method

.method public abstract setOpenedFromFormulaEditorInCatroid(Z)V
.end method

.method public abstract setSaved(Z)V
.end method

.method public abstract setSavedPictureUri(Landroid/net/Uri;)V
.end method
