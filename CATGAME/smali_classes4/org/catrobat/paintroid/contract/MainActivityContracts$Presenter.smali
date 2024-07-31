.class public interface abstract Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;
.super Ljava/lang/Object;
.source "MainActivityContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/contract/MainActivityContracts;
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
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u000e\u001a\u00020\u000fH&J\u0008\u0010\u0010\u001a\u00020\u000fH&J\u0008\u0010\u0011\u001a\u00020\u000fH&J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0003H&J\u0008\u0010\u0014\u001a\u00020\u0015H&J\u0008\u0010\u0016\u001a\u00020\u000fH&J\u0008\u0010\u0017\u001a\u00020\u000fH&J\u0008\u0010\u0018\u001a\u00020\u000fH&J\u0008\u0010\u0019\u001a\u00020\u000fH&J\u0008\u0010\u001a\u001a\u00020\u000fH&J\"\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH&J+\u0010 \u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%H&\u00a2\u0006\u0002\u0010&J\u0008\u0010\'\u001a\u00020\u000fH&J\u0008\u0010(\u001a\u00020\u000fH&J\u001c\u0010)\u001a\u00020\u000f2\u0008\u0010*\u001a\u0004\u0018\u00010#2\u0008\u0010+\u001a\u0004\u0018\u00010#H&J\u0008\u0010,\u001a\u00020\u000fH&J\u0008\u0010-\u001a\u00020\u000fH&J\u001a\u0010.\u001a\u00020\u000f2\u0008\u0010/\u001a\u0004\u0018\u0001002\u0006\u0010\u001c\u001a\u00020\u000bH&J\u0008\u00101\u001a\u00020\u000fH&J\u0008\u00102\u001a\u00020\u000fH&J\u0008\u00103\u001a\u00020\u000fH&J\u0008\u00104\u001a\u00020\u000fH&J\u0008\u00105\u001a\u00020\u000fH&J\u0012\u00106\u001a\u0004\u0018\u0001072\u0006\u00108\u001a\u000209H&J\u0008\u0010:\u001a\u00020\u000fH&J\u0008\u0010;\u001a\u00020\u000fH&J\u0012\u0010<\u001a\u00020\u000f2\u0008\u0010=\u001a\u0004\u0018\u00010>H&J<\u0010?\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u00152\u0006\u0010A\u001a\u00020\u00152\u0006\u0010B\u001a\u00020\u00152\u0006\u0010C\u001a\u00020\u00152\u0008\u0010D\u001a\u0004\u0018\u0001002\u0008\u0010E\u001a\u0004\u0018\u000100H&J\u0008\u0010F\u001a\u00020\u000fH&J\u0008\u0010G\u001a\u00020\u000fH&J\u0008\u0010H\u001a\u00020\u000fH&J\u0010\u0010I\u001a\u00020\u000f2\u0006\u0010J\u001a\u00020\u0015H&J\u0010\u0010K\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000bH&J\u0008\u0010L\u001a\u00020\u000fH&J\u001a\u0010M\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000b2\u0008\u0010/\u001a\u0004\u0018\u000100H&J\u0008\u0010N\u001a\u00020\u000fH&J\u0008\u0010O\u001a\u00020\u000fH&J\u0008\u0010P\u001a\u00020\u000fH&J\u0010\u0010Q\u001a\u00020\u000f2\u0006\u0010R\u001a\u00020\u000bH&J\u0010\u0010S\u001a\u00020\u000f2\u0006\u0010T\u001a\u00020UH&J\u0008\u0010V\u001a\u00020\u000fH&J\u0008\u0010W\u001a\u00020\u000fH&J\u0008\u0010X\u001a\u00020\u000fH&J\u0008\u0010Y\u001a\u00020\u000fH&J\u0008\u0010Z\u001a\u00020\u000fH&J\u0008\u0010[\u001a\u00020\u000fH&J\u0008\u0010\\\u001a\u00020\u000fH&J\u0008\u0010]\u001a\u00020\u000fH&J\u0008\u0010^\u001a\u00020\u000fH&J\u0008\u0010_\u001a\u00020\u000fH&J\u0008\u0010`\u001a\u00020\u000fH&J\u0018\u0010a\u001a\u00020\u000f2\u0006\u0010b\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\u0015H&J\u0008\u0010c\u001a\u00020\u000fH&J\u0008\u0010d\u001a\u00020\u000fH&J\u0018\u0010e\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\u0015H&J\u0010\u0010f\u001a\u00020\u000f2\u0006\u0010g\u001a\u00020hH&J\u0008\u0010i\u001a\u00020\u000fH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006j"
    }
    d2 = {
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "imageNumber",
        "",
        "getImageNumber",
        "()I",
        "actionCurrentToolClicked",
        "",
        "actionToolsClicked",
        "backToPocketCodeClicked",
        "bitmapLoadedFromSource",
        "loadedImage",
        "checkForTemporaryFile",
        "",
        "discardImageClicked",
        "enterFullscreenClicked",
        "exitFullscreenClicked",
        "finishActivity",
        "finishInitialize",
        "handleActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "handleRequestPermissionsResult",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "importFromGalleryClicked",
        "importStickersClicked",
        "initializeFromCleanState",
        "extraPicturePath",
        "extraPictureName",
        "loadImageClicked",
        "loadNewImage",
        "loadScaledImage",
        "uri",
        "Landroid/net/Uri;",
        "newImageClicked",
        "onBackPressed",
        "onCommandPostExecute",
        "onCreateTool",
        "onNewImage",
        "openTemporaryFile",
        "Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "rateUsClicked",
        "redoClicked",
        "removeMoreOptionsItems",
        "menu",
        "Landroid/view/Menu;",
        "restoreState",
        "isFullscreen",
        "isSaved",
        "isOpenedFromCatroid",
        "isOpenedFromFormulaEditorInCatroid",
        "savedPictureUri",
        "cameraImageUri",
        "saveBeforeFinish",
        "saveBeforeLoadImage",
        "saveBeforeNewImage",
        "saveCopyClicked",
        "isExport",
        "saveCopyConfirmClicked",
        "saveImageClicked",
        "saveImageConfirmClicked",
        "saveNewTemporaryImage",
        "sendFeedback",
        "setAntialiasingOnOkClicked",
        "setBottomNavigationColor",
        "color",
        "setLayerAdapter",
        "layerAdapter",
        "Lorg/catrobat/paintroid/ui/LayerAdapter;",
        "shareImageClicked",
        "showAboutClicked",
        "showAdvancedSettingsClicked",
        "showCatrobatInformationDialog",
        "showColorPickerClicked",
        "showFeedbackDialog",
        "showHelpClicked",
        "showImportDialog",
        "showJpgInformationDialog",
        "showLayerMenuClicked",
        "showOraInformationDialog",
        "showOverwriteDialog",
        "permissionCode",
        "showPngInformationDialog",
        "showRateUsDialog",
        "switchBetweenVersions",
        "toolClicked",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "undoClicked",
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
.method public abstract actionCurrentToolClicked()V
.end method

.method public abstract actionToolsClicked()V
.end method

.method public abstract backToPocketCodeClicked()V
.end method

.method public abstract bitmapLoadedFromSource(Landroid/graphics/Bitmap;)V
.end method

.method public abstract checkForTemporaryFile()Z
.end method

.method public abstract discardImageClicked()V
.end method

.method public abstract enterFullscreenClicked()V
.end method

.method public abstract exitFullscreenClicked()V
.end method

.method public abstract finishActivity()V
.end method

.method public abstract finishInitialize()V
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getImageNumber()I
.end method

.method public abstract handleActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract handleRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract importFromGalleryClicked()V
.end method

.method public abstract importStickersClicked()V
.end method

.method public abstract initializeFromCleanState(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadImageClicked()V
.end method

.method public abstract loadNewImage()V
.end method

.method public abstract loadScaledImage(Landroid/net/Uri;I)V
.end method

.method public abstract newImageClicked()V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onCommandPostExecute()V
.end method

.method public abstract onCreateTool()V
.end method

.method public abstract onNewImage()V
.end method

.method public abstract openTemporaryFile(Lorg/catrobat/paintroid/tools/Workspace;)Lorg/catrobat/paintroid/model/CommandManagerModel;
.end method

.method public abstract rateUsClicked()V
.end method

.method public abstract redoClicked()V
.end method

.method public abstract removeMoreOptionsItems(Landroid/view/Menu;)V
.end method

.method public abstract restoreState(ZZZZLandroid/net/Uri;Landroid/net/Uri;)V
.end method

.method public abstract saveBeforeFinish()V
.end method

.method public abstract saveBeforeLoadImage()V
.end method

.method public abstract saveBeforeNewImage()V
.end method

.method public abstract saveCopyClicked(Z)V
.end method

.method public abstract saveCopyConfirmClicked(I)V
.end method

.method public abstract saveImageClicked()V
.end method

.method public abstract saveImageConfirmClicked(ILandroid/net/Uri;)V
.end method

.method public abstract saveNewTemporaryImage()V
.end method

.method public abstract sendFeedback()V
.end method

.method public abstract setAntialiasingOnOkClicked()V
.end method

.method public abstract setBottomNavigationColor(I)V
.end method

.method public abstract setLayerAdapter(Lorg/catrobat/paintroid/ui/LayerAdapter;)V
.end method

.method public abstract shareImageClicked()V
.end method

.method public abstract showAboutClicked()V
.end method

.method public abstract showAdvancedSettingsClicked()V
.end method

.method public abstract showCatrobatInformationDialog()V
.end method

.method public abstract showColorPickerClicked()V
.end method

.method public abstract showFeedbackDialog()V
.end method

.method public abstract showHelpClicked()V
.end method

.method public abstract showImportDialog()V
.end method

.method public abstract showJpgInformationDialog()V
.end method

.method public abstract showLayerMenuClicked()V
.end method

.method public abstract showOraInformationDialog()V
.end method

.method public abstract showOverwriteDialog(IZ)V
.end method

.method public abstract showPngInformationDialog()V
.end method

.method public abstract showRateUsDialog()V
.end method

.method public abstract switchBetweenVersions(IZ)V
.end method

.method public abstract toolClicked(Lorg/catrobat/paintroid/tools/ToolType;)V
.end method

.method public abstract undoClicked()V
.end method
