.class public Lorg/catrobat/paintroid/presenter/MainActivityPresenter;
.super Ljava/lang/Object;
.source "MainActivityPresenter.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;
.implements Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;
.implements Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;
.implements Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivityPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivityPresenter.kt\norg/catrobat/paintroid/presenter/MainActivityPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1047:1\n1#2:1048\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00f2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\u0016\u0018\u0000 \u00ae\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u00ae\u0001B\u008f\u0001\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u0012\u0006\u0010\u001f\u001a\u00020 \u0012\u0006\u0010!\u001a\u00020\"\u0012\u0006\u0010#\u001a\u00020$\u0012\u0006\u0010%\u001a\u00020&\u00a2\u0006\u0002\u0010\'J\u0008\u0010A\u001a\u00020BH\u0016J\u0008\u0010C\u001a\u00020BH\u0016J\u0010\u0010D\u001a\u00020B2\u0006\u0010E\u001a\u000205H\u0002J\u0008\u0010F\u001a\u00020BH\u0016J\u0010\u0010G\u001a\u00020B2\u0006\u0010H\u001a\u00020)H\u0016J\u0008\u0010I\u001a\u00020BH\u0002J\u0008\u0010J\u001a\u000209H\u0016J\u0008\u0010K\u001a\u00020BH\u0002J\u0008\u0010L\u001a\u00020BH\u0016J\u0008\u0010M\u001a\u00020BH\u0002J\u0008\u0010N\u001a\u00020BH\u0016J\u0008\u0010O\u001a\u00020BH\u0002J\u0008\u0010P\u001a\u00020BH\u0016J\u0008\u0010Q\u001a\u00020BH\u0016J\u0008\u0010R\u001a\u00020BH\u0016J\u0012\u0010S\u001a\u0004\u0018\u00010T2\u0006\u0010U\u001a\u00020VH\u0002J\"\u0010W\u001a\u00020B2\u0006\u0010E\u001a\u0002052\u0006\u0010X\u001a\u0002052\u0008\u0010Y\u001a\u0004\u0018\u00010ZH\u0016J+\u0010[\u001a\u00020B2\u0006\u0010E\u001a\u0002052\u000c\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020T0]2\u0006\u0010^\u001a\u00020_H\u0016\u00a2\u0006\u0002\u0010`J\u0008\u0010a\u001a\u00020BH\u0016J\u0008\u0010b\u001a\u00020BH\u0016J\u001c\u0010c\u001a\u00020B2\u0008\u0010d\u001a\u0004\u0018\u00010T2\u0008\u0010e\u001a\u0004\u0018\u00010TH\u0016J\u0008\u0010f\u001a\u00020BH\u0016J\u0008\u0010g\u001a\u00020BH\u0016J\u001a\u0010h\u001a\u00020B2\u0008\u0010U\u001a\u0004\u0018\u00010V2\u0006\u0010E\u001a\u000205H\u0016J\u0008\u0010i\u001a\u00020BH\u0016J\u0008\u0010j\u001a\u00020BH\u0016J\u0008\u0010k\u001a\u00020BH\u0016J\u001a\u0010l\u001a\u00020B2\u0006\u0010E\u001a\u0002052\u0008\u0010m\u001a\u0004\u0018\u00010&H\u0016J\u0008\u0010n\u001a\u00020BH\u0016J$\u0010o\u001a\u00020B2\u0006\u0010E\u001a\u0002052\u0008\u0010U\u001a\u0004\u0018\u00010V2\u0008\u0010p\u001a\u0004\u0018\u00010qH\u0016J\u0010\u0010r\u001a\u00020B2\u0006\u0010E\u001a\u000205H\u0016J\u0008\u0010s\u001a\u00020BH\u0016J\"\u0010t\u001a\u00020B2\u0006\u0010E\u001a\u0002052\u0008\u0010U\u001a\u0004\u0018\u00010V2\u0006\u0010u\u001a\u000209H\u0016J\u0010\u0010v\u001a\u00020B2\u0006\u0010E\u001a\u000205H\u0016J\u0012\u0010w\u001a\u0004\u0018\u00010x2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010y\u001a\u00020BH\u0016J\u0008\u0010z\u001a\u00020BH\u0016J\u0008\u0010{\u001a\u00020BH\u0002J\u0012\u0010|\u001a\u00020B2\u0008\u0010}\u001a\u0004\u0018\u00010~H\u0016JB\u0010\u007f\u001a\u00020B2\u0007\u0010\u0080\u0001\u001a\u0002092\u0007\u0010\u0081\u0001\u001a\u0002092\u0007\u0010\u0082\u0001\u001a\u0002092\u0007\u0010\u0083\u0001\u001a\u0002092\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010V2\t\u0010\u0085\u0001\u001a\u0004\u0018\u00010VH\u0016J\t\u0010\u0086\u0001\u001a\u00020BH\u0016J\t\u0010\u0087\u0001\u001a\u00020BH\u0016J\t\u0010\u0088\u0001\u001a\u00020BH\u0016J\u0011\u0010\u0089\u0001\u001a\u00020B2\u0006\u00108\u001a\u000209H\u0016J\u0011\u0010\u008a\u0001\u001a\u00020B2\u0006\u0010E\u001a\u000205H\u0016J\t\u0010\u008b\u0001\u001a\u00020BH\u0016J\u001b\u0010\u008c\u0001\u001a\u00020B2\u0006\u0010E\u001a\u0002052\u0008\u0010U\u001a\u0004\u0018\u00010VH\u0016J\t\u0010\u008d\u0001\u001a\u00020BH\u0016J\t\u0010\u008e\u0001\u001a\u00020BH\u0016J\t\u0010\u008f\u0001\u001a\u00020BH\u0016J\u0012\u0010\u0090\u0001\u001a\u00020B2\u0007\u0010\u0091\u0001\u001a\u000205H\u0016J\t\u0010\u0092\u0001\u001a\u00020BH\u0002J\u0011\u0010\u0093\u0001\u001a\u00020B2\u0006\u0010=\u001a\u00020>H\u0016J\u0013\u0010\u0094\u0001\u001a\u00020B2\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0002J\t\u0010\u0097\u0001\u001a\u00020BH\u0016J\t\u0010\u0098\u0001\u001a\u00020BH\u0016J\t\u0010\u0099\u0001\u001a\u00020BH\u0016J\t\u0010\u009a\u0001\u001a\u00020BH\u0016J\t\u0010\u009b\u0001\u001a\u00020BH\u0016J\t\u0010\u009c\u0001\u001a\u00020BH\u0016J\t\u0010\u009d\u0001\u001a\u00020BH\u0016J\t\u0010\u009e\u0001\u001a\u00020BH\u0016J\t\u0010\u009f\u0001\u001a\u00020BH\u0016J\t\u0010\u00a0\u0001\u001a\u00020BH\u0016J\t\u0010\u00a1\u0001\u001a\u00020BH\u0002J\t\u0010\u00a2\u0001\u001a\u00020BH\u0016J\u001a\u0010\u00a3\u0001\u001a\u00020B2\u0007\u0010\u00a4\u0001\u001a\u0002052\u0006\u00108\u001a\u000209H\u0016J\t\u0010\u00a5\u0001\u001a\u00020BH\u0016J\t\u0010\u00a6\u0001\u001a\u00020BH\u0016J\t\u0010\u00a7\u0001\u001a\u00020BH\u0002J\u000f\u0010\u00a8\u0001\u001a\u00020B2\u0006\u0010E\u001a\u000205J\u0019\u0010\u00a8\u0001\u001a\u00020B2\u0006\u0010E\u001a\u0002052\u0006\u00108\u001a\u000209H\u0016J\u001e\u0010\u00a9\u0001\u001a\u00020B2\u0008\u0010\u00aa\u0001\u001a\u00030\u0096\u00012\t\u0008\u0002\u0010\u00ab\u0001\u001a\u000209H\u0002J\u0013\u0010\u00ac\u0001\u001a\u00020B2\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0016J\t\u0010\u00ad\u0001\u001a\u00020BH\u0016R\u0016\u0010(\u001a\u0004\u0018\u00010)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u00020-8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0014\u0010#\u001a\u00020$X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0014\u00104\u001a\u0002058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000209X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010:\u001a\u0002098VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0014\u0010<\u001a\u0002098BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010;R\u0010\u0010=\u001a\u0004\u0018\u00010>X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u000209X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u000209X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00af\u0001"
    }
    d2 = {
        "Lorg/catrobat/paintroid/presenter/MainActivityPresenter;",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;",
        "Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;",
        "Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;",
        "Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;",
        "fileActivity",
        "Landroid/app/Activity;",
        "view",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;",
        "model",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;",
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "navigator",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;",
        "interactor",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;",
        "topBarViewHolder",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;",
        "bottomBarViewHolder",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;",
        "drawerLayoutViewHolder",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;",
        "bottomNavigationViewHolder",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;",
        "commandFactory",
        "Lorg/catrobat/paintroid/command/CommandFactory;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "perspective",
        "Lorg/catrobat/paintroid/ui/Perspective;",
        "toolController",
        "Lorg/catrobat/paintroid/controller/ToolController;",
        "sharedPreferences",
        "Lorg/catrobat/paintroid/UserPreferences;",
        "context",
        "Landroid/content/Context;",
        "internalMemoryPath",
        "Ljava/io/File;",
        "(Landroid/app/Activity;Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;Lorg/catrobat/paintroid/command/CommandFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/controller/ToolController;Lorg/catrobat/paintroid/UserPreferences;Landroid/content/Context;Ljava/io/File;)V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "getContentResolver",
        "()Landroid/content/ContentResolver;",
        "getContext",
        "()Landroid/content/Context;",
        "getFileActivity",
        "()Landroid/app/Activity;",
        "imageNumber",
        "",
        "getImageNumber",
        "()I",
        "isExport",
        "",
        "isFinishing",
        "()Z",
        "isImageUnchanged",
        "layerAdapter",
        "Lorg/catrobat/paintroid/ui/LayerAdapter;",
        "resetPerspectiveAfterNextCommand",
        "wasImageLoaded",
        "actionCurrentToolClicked",
        "",
        "actionToolsClicked",
        "askForReadAndWriteExternalStoragePermission",
        "requestCode",
        "backToPocketCodeClicked",
        "bitmapLoadedFromSource",
        "loadedImage",
        "checkForDefaultFilename",
        "checkForTemporaryFile",
        "countUpImageNumber",
        "discardImageClicked",
        "enterFullscreen",
        "enterFullscreenClicked",
        "exitFullscreen",
        "exitFullscreenClicked",
        "finishActivity",
        "finishInitialize",
        "getFileName",
        "",
        "uri",
        "Landroid/net/Uri;",
        "handleActivityResult",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "handleRequestPermissionsResult",
        "permissions",
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
        "newImageClicked",
        "onBackPressed",
        "onCommandPostExecute",
        "onCreateFilePostExecute",
        "file",
        "onCreateTool",
        "onLoadImagePostExecute",
        "result",
        "Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;",
        "onLoadImagePreExecute",
        "onNewImage",
        "onSaveImagePostExecute",
        "saveAsCopy",
        "onSaveImagePreExecute",
        "openTemporaryFile",
        "Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "rateUsClicked",
        "redoClicked",
        "refreshTopBarButtons",
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
        "saveCopyConfirmClicked",
        "saveImageClicked",
        "saveImageConfirmClicked",
        "saveNewTemporaryImage",
        "sendFeedback",
        "setAntialiasingOnOkClicked",
        "setBottomNavigationColor",
        "color",
        "setFirstCheckBoxInLayerMenu",
        "setLayerAdapter",
        "setTool",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
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
        "showLikeUsDialogIfFirstTimeSave",
        "showOraInformationDialog",
        "showOverwriteDialog",
        "permissionCode",
        "showPngInformationDialog",
        "showRateUsDialog",
        "showSecurityQuestionBeforeExit",
        "switchBetweenVersions",
        "switchTool",
        "type",
        "backPressed",
        "toolClicked",
        "undoClicked",
        "Companion",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;


# instance fields
.field private final bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

.field private final bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

.field private final commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

.field private final commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field private final context:Landroid/content/Context;

.field private final drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

.field private final fileActivity:Landroid/app/Activity;

.field private final interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

.field private final internalMemoryPath:Ljava/io/File;

.field private isExport:Z

.field private layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

.field private final model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

.field private final navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

.field private final perspective:Lorg/catrobat/paintroid/ui/Perspective;

.field private resetPerspectiveAfterNextCommand:Z

.field private final sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

.field private final toolController:Lorg/catrobat/paintroid/controller/ToolController;

.field private final topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

.field private final view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

.field private wasImageLoaded:Z

.field private final workspace:Lorg/catrobat/paintroid/tools/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;Lorg/catrobat/paintroid/command/CommandFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/controller/ToolController;Lorg/catrobat/paintroid/UserPreferences;Landroid/content/Context;Ljava/io/File;)V
    .locals 16
    .param p1, "fileActivity"    # Landroid/app/Activity;
    .param p2, "view"    # Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;
    .param p3, "model"    # Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;
    .param p4, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p5, "navigator"    # Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;
    .param p6, "interactor"    # Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;
    .param p7, "topBarViewHolder"    # Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;
    .param p8, "bottomBarViewHolder"    # Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;
    .param p9, "drawerLayoutViewHolder"    # Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;
    .param p10, "bottomNavigationViewHolder"    # Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;
    .param p11, "commandFactory"    # Lorg/catrobat/paintroid/command/CommandFactory;
    .param p12, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p13, "perspective"    # Lorg/catrobat/paintroid/ui/Perspective;
    .param p14, "toolController"    # Lorg/catrobat/paintroid/controller/ToolController;
    .param p15, "sharedPreferences"    # Lorg/catrobat/paintroid/UserPreferences;
    .param p16, "context"    # Landroid/content/Context;
    .param p17, "internalMemoryPath"    # Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    const-string v0, "view"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigator"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactor"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topBarViewHolder"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomBarViewHolder"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawerLayoutViewHolder"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomNavigationViewHolder"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandFactory"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perspective"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolController"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalMemoryPath"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iput-object v15, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->fileActivity:Landroid/app/Activity;

    iput-object v1, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    iput-object v2, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    iput-object v3, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    iput-object v4, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    iput-object v5, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    iput-object v6, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    iput-object v7, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    iput-object v8, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    iput-object v9, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    iput-object v10, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iput-object v11, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iput-object v12, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    iput-object v13, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    iput-object v14, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->context:Landroid/content/Context;

    move-object/from16 v1, p17

    iput-object v1, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->internalMemoryPath:Ljava/io/File;

    return-void
