.class public final Lorg/catrobat/paintroid/model/MainActivityModel;
.super Ljava/lang/Object;
.source "MainActivityModel.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\u001a\u0010\u0010\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR\u001a\u0010\u0012\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008\u00a8\u0006\u0017"
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


# instance fields
.field private cameraImageUri:Landroid/net/Uri;

.field private isFullscreen:Z

.field private isOpenedFromCatroid:Z

.field private isOpenedFromFormulaEditorInCatroid:Z

.field private isSaved:Z

.field private savedPictureUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraImageUri()Landroid/net/Uri;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->cameraImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSavedPictureUri()Landroid/net/Uri;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->savedPictureUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFullscreen()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isFullscreen:Z

    return v0
.end method

.method public isOpenedFromCatroid()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isOpenedFromCatroid:Z

    return v0
.end method

.method public isOpenedFromFormulaEditorInCatroid()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isOpenedFromFormulaEditorInCatroid:Z

    return v0
.end method

.method public isSaved()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isSaved:Z

    return v0
.end method

.method public setCameraImageUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/net/Uri;

    .line 30
    iput-object p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->cameraImageUri:Landroid/net/Uri;

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 27
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isFullscreen:Z

    return-void
.end method

.method public setOpenedFromCatroid(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 25
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isOpenedFromCatroid:Z

    return-void
.end method

.method public setOpenedFromFormulaEditorInCatroid(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 26
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isOpenedFromFormulaEditorInCatroid:Z

    return-void
.end method

.method public setSaved(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 28
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->isSaved:Z

    return-void
.end method

.method public setSavedPictureUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/net/Uri;

    .line 29
    iput-object p1, p0, Lorg/catrobat/paintroid/model/MainActivityModel;->savedPictureUri:Landroid/net/Uri;

    return-void
.end method
