.class public interface abstract Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;
.super Ljava/lang/Object;
.source "MainActivityContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/contract/MainActivityContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Navigator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J#\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0008\u0010\u0011\u001a\u00020\u0007H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\nH&J\u0008\u0010\u0014\u001a\u00020\u0007H&J\u001b\u0010\u0015\u001a\u00020\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH&\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0007H&J\u0008\u0010\u0018\u001a\u00020\u0007H&J\u0012\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u001a\u001a\u0004\u0018\u00010\nH&J\u0008\u0010\u001b\u001a\u00020\u0007H&J\u0008\u0010\u001c\u001a\u00020\u0007H&J\u0008\u0010\u001d\u001a\u00020\u0007H&J\u0008\u0010\u001e\u001a\u00020\u0007H&J\u0008\u0010\u001f\u001a\u00020\u0007H&J\u0008\u0010 \u001a\u00020\u0007H&J\u0008\u0010!\u001a\u00020\u0007H&J\u0008\u0010\"\u001a\u00020\u0007H&J\u0008\u0010#\u001a\u00020\u0007H&J\u0008\u0010$\u001a\u00020\u0007H&J\u0008\u0010%\u001a\u00020\u0007H&J\u0008\u0010&\u001a\u00020\u0007H&J\u0008\u0010\'\u001a\u00020\u0007H&J\u0008\u0010(\u001a\u00020\u0007H&J\u0008\u0010)\u001a\u00020\u0007H&J\u0018\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020\u0003H&J\u0008\u0010-\u001a\u00020\u0007H&J\u0008\u0010.\u001a\u00020\u0007H&J\u0008\u0010/\u001a\u00020\u0007H&J+\u00100\u001a\u00020\u00072\u0006\u00101\u001a\u0002022\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a2\u0006\u0002\u00103J\u0008\u00104\u001a\u00020\u0007H&J\u0008\u00105\u001a\u00020\u0007H&J\u0008\u00106\u001a\u00020\u0007H&J\u0008\u00107\u001a\u00020\u0007H&J \u00108\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020\u0003H&J\u001a\u0010:\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000b\u001a\u00020\u000cH&J\u001a\u0010;\u001a\u00020\u00072\u0008\u0008\u0001\u0010<\u001a\u00020\u000c2\u0006\u0010=\u001a\u00020\u000cH&J\u0018\u0010;\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\n2\u0006\u0010=\u001a\u00020\u000cH&J\u0018\u0010?\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\u000c2\u0006\u0010A\u001a\u00020\u000cH&J\u0010\u0010B\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010C\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0012\u0010D\u001a\u00020\u00072\u0008\u0010E\u001a\u0004\u0018\u00010FH&J\u0010\u0010G\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004R\u0012\u0010\u0005\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0004\u00a8\u0006H"
    }
    d2 = {
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;",
        "",
        "isSdkAboveOrEqualM",
        "",
        "()Z",
        "isSdkAboveOrEqualQ",
        "askForPermission",
        "",
        "permissions",
        "",
        "",
        "requestCode",
        "",
        "([Ljava/lang/String;I)V",
        "broadcastAddPictureToGallery",
        "uri",
        "Landroid/net/Uri;",
        "dismissIndeterminateProgressDialog",
        "doIHavePermission",
        "permission",
        "finishActivity",
        "isPermissionPermanentlyDenied",
        "([Ljava/lang/String;)Z",
        "rateUsClicked",
        "restoreFragmentListeners",
        "returnToPocketCode",
        "path",
        "sendFeedback",
        "setAntialiasingOnToolPaint",
        "setMaskFilterToNull",
        "showAboutDialog",
        "showAdvancedSettingsDialog",
        "showCatrobatInformationDialog",
        "showCatroidMediaGallery",
        "showColorPickerDialog",
        "showFeedbackDialog",
        "showImageImportDialog",
        "showIndeterminateProgressDialog",
        "showJpgInformationDialog",
        "showLikeUsDialog",
        "showLoadErrorDialog",
        "showOraInformationDialog",
        "showOverwriteDialog",
        "permissionCode",
        "isExport",
        "showPngInformationDialog",
        "showRateUsDialog",
        "showRequestPermanentlyDeniedPermissionRationaleDialog",
        "showRequestPermissionRationaleDialog",
        "permissionType",
        "Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;",
        "(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)V",
        "showSaveBeforeFinishDialog",
        "showSaveBeforeLoadImageDialog",
        "showSaveBeforeNewImageDialog",
        "showSaveErrorDialog",
        "showSaveImageInformationDialogWhenStandalone",
        "imageNumber",
        "showScaleImageRequestDialog",
        "showToast",
        "resId",
        "duration",
        "msg",
        "showToolChangeToast",
        "offset",
        "idRes",
        "startImportImageActivity",
        "startLoadImageActivity",
        "startShareImageActivity",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "startWelcomeActivity",
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
.method public abstract askForPermission([Ljava/lang/String;I)V
.end method

.method public abstract broadcastAddPictureToGallery(Landroid/net/Uri;)V
.end method

.method public abstract dismissIndeterminateProgressDialog()V
.end method

.method public abstract doIHavePermission(Ljava/lang/String;)Z
.end method

.method public abstract finishActivity()V
.end method

.method public abstract isPermissionPermanentlyDenied([Ljava/lang/String;)Z
.end method

.method public abstract isSdkAboveOrEqualM()Z
.end method

.method public abstract isSdkAboveOrEqualQ()Z
.end method

.method public abstract rateUsClicked()V
.end method

.method public abstract restoreFragmentListeners()V
.end method

.method public abstract returnToPocketCode(Ljava/lang/String;)V
.end method

.method public abstract sendFeedback()V
.end method

.method public abstract setAntialiasingOnToolPaint()V
.end method

.method public abstract setMaskFilterToNull()V
.end method

.method public abstract showAboutDialog()V
.end method

.method public abstract showAdvancedSettingsDialog()V
.end method

.method public abstract showCatrobatInformationDialog()V
.end method

.method public abstract showCatroidMediaGallery()V
.end method

.method public abstract showColorPickerDialog()V
.end method

.method public abstract showFeedbackDialog()V
.end method

.method public abstract showImageImportDialog()V
.end method

.method public abstract showIndeterminateProgressDialog()V
.end method

.method public abstract showJpgInformationDialog()V
.end method

.method public abstract showLikeUsDialog()V
.end method

.method public abstract showLoadErrorDialog()V
.end method

.method public abstract showOraInformationDialog()V
.end method

.method public abstract showOverwriteDialog(IZ)V
.end method

.method public abstract showPngInformationDialog()V
.end method

.method public abstract showRateUsDialog()V
.end method

.method public abstract showRequestPermanentlyDeniedPermissionRationaleDialog()V
.end method

.method public abstract showRequestPermissionRationaleDialog(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)V
.end method

.method public abstract showSaveBeforeFinishDialog()V
.end method

.method public abstract showSaveBeforeLoadImageDialog()V
.end method

.method public abstract showSaveBeforeNewImageDialog()V
.end method

.method public abstract showSaveErrorDialog()V
.end method

.method public abstract showSaveImageInformationDialogWhenStandalone(IIZ)V
.end method

.method public abstract showScaleImageRequestDialog(Landroid/net/Uri;I)V
.end method

.method public abstract showToast(II)V
.end method

.method public abstract showToast(Ljava/lang/String;I)V
.end method

.method public abstract showToolChangeToast(II)V
.end method

.method public abstract startImportImageActivity(I)V
.end method

.method public abstract startLoadImageActivity(I)V
.end method

.method public abstract startShareImageActivity(Landroid/graphics/Bitmap;)V
.end method

.method public abstract startWelcomeActivity(I)V
.end method