.end method

.method private final askForReadAndWriteExternalStoragePermission(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .line 343
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 344
    nop

    .line 345
    nop

    .line 346
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    .line 347
    new-array v1, v1, [I

    aput v3, v1, v3

    .line 344
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 349
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->isSdkAboveOrEqualQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->doIHavePermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 354
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    .line 355
    nop

    .line 353
    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->askForPermission([Ljava/lang/String;I)V

    goto :goto_0

    .line 358
    :cond_1
    nop

    .line 359
    nop

    .line 360
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    .line 361
    new-array v1, v1, [I

    aput v3, v1, v3

    .line 358
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 363
    goto :goto_0

    .line 365
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->isSdkAboveOrEqualM()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->doIHavePermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 366
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 367
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    .line 368
    nop

    .line 366
    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->askForPermission([Ljava/lang/String;I)V

    goto :goto_0

    .line 371
    :cond_3
    nop

    .line 372
    nop

    .line 373
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    .line 374
    new-array v1, v1, [I

    aput v3, v1, v3

    .line 371
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 376
    :goto_0
    nop

    .line 377
    nop

    .line 378
    return-void
.end method

.method private final checkForDefaultFilename()V
    .locals 2

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "standard":Ljava/lang/String;
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->countUpImageNumber()V

    .line 385
    :cond_0
    return-void
.end method

.method private final countUpImageNumber()V
    .locals 2

    .line 224
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/UserPreferences;->getPreferenceImageNumber()I

    move-result v0

    .line 225
    .local v0, "imageNumber":I
    add-int/lit8 v0, v0, 0x1

    .line 226
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v1, v0}, Lorg/catrobat/paintroid/UserPreferences;->setPreferenceImageNumber(I)V

    .line 227
    return-void
.end method

.method private final enterFullscreen()V
    .locals 1

    .line 636
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->hideKeyboard()V

    .line 637
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->enterFullscreen()V

    .line 638
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->hide()V

    .line 639
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->hide()V

    .line 640
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->hide()V

    .line 641
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->disableToolOptionsView()V

    .line 642
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/Perspective;->enterFullscreen()V

    .line 643
    return-void
.end method

.method private final exitFullscreen()V
    .locals 1

    .line 628
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->exitFullscreen()V

    .line 629
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->show()V

    .line 630
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->show()V

    .line 631
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->enableToolOptionsView()V

    .line 632
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/Perspective;->exitFullscreen()V

    .line 633
    return-void
.end method

.method private final getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 915
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 916
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 917
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getFileActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 918
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v2, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    .local v4, "it":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 919
    .local v5, "$i$a$-use-MainActivityPresenter$getFileName$1":I
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 920
    const-string v6, "_display_name"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 922
    :cond_1
    nop

    .end local v4    # "it":Landroid/database/Cursor;
    .end local v5    # "$i$a$-use-MainActivityPresenter$getFileName$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v1    # "result":Ljava/lang/Object;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v4

    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 924
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-object v1
.end method

.method public static final getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final isImageUnchanged()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final refreshTopBarButtons()V
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->enableUndoButton()V

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->disableUndoButton()V

    .line 672
    :goto_0
    nop

    .line 673
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isRedoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->enableRedoButton()V

    goto :goto_1

    .line 676
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->disableRedoButton()V

    .line 677
    :goto_1
    nop

    .line 678
    return-void
.end method

.method private final setFirstCheckBoxInLayerMenu()V
    .locals 3

    .line 138
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1048
    .local v0, "$this$apply":Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;
    const/4 v1, 0x0

    .line 138
    .local v1, "$i$a$-apply-MainActivityPresenter$setFirstCheckBoxInLayerMenu$1":I
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->setLayerVisibilityCheckbox(Z)V

    .line 139
    .end local v0    # "$this$apply":Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;
    .end local v1    # "$i$a$-apply-MainActivityPresenter$setFirstCheckBoxInLayerMenu$1":I
    :cond_0
    return-void
.end method

.method private final setTool(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 3
    .param p1, "toolType"    # Lorg/catrobat/paintroid/tools/ToolType;

    .line 701
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->hide()V

    .line 702
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 703
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->getHeight()I

    move-result v0

    .line 704
    .local v0, "offset":I
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->getNameResource()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToolChangeToast(II)V

    .line 705
    return-void
.end method

.method private final showLikeUsDialogIfFirstTimeSave()V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/UserPreferences;->getPreferenceLikeUsDialogValue()Z

    move-result v0

    .line 217
    .local v0, "dialogHasBeenShown":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showLikeUsDialog()V

    .line 219
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/UserPreferences;->setPreferenceLikeUsDialogValue()V

    .line 221
    :cond_0
    return-void
.end method

.method private final showSecurityQuestionBeforeExit()V
    .locals 1

    .line 173
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isImageUnchanged()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->wasImageLoaded:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveBeforeFinish()V

    goto :goto_1

    .line 178
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveBeforeFinishDialog()V

    goto :goto_1

    .line 174
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->finishActivity()V

    .line 179
    :goto_1
    nop

    .line 180
    return-void
.end method

.method private final switchTool(Lorg/catrobat/paintroid/tools/ToolType;Z)V
    .locals 1
    .param p1, "type"    # Lorg/catrobat/paintroid/tools/ToolType;
    .param p2, "backPressed"    # Z

    .line 692
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->setMaskFilterToNull()V

    .line 693
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 694
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0, p1, p2}, Lorg/catrobat/paintroid/controller/ToolController;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;Z)V

    .line 695
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne p1, v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->showImportDialog()V

    .line 698
    :cond_0
    return-void
.end method

.method static synthetic switchTool$default(Lorg/catrobat/paintroid/presenter/MainActivityPresenter;Lorg/catrobat/paintroid/tools/ToolType;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 691
    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: switchTool"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public actionCurrentToolClicked()V
    .locals 2

    .line 898
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v0, v1, :cond_0

    .line 899
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->showImportDialog()V

    .line 900
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->hide()V

    .line 905
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->toolOptionsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->hideToolOptionsView()V

    goto :goto_0

    .line 908
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->hasToolOptionsView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 909
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->showToolOptionsView()V

    .line 911
    :cond_3
    :goto_0
    nop

    .line 912
    return-void
.end method

.method public actionToolsClicked()V
    .locals 3

    .line 883
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->toolOptionsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->hideToolOptionsView()V

    .line 886
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->hide()V

    goto :goto_0

    .line 889
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getCurrentLayerIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 890
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    sget v1, Lorg/catrobat/paintroid/R$string;->no_tools_on_hidden_layer:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(II)V

    .line 891
    return-void

    .line 893
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->show()V

    .line 894
    :goto_0
    nop

    .line 895
    return-void
.end method

.method public backToPocketCodeClicked()V
    .locals 0

    .line 240
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->showSecurityQuestionBeforeExit()V

    .line 241
    return-void
.end method

.method public bitmapLoadedFromSource(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "loadedImage"    # Landroid/graphics/Bitmap;

    const-string v0, "loadedImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/controller/ToolController;->setBitmapFromSource(Landroid/graphics/Bitmap;)V

    .line 949
    return-void
.end method

.method public checkForTemporaryFile()Z
    .locals 2

    .line 963
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->internalMemoryPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/FileIO;->checkForTemporaryFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public discardImageClicked()V
    .locals 2

    .line 303
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createResetCommand()Lorg/catrobat/paintroid/command/Command;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 304
    return-void
.end method

.method public enterFullscreenClicked()V
    .locals 2

    .line 230
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setFullscreen(Z)V

    .line 231
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->enterFullscreen()V

    .line 232
    return-void
.end method

.method public exitFullscreenClicked()V
    .locals 2

    .line 235
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setFullscreen(Z)V

    .line 236
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->exitFullscreen()V

    .line 237
    return-void
.end method

.method public finishActivity()V
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->finishActivity()V

    .line 184
    return-void
.end method

.method public finishInitialize()V
    .locals 3

    .line 604
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->refreshTopBarButtons()V

    .line 605
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getToolColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1048
    .local v0, "it":I
    const/4 v1, 0x0

    .line 605
    .local v1, "$i$a$-let-MainActivityPresenter$finishInitialize$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->setColorButtonColor(I)V

    .line 606
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-MainActivityPresenter$finishInitialize$1":I
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v1}, Lorg/catrobat/paintroid/controller/ToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 607
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->enterFullscreen()V

    goto :goto_0

    .line 610
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->exitFullscreen()V

    .line 611
    :goto_0
    nop

    .line 612
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->initializeActionBar(Z)V

    .line 613
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showIndeterminateProgressDialog()V

    .line 616
    :cond_2
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getBitmapOfAllLayers()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getMyContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFileActivity()Landroid/app/Activity;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->fileActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getImageNumber()I
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/UserPreferences;->getPreferenceImageNumber()I

    move-result v0

    .line 126
    .local v0, "imageNumber":I
    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->countUpImageNumber()V

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/UserPreferences;->getPreferenceImageNumber()I

    move-result v1

    return v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 392
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 393
    .local v4, "imageUri":Landroid/net/Uri;
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 428
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0, p1, p2, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->superHandleActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 422
    :cond_1
    const/16 v0, 0xa

    if-ne p2, v0, :cond_6

    .line 423
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 424
    sget v2, Lorg/catrobat/paintroid/R$string;->pocketpaint_intro_split_screen_not_supported:I

    .line 425
    nop

    .line 423
    invoke-interface {v0, v2, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(II)V

    goto :goto_1

    .line 410
    :cond_2
    if-eq p2, v0, :cond_3

    .line 411
    return-void

    .line 413
    :cond_3
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 414
    move-object v2, p0

    check-cast v2, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    .line 415
    const/4 v3, 0x1

    .line 416
    nop

    .line 417
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 418
    const/4 v6, 0x0

    .line 419
    iget-object v7, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 413
    invoke-interface/range {v1 .. v7}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/tools/Workspace;)V

    goto :goto_1

    .line 395
    :cond_4
    if-eq p2, v0, :cond_5

    .line 396
    return-void

    .line 398
    :cond_5
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 399
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/controller/ToolController;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;Z)V

    .line 400
    iget-object v5, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 401
    move-object v6, p0

    check-cast v6, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    .line 402
    const/4 v7, 0x2

    .line 403
    nop

    .line 404
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 405
    const/4 v10, 0x0

    .line 406
    iget-object v11, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 400
    move-object v8, v4

    invoke-interface/range {v5 .. v11}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/tools/Workspace;)V

    .line 429
    :cond_6
    :goto_1
    nop

    .line 430
    return-void
.end method

.method public handleRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    aget-object v2, p2, v0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p2, v0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 438
    :cond_0
    array-length v2, p3

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    xor-int/2addr v2, v1

    if-eqz v2, :cond_4

    aget v0, p3, v0

    if-nez v0, :cond_4

    .line 439
    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    .line 482
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    .line 483
    nop

    .line 484
    nop

    .line 485
    nop

    .line 482
    invoke-interface {v0, p1, p2, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->superHandleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 487
    goto/16 :goto_3

    .line 479
    :pswitch_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 480
    nop

    .line 479
    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startImportImageActivity(I)V

    goto/16 :goto_3

    .line 474
    :pswitch_1
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isImageUnchanged()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 477
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveBeforeLoadImageDialog()V

    .line 478
    goto :goto_3

    .line 475
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startLoadImageActivity(I)V

    goto :goto_3

    .line 449
    :pswitch_2
    nop

    .line 450
    const/4 v0, 0x4

    .line 451
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 449
    invoke-virtual {p0, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveImageConfirmClicked(ILandroid/net/Uri;)V

    .line 453
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    goto :goto_3

    .line 463
    :pswitch_3
    nop

    .line 464
    nop

    .line 465
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 463
    invoke-virtual {p0, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveImageConfirmClicked(ILandroid/net/Uri;)V

    .line 467
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    goto :goto_3

    .line 456
    :pswitch_4
    nop

    .line 457
    const/4 v0, 0x3

    .line 458
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 456
    invoke-virtual {p0, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveImageConfirmClicked(ILandroid/net/Uri;)V

    .line 460
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    goto :goto_3

    .line 470
    :pswitch_5
    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveCopyConfirmClicked(I)V

    .line 471
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    goto :goto_3

    .line 441
    :pswitch_6
    nop

    .line 442
    nop

    .line 443
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 441
    invoke-virtual {p0, v1, v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveImageConfirmClicked(ILandroid/net/Uri;)V

    .line 445
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    .line 446
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->showLikeUsDialogIfFirstTimeSave()V

    goto :goto_3

    .line 489
    :cond_4
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->isPermissionPermanentlyDenied([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 490
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showRequestPermanentlyDeniedPermissionRationaleDialog()V

    goto :goto_2

    .line 492
    :cond_5
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 493
    sget-object v1, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->EXTERNAL_STORAGE:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    .line 494
    nop

    .line 492
    invoke-interface {v0, v1, p2, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showRequestPermissionRationaleDialog(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)V

    .line 496
    :goto_2
    nop

    .line 497
    goto :goto_3

    .line 499
    :cond_6
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0, p1, p2, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->superHandleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 500
    :goto_3
    nop

    .line 501
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public importFromGalleryClicked()V
    .locals 1

    .line 936
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchBetweenVersions(I)V

    .line 937
    return-void
.end method

.method public importStickersClicked()V
    .locals 1

    .line 944
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showCatroidMediaGallery()V

    .line 945
    return-void
.end method

.method public initializeFromCleanState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "extraPicturePath"    # Ljava/lang/String;
    .param p2, "extraPictureName"    # Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-interface {v0, v3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setOpenedFromCatroid(Z)V

    .line 577
    iput-boolean v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->wasImageLoaded:Z

    .line 578
    if-eqz p1, :cond_3

    .line 579
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, "imageFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 582
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 583
    move-object v4, p0

    check-cast v4, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    .line 584
    const/4 v5, 0x3

    .line 585
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->getSavedPictureUri()Landroid/net/Uri;

    move-result-object v6

    .line 586
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 587
    const/4 v8, 0x0

    .line 588
    iget-object v9, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 582
    invoke-interface/range {v3 .. v9}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/tools/Workspace;)V

    goto :goto_1

    .line 590
    :cond_1
    if-eqz p2, :cond_2

    .line 591
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 592
    move-object v3, p0

    check-cast v3, Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;

    .line 593
    nop

    .line 594
    nop

    .line 591
    invoke-interface {v2, v3, v1, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->createFile(Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;ILjava/lang/String;)V

    .line 596
    .end local v0    # "imageFile":Ljava/io/File;
    :cond_2
    goto :goto_1

    .line 598
    :cond_3
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->resetToolInternalStateOnImageLoaded()V

    .line 599
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    const/4 v1, 0x0

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 600
    :goto_1
    nop

    .line 601
    return-void
.end method

.method public isFinishing()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getFinishing()Z

    move-result v0

    return v0
.end method

.method public loadImageClicked()V
    .locals 2

    .line 133
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchBetweenVersions(IZ)V

    .line 134
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    .line 135
    return-void
.end method

.method public loadNewImage()V
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startLoadImageActivity(I)V

    .line 151
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    .line 152
    return-void
.end method

.method public loadScaledImage(Landroid/net/Uri;I)V
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "requestCode"    # I

    .line 720
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 741
    const-string v2, "MainActivity"

    const-string v3, "wrong request code for loading pictures"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 722
    :cond_0
    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-direct {v0, v2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 723
    iget-object v2, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    sget-object v3, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/catrobat/paintroid/controller/ToolController;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;Z)V

    .line 724
    iget-object v5, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 725
    move-object v6, v0

    check-cast v6, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    .line 726
    const/4 v7, 0x2

    .line 727
    nop

    .line 728
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 729
    const/4 v10, 0x1

    .line 730
    iget-object v11, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 724
    move-object/from16 v8, p1

    invoke-interface/range {v5 .. v11}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/tools/Workspace;)V

    goto :goto_0

    .line 733
    :cond_1
    iget-object v12, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 734
    move-object v13, v0

    check-cast v13, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    .line 735
    const/4 v14, 0x1

    .line 736
    nop

    .line 737
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 738
    const/16 v17, 0x1

    .line 739
    iget-object v2, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 733
    move-object/from16 v15, p1

    move-object/from16 v18, v2

    invoke-interface/range {v12 .. v18}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/tools/Workspace;)V

    .line 742
    :goto_0
    nop

    .line 743
    return-void
.end method

.method public newImageClicked()V
    .locals 1

    .line 155
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isImageUnchanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveBeforeNewImageDialog()V

    .line 160
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    goto :goto_1

    .line 156
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->onNewImage()V

    .line 157
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    .line 161
    :goto_1
    nop

    .line 162
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 504
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    const v1, 0x800003

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;->isDrawerOpen(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;->closeDrawer(IZ)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    const v1, 0x800005

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;->closeDrawer(IZ)V

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->exitFullscreenClicked()V

    goto :goto_0

    .line 510
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->isDefaultTool()Z

    move-result v0

    if-nez v0, :cond_3

    .line 511
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->BRUSH:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-direct {p0, v0, v2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;Z)V

    goto :goto_0

    .line 513
    :cond_3
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->showSecurityQuestionBeforeExit()V

    .line 514
    :goto_0
    nop

    .line 515
    return-void
.end method

.method public onCommandPostExecute()V
    .locals 2

    .line 560
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->dismissIndeterminateProgressDialog()V

    .line 561
    iget-boolean v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 562
    iput-boolean v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    .line 563
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->resetPerspective()V

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSaved(Z)V

    .line 566
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->resetToolInternalState()V

    .line 567
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->refreshDrawingSurface()V

    .line 568
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->refreshTopBarButtons()V

    .line 569
    return-void
.end method

.method public onCreateFilePostExecute(ILjava/io/File;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "file"    # Ljava/io/File;

    .line 708
    if-nez p2, :cond_0

    .line 709
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveErrorDialog()V

    .line 710
    return-void

    .line 712
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 713
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v1, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 716
    nop

    .line 717
    return-void

    .line 715
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onCreateTool()V
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->createTool()V

    .line 665
    return-void
.end method

.method public onLoadImagePostExecute(ILandroid/net/Uri;Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "result"    # Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    .line 750
    if-nez p3, :cond_0

    .line 751
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showLoadErrorDialog()V

    .line 752
    return-void

    .line 754
    :cond_0
    iget-object v0, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v2, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/command/CommandManager;->loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V

    .line 756
    iput-boolean v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    .line 757
    return-void

    .line 759
    :cond_1
    iget-boolean v0, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->toBeScaled:Z

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0, p2, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showScaleImageRequestDialog(Landroid/net/Uri;I)V

    .line 761
    return-void

    .line 763
    :cond_2
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 809
    iput-boolean v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    .line 810
    iget-object v0, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .local v0, "it":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 811
    .local v1, "$i$a$-let-MainActivityPresenter$onLoadImagePostExecute$3":I
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v4, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v4, v0}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(Landroid/graphics/Bitmap;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 812
    nop

    .line 810
    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-let-MainActivityPresenter$onLoadImagePostExecute$3":I
    nop

    .line 813
    :cond_3
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    .line 814
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 815
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    check-cast v2, Landroid/net/Uri;

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setCameraImageUri(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 817
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 800
    :cond_5
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v0, v1, :cond_6

    .line 801
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    iget-object v1, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/controller/ToolController;->setBitmapFromSource(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 803
    :cond_6
    nop

    .line 804
    nop

    .line 805
    nop

    .line 803
    const-string v0, "MainActivity"

    const-string v1, "importPngToFloatingBox: Current tool is no ImportTool as required"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    goto/16 :goto_2

    .line 765
    :cond_7
    iput-boolean v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    .line 766
    iget-object v3, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    .line 767
    iget-object v3, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    .local v3, "it":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 768
    .local v4, "$i$a$-let-MainActivityPresenter$onLoadImagePostExecute$1":I
    iget-object v5, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v6, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v6, v3}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(Landroid/graphics/Bitmap;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 769
    nop

    .line 767
    .end local v3    # "it":Landroid/graphics/Bitmap;
    .end local v4    # "$i$a$-let-MainActivityPresenter$onLoadImagePostExecute$1":I
    goto :goto_0

    .line 771
    :cond_8
    iget-object v3, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmapList:Ljava/util/List;

    if-eqz v3, :cond_9

    .local v3, "it":Ljava/util/List;
    const/4 v4, 0x0

    .line 772
    .local v4, "$i$a$-let-MainActivityPresenter$onLoadImagePostExecute$2":I
    iget-object v5, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v6, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v6, v3}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(Ljava/util/List;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 773
    nop

    .line 771
    .end local v3    # "it":Ljava/util/List;
    .end local v4    # "$i$a$-let-MainActivityPresenter$onLoadImagePostExecute$2":I
    nop

    .line 774
    :cond_9
    :goto_0
    nop

    .line 775
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v3}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    .line 776
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v3

    if-nez v3, :cond_a

    .line 777
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-object v4, v2

    check-cast v4, Landroid/net/Uri;

    invoke-interface {v3, v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 779
    :cond_a
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-object v4, v2

    check-cast v4, Landroid/net/Uri;

    invoke-interface {v3, v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setCameraImageUri(Landroid/net/Uri;)V

    .line 780
    iput-boolean v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->wasImageLoaded:Z

    .line 781
    if-eqz p2, :cond_e

    .line 782
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 783
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 784
    sget-object v4, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v4}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v0, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "jpeg"

    invoke-static {v3, v4, v5, v0, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_1

    .line 788
    :cond_b
    sget-object v4, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v4}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5, v0, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 789
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 790
    sget-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 791
    sput-boolean v5, Lorg/catrobat/paintroid/FileIO;->isCatrobatImage:Z

    goto :goto_2

    .line 793
    :cond_c
    sget-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 794
    sput-boolean v1, Lorg/catrobat/paintroid/FileIO;->isCatrobatImage:Z

    .line 795
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_2

    .line 785
    .restart local v3    # "name":Ljava/lang/String;
    :cond_d
    :goto_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 786
    sget-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 787
    sput-boolean v5, Lorg/catrobat/paintroid/FileIO;->isCatrobatImage:Z

    .line 818
    .end local v3    # "name":Ljava/lang/String;
    :cond_e
    :goto_2
    nop

    .line 819
    return-void
.end method

.method public onLoadImagePreExecute(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .line 821
    return-void
.end method

.method public onNewImage()V
    .locals 4

    .line 288
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 289
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    .line 290
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    const/4 v2, 0x0

    check-cast v2, Landroid/net/Uri;

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 291
    const-string v1, "image"

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 292
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 293
    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 294
    const/4 v1, 0x0

    sput-boolean v1, Lorg/catrobat/paintroid/FileIO;->isCatrobatImage:Z

    .line 295
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->internalMemoryPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Lorg/catrobat/paintroid/FileIO;->deleteTempFile(Ljava/io/File;)V

    .line 296
    nop

    .line 297
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-interface {v1, v2, v3}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(II)Lorg/catrobat/paintroid/command/Command;

    move-result-object v1

    .line 296
    nop

    .line 298
    .local v1, "initCommand":Lorg/catrobat/paintroid/command/Command;
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v2, v1}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 299
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v2}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    .line 300
    return-void
.end method

.method public onSaveImagePostExecute(ILandroid/net/Uri;Z)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "saveAsCopy"    # Z

    .line 832
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->hideContentLoadingProgressBar()V

    .line 833
    if-nez p2, :cond_0

    .line 834
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveErrorDialog()V

    .line 835
    return-void

    .line 837
    :cond_0
    const-string v0, "null"

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    .line 838
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isExport:Z

    if-nez v2, :cond_1

    .line 839
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    sget v2, Lorg/catrobat/paintroid/R$string;->copy:I

    invoke-interface {v0, v2, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(II)V

    goto/16 :goto_1

    .line 841
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/catrobat/paintroid/R$string;->copy_to:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 842
    .local v2, "msg":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getFileActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .local v3, "it":Landroid/app/Activity;
    const/4 v4, 0x0

    .line 843
    .local v4, "$i$a$-let-MainActivityPresenter$onSaveImagePostExecute$1":I
    sget-object v5, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    move-object v6, v3

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v5, v6, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 844
    nop

    .line 842
    .end local v3    # "it":Landroid/app/Activity;
    .end local v4    # "$i$a$-let-MainActivityPresenter$onSaveImagePostExecute$1":I
    nop

    .line 845
    :cond_2
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    if-eqz v2, :cond_3

    move-object v0, v2

    :cond_3
    invoke-interface {v3, v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(Ljava/lang/String;I)V

    .line 846
    .end local v2    # "msg":Ljava/lang/Object;
    goto :goto_1

    .line 848
    :cond_4
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isExport:Z

    if-nez v2, :cond_5

    .line 849
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    sget v2, Lorg/catrobat/paintroid/R$string;->saved:I

    invoke-interface {v0, v2, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(II)V

    goto :goto_0

    .line 851
    :cond_5
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/catrobat/paintroid/R$string;->saved_to:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 852
    .restart local v2    # "msg":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getFileActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_6

    .restart local v3    # "it":Landroid/app/Activity;
    const/4 v4, 0x0

    .line 853
    .local v4, "$i$a$-let-MainActivityPresenter$onSaveImagePostExecute$2":I
    sget-object v5, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    move-object v6, v3

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v5, v6, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 854
    nop

    .line 852
    .end local v3    # "it":Landroid/app/Activity;
    .end local v4    # "$i$a$-let-MainActivityPresenter$onSaveImagePostExecute$2":I
    nop

    .line 855
    :cond_6
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    if-eqz v2, :cond_7

    move-object v0, v2

    :cond_7
    invoke-interface {v3, v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(Ljava/lang/String;I)V

    .line 856
    .end local v2    # "msg":Ljava/lang/Object;
    :goto_0
    nop

    .line 857
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 858
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSaved(Z)V

    .line 859
    :goto_1
    nop

    .line 860
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p3, :cond_9

    .line 861
    :cond_8
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->broadcastAddPictureToGallery(Landroid/net/Uri;)V

    .line 863
    :cond_9
    if-eq p1, v1, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_c

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 868
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 869
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->returnToPocketCode(Ljava/lang/String;)V

    goto :goto_2

    .line 871
    :cond_a
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->finishActivity()V

    .line 872
    :goto_2
    nop

    .line 873
    return-void

    .line 878
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 875
    :cond_c
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 876
    nop

    .line 875
    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startLoadImageActivity(I)V

    goto :goto_3

    .line 864
    :cond_d
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->onNewImage()V

    goto :goto_3

    :cond_e
    nop

    .line 879
    :goto_3
    nop

    .line 880
    return-void
.end method

.method public onSaveImagePreExecute(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .line 824
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->showContentLoadingProgressBar()V

    .line 825
    return-void
.end method

.method public openTemporaryFile(Lorg/catrobat/paintroid/tools/Workspace;)Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 1
    .param p1, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;

    const-string v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/FileIO;->openTemporaryPictureFile(Lorg/catrobat/paintroid/tools/Workspace;)Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v0

    return-object v0
.end method

.method public rateUsClicked()V
    .locals 1

    .line 928
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->rateUsClicked()V

    .line 929
    return-void
.end method

.method public redoClicked()V
    .locals 1

    .line 534
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->isKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->hideKeyboard()V

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->redo()V

    .line 538
    :goto_0
    nop

    .line 539
    return-void
.end method

.method public removeMoreOptionsItems(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 619
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->removeStandaloneMenuItems(Landroid/view/Menu;)V

    .line 621
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->hideTitleIfNotStandalone()V

    goto :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->removeCatroidMenuItems(Landroid/view/Menu;)V

    .line 624
    :goto_0
    nop

    .line 625
    return-void
.end method

.method public restoreState(ZZZZLandroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p1, "isFullscreen"    # Z
    .param p2, "isSaved"    # Z
    .param p3, "isOpenedFromCatroid"    # Z
    .param p4, "isOpenedFromFormulaEditorInCatroid"    # Z
    .param p5, "savedPictureUri"    # Landroid/net/Uri;
    .param p6, "cameraImageUri"    # Landroid/net/Uri;

    .line 653
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setFullscreen(Z)V

    .line 654
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSaved(Z)V

    .line 655
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setOpenedFromCatroid(Z)V

    .line 656
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, p4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setOpenedFromFormulaEditorInCatroid(Z)V

    .line 657
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, p5}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 658
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, p6}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setCameraImageUri(Landroid/net/Uri;)V

    .line 659
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->restoreFragmentListeners()V

    .line 660
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->resetToolInternalStateOnImageLoaded()V

    .line 661
    return-void
.end method

.method public saveBeforeFinish()V
    .locals 4

    .line 187
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 188
    nop

    .line 189
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v1

    .line 190
    nop

    .line 187
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveImageInformationDialogWhenStandalone(IIZ)V

    .line 192
    return-void
.end method

.method public saveBeforeLoadImage()V
    .locals 4

    .line 142
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 143
    nop

    .line 144
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v1

    .line 145
    nop

    .line 142
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveImageInformationDialogWhenStandalone(IIZ)V

    .line 147
    return-void
.end method

.method public saveBeforeNewImage()V
    .locals 4

    .line 165
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 166
    nop

    .line 167
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v1

    .line 168
    nop

    .line 165
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveImageInformationDialogWhenStandalone(IIZ)V

    .line 170
    return-void
.end method

.method public saveCopyClicked(Z)V
    .locals 3
    .param p1, "isExport"    # Z

    .line 195
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 196
    nop

    .line 197
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v1

    .line 198
    nop

    .line 195
    const/4 v2, 0x2

    invoke-interface {v0, v2, v1, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveImageInformationDialogWhenStandalone(IIZ)V

    .line 200
    return-void
.end method

.method public saveCopyConfirmClicked(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .line 522
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    move-object v1, p0

    check-cast v1, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->saveCopy(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/tools/Workspace;Landroid/content/Context;)V

    .line 523
    return-void
.end method

.method public saveImageClicked()V
    .locals 4

    .line 203
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 204
    nop

    .line 205
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v1

    .line 206
    nop

    .line 203
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveImageInformationDialogWhenStandalone(IIZ)V

    .line 208
    return-void
.end method

.method public saveImageConfirmClicked(ILandroid/net/Uri;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 518
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    move-object v1, p0

    check-cast v1, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v5

    move v2, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->saveImage(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/tools/Workspace;Landroid/net/Uri;Landroid/content/Context;)V

    .line 519
    return-void
.end method

.method public saveNewTemporaryImage()V
    .locals 3

    .line 956
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->internalMemoryPath:Ljava/io/File;

    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/FileIO;->saveTemporaryPictureFile(Ljava/io/File;Lorg/catrobat/paintroid/tools/Workspace;)V

    .line 957
    return-void
.end method

.method public sendFeedback()V
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->sendFeedback()V

    .line 285
    return-void
.end method

.method public setAntialiasingOnOkClicked()V
    .locals 1

    .line 952
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->setAntialiasingOnToolPaint()V

    .line 953
    return-void
.end method

.method public setBottomNavigationColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 572
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->setColorButtonColor(I)V

    .line 573
    return-void
.end method

.method public setLayerAdapter(Lorg/catrobat/paintroid/ui/LayerAdapter;)V
    .locals 1
    .param p1, "layerAdapter"    # Lorg/catrobat/paintroid/ui/LayerAdapter;

    const-string v0, "layerAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    .line 933
    return-void
.end method

.method public shareImageClicked()V
    .locals 2

    .line 211
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getBitmapOfAllLayers()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startShareImageActivity(Landroid/graphics/Bitmap;)V

    .line 213
    return-void
.end method

.method public showAboutClicked()V
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showAboutDialog()V

    .line 249
    return-void
.end method

.method public showAdvancedSettingsClicked()V
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showAdvancedSettingsDialog()V

    .line 253
    return-void
.end method

.method public showCatrobatInformationDialog()V
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showCatrobatInformationDialog()V

    .line 281
    return-void
.end method

.method public showColorPickerClicked()V
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showColorPickerDialog()V

    .line 543
    return-void
.end method

.method public showFeedbackDialog()V
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showFeedbackDialog()V

    .line 261
    return-void
.end method

.method public showHelpClicked()V
    .locals 2

    .line 244
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startWelcomeActivity(I)V

    .line 245
    return-void
.end method

.method public showImportDialog()V
    .locals 1

    .line 940
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showImageImportDialog()V

    .line 941
    return-void
.end method

.method public showJpgInformationDialog()V
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showJpgInformationDialog()V

    .line 273
    return-void
.end method

.method public showLayerMenuClicked()V
    .locals 8

    .line 546
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    if-eqz v0, :cond_3

    .local v0, "$this$apply":Lorg/catrobat/paintroid/ui/LayerAdapter;
    const/4 v1, 0x0

    .line 547
    .local v1, "$i$a$-apply-MainActivityPresenter$showLayerMenuClicked$1":I
    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 548
    .local v2, "i":I
    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object v4

    .line 549
    .local v4, "currentHolder":Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;
    if-eqz v4, :cond_1

    move-object v5, v4

    .local v5, "it":Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;
    const/4 v6, 0x0

    .line 550
    .local v6, "$i$a$-let-MainActivityPresenter$showLayerMenuClicked$1$1":I
    invoke-interface {v5}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 551
    invoke-interface {v5}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->updateImageView(Landroid/graphics/Bitmap;)V

    .line 553
    :cond_0
    nop

    .line 549
    .end local v5    # "it":Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;
    .end local v6    # "$i$a$-let-MainActivityPresenter$showLayerMenuClicked$1$1":I
    nop

    .line 547
    .end local v4    # "currentHolder":Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;
    :cond_1
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    :cond_2
    nop

    .line 546
    .end local v0    # "$this$apply":Lorg/catrobat/paintroid/ui/LayerAdapter;
    .end local v1    # "$i$a$-apply-MainActivityPresenter$showLayerMenuClicked$1":I
    nop

    .line 556
    :cond_3
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    const v1, 0x800005

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;->openDrawer(I)V

    .line 557
    return-void
.end method

.method public showOraInformationDialog()V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showOraInformationDialog()V

    .line 277
    return-void
.end method

.method public showOverwriteDialog(IZ)V
    .locals 1
    .param p1, "permissionCode"    # I
    .param p2, "isExport"    # Z

    .line 264
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0, p1, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showOverwriteDialog(IZ)V

    .line 265
    return-void
.end method

.method public showPngInformationDialog()V
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showPngInformationDialog()V

    .line 269
    return-void
.end method

.method public showRateUsDialog()V
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showRateUsDialog()V

    .line 257
    return-void
.end method

.method public final switchBetweenVersions(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchBetweenVersions(IZ)V

    .line 308
    return-void
.end method

.method public switchBetweenVersions(IZ)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "isExport"    # Z

    .line 311
    iput-boolean p2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isExport:Z

    .line 313
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->getSavedPictureUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->isSdkAboveOrEqualM()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 318
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->askForReadAndWriteExternalStoragePermission(I)V

    .line 319
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 326
    goto :goto_1

    .line 325
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    goto :goto_1

    .line 328
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 329
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isImageUnchanged()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 333
    :cond_3
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveBeforeLoadImageDialog()V

    .line 334
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    .line 335
    goto :goto_1

    .line 330
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startLoadImageActivity(I)V

    .line 331
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    goto :goto_1

    .line 337
    :cond_5
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->askForReadAndWriteExternalStoragePermission(I)V

    .line 338
    :goto_1
    nop

    .line 339
    nop

    .line 340
    return-void
.end method

.method public toolClicked(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 3
    .param p1, "toolType"    # Lorg/catrobat/paintroid/tools/ToolType;

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->hide()V

    .line 682
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->hasToolOptionsView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->toggleToolOptionsView()V

    goto :goto_0

    .line 684
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->isKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->hideKeyboard()V

    goto :goto_0

    .line 687
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchTool$default(Lorg/catrobat/paintroid/presenter/MainActivityPresenter;Lorg/catrobat/paintroid/tools/ToolType;ZILjava/lang/Object;)V

    .line 688
    :goto_0
    nop

    .line 689
    return-void
.end method

.method public undoClicked()V
    .locals 1

    .line 526
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->isKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->hideKeyboard()V

    goto :goto_0

    .line 529
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 530
    :goto_0
    nop

    .line 531
    return-void
.end method
