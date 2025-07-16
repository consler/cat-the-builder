.class public Lorg/catrobat/paintroid/model/MainActivityModel;
.super Ljava/lang/Object;
.source "MainActivityModel.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u0010H\u0016J\u0008\u0010\u001d\u001a\u00020\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001a\u0010\u0016\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\u001a\u0010\u0018\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008R\u000e\u0010\u001d\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lorg/catrobat/paintroid/model/MainActivityModel;",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;",
        "()V",
        "cameraImageUri",
        "Landroid/net/Uri;",
        "getCameraImageUri",
        "()Landroid/net/Uri;",
        "setCameraImageUri",
        "(Landroid/net/Uri;)V",
        "colorHistory",
        "Lorg/catrobat/paintroid/colorpicker/ColorHistory;",
        "getColorHistory",
        "()Lorg/catrobat/paintroid/colorpicker/ColorHistory;",
        "setColorHistory",
        "(Lorg/catrobat/paintroid/colorpicker/ColorHistory;)V",
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
        "wasInitialAnimationPlayed",
        "setInitialAnimationPlayed",
        "",
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


# instance fields
.field private cameraImageUri:Landroid/net/Uri;

.field private colorHistory:Lorg/catrobat/paintroid/colorpicker/ColorHistory;

.field private isFullscreen:Z

.field private isOpenedFromCatroid:Z

.field private isOpenedFromFormulaEditorInCatroid:Z

.field private isSaved:Z

.field private savedPictureUri:Landroid/net/Uri;

.field private wasInitialAnimationPlayed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    invoke-direct {v0}, Lorg/catrobat/paintroid/colorpicker/ColorHistory;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->colorHistory:Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    return-void
.end method


# virtual methods
.method public getCameraImageUri()Landroid/net/Uri;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->cameraImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getColorHistory()Lorg/catrobat/paintroid/colorpicker/ColorHistory;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->colorHistory:Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    return-object v0
.end method

.method public getSavedPictureUri()Landroid/net/Uri;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->savedPictureUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFullscreen()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isFullscreen:Z

    return v0
.end method

.method public isOpenedFromCatroid()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isOpenedFromCatroid:Z

    return v0
.end method

.method public isOpenedFromFormulaEditorInCatroid()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isOpenedFromFormulaEditorInCatroid:Z

    return v0
.end method

.method public isSaved()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isSaved:Z

    return v0
.end method

.method public setCameraImageUri(Landroid/net/Uri;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->cameraImageUri:Landroid/net/Uri;

    return-void
.end method

.method public setColorHistory(Lorg/catrobat/paintroid/colorpicker/ColorHistory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->colorHistory:Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isFullscreen:Z

    return-void
.end method

.method public setInitialAnimationPlayed(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->wasInitialAnimationPlayed:Z

    return-void
.end method

.method public setOpenedFromCatroid(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isOpenedFromCatroid:Z

    return-void
.end method

.method public setOpenedFromFormulaEditorInCatroid(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isOpenedFromFormulaEditorInCatroid:Z

    return-void
.end method

.method public setSaved(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isSaved:Z

    return-void
.end method

.method public setSavedPictureUri(Landroid/net/Uri;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->savedPictureUri:Landroid/net/Uri;

    return-void
.end method

.method public wasInitialAnimationPlayed()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->wasInitialAnimationPlayed:Z

    return v0
.end method
