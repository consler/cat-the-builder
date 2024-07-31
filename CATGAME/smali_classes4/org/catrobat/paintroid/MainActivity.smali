.class public final Lorg/catrobat/paintroid/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;
.implements Lorg/catrobat/paintroid/command/CommandManager$CommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/MainActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a2\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00af\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u00af\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u000205H\u0002J\u0008\u0010o\u001a\u00020mH\u0016J\u0008\u0010p\u001a\u00020mH\u0016J\u0008\u0010q\u001a\u00020mH\u0016J\u0008\u0010r\u001a\u00020mH\u0002J\u0010\u0010s\u001a\u00020t2\u0006\u0010u\u001a\u00020vH\u0016J\u0010\u0010w\u001a\u00020\u001f2\u0006\u0010x\u001a\u00020yH\u0002J\u0008\u0010z\u001a\u00020mH\u0016J\u0008\u0010{\u001a\u00020mH\u0016J\u0010\u0010|\u001a\u00020m2\u0006\u0010}\u001a\u00020\u001fH\u0016J$\u0010~\u001a\u00020m2\u0006\u0010\u007f\u001a\u0002052\u0007\u0010\u0080\u0001\u001a\u0002052\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010yH\u0016J\t\u0010\u0082\u0001\u001a\u00020mH\u0016J\u0015\u0010\u0083\u0001\u001a\u00020m2\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0016J\t\u0010\u0086\u0001\u001a\u00020mH\u0002J\t\u0010\u0087\u0001\u001a\u00020mH\u0002J\t\u0010\u0088\u0001\u001a\u00020mH\u0002J\t\u0010\u0089\u0001\u001a\u00020mH\u0002J\u0013\u0010\u008a\u0001\u001a\u00020\u001f2\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u0001H\u0016J\t\u0010\u008d\u0001\u001a\u00020mH\u0014J\u0013\u0010\u008e\u0001\u001a\u00020\u001f2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J2\u0010\u0091\u0001\u001a\u00020m2\u0006\u0010\u007f\u001a\u0002052\u000f\u0010\u0092\u0001\u001a\n\u0012\u0005\u0012\u00030\u0094\u00010\u0093\u00012\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0016\u00a2\u0006\u0003\u0010\u0097\u0001J\t\u0010\u0098\u0001\u001a\u00020mH\u0014J\u0013\u0010\u0099\u0001\u001a\u00020m2\u0008\u0010\u009a\u0001\u001a\u00030\u0085\u0001H\u0014J\t\u0010\u009b\u0001\u001a\u00020mH\u0016J\t\u0010\u009c\u0001\u001a\u00020mH\u0016J\u001d\u0010\u009d\u0001\u001a\u00020m2\u0008\u0010\u009e\u0001\u001a\u00030\u009f\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u00a1\u0001H\u0002J\u0013\u0010\u00a2\u0001\u001a\u00020m2\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001H\u0002J\u0012\u0010\u00a5\u0001\u001a\u00020m2\u0007\u0010\u00a3\u0001\u001a\u00020\u0008H\u0002J\u0013\u0010\u00a6\u0001\u001a\u00020m2\u0008\u0010\u00a7\u0001\u001a\u00030\u00a8\u0001H\u0002J\u0013\u0010\u00a9\u0001\u001a\u00020m2\u0008\u0010\u009e\u0001\u001a\u00030\u009f\u0001H\u0002J\t\u0010\u00aa\u0001\u001a\u00020mH\u0016J\t\u0010\u00ab\u0001\u001a\u00020mH\u0002J%\u0010\u00ac\u0001\u001a\u00020m2\u0006\u0010\u007f\u001a\u0002052\u0007\u0010\u0080\u0001\u001a\u0002052\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010yH\u0016J2\u0010\u00ad\u0001\u001a\u00020m2\u0006\u0010\u007f\u001a\u0002052\u000f\u0010\u0092\u0001\u001a\n\u0012\u0005\u0012\u00030\u0094\u00010\u0093\u00012\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0016\u00a2\u0006\u0003\u0010\u0097\u0001J\u0011\u0010\u00ae\u0001\u001a\u00020\u001f2\u0006\u0010x\u001a\u00020yH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u0004\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u001f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020\u001f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010!R\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008#\u0010!R\u000e\u0010&\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010+\u001a\u00020,8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008-\u0010\u0004\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u000e\u00102\u001a\u000203X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000205X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u00106\u001a\u0002078\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00088\u0010\u0004\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u0014\u0010=\u001a\u00020>8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010@R$\u0010A\u001a\u00020B8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008C\u0010\u0004\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u0014\u0010H\u001a\u00020I8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010KR\u000e\u0010L\u001a\u00020IX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020NX\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010O\u001a\u00020P8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008Q\u0010\u0004\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR$\u0010V\u001a\u00020W8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008X\u0010\u0004\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R$\u0010]\u001a\u00020^8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008_\u0010\u0004\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR\u000e\u0010d\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010e\u001a\u00020f8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008g\u0010\u0004\u001a\u0004\u0008h\u0010i\"\u0004\u0008j\u0010k\u00a8\u0006\u00b0\u0001"
    }
    d2 = {
        "Lorg/catrobat/paintroid/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;",
        "Lorg/catrobat/paintroid/command/CommandManager$CommandListener;",
        "()V",
        "appFragment",
        "Lorg/catrobat/paintroid/PaintroidApplicationFragment;",
        "bottomNavigationViewHolder",
        "Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;",
        "commandFactory",
        "Lorg/catrobat/paintroid/command/CommandFactory;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "getCommandManager$annotations",
        "getCommandManager",
        "()Lorg/catrobat/paintroid/command/CommandManager;",
        "setCommandManager",
        "(Lorg/catrobat/paintroid/command/CommandManager;)V",
        "defaultToolController",
        "Lorg/catrobat/paintroid/controller/DefaultToolController;",
        "deferredRequestPermissionsResult",
        "Ljava/lang/Runnable;",
        "displayMetrics",
        "Landroid/util/DisplayMetrics;",
        "getDisplayMetrics",
        "()Landroid/util/DisplayMetrics;",
        "drawerLayoutViewHolder",
        "Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;",
        "drawingSurface",
        "Lorg/catrobat/paintroid/ui/DrawingSurface;",
        "finishing",
        "",
        "getFinishing",
        "()Z",
        "isKeyboardShown",
        "isRunningEspressoTests",
        "isRunningEspressoTests$delegate",
        "Lkotlin/Lazy;",
        "isTemporaryFileSavingTest",
        "keyboardListener",
        "Lorg/catrobat/paintroid/ui/KeyboardListener;",
        "lastInteractionTime",
        "",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "getLayerModel$annotations",
        "getLayerModel",
        "()Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "setLayerModel",
        "(Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V",
        "layerPresenter",
        "Lorg/catrobat/paintroid/presenter/LayerPresenter;",
        "minuteTemporaryCopiesCounter",
        "",
        "model",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;",
        "getModel$annotations",
        "getModel",
        "()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;",
        "setModel",
        "(Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;)V",
        "myContentResolver",
        "Landroid/content/ContentResolver;",
        "getMyContentResolver",
        "()Landroid/content/ContentResolver;",
        "perspective",
        "Lorg/catrobat/paintroid/ui/Perspective;",
        "getPerspective$annotations",
        "getPerspective",
        "()Lorg/catrobat/paintroid/ui/Perspective;",
        "setPerspective",
        "(Lorg/catrobat/paintroid/ui/Perspective;)V",
        "presenter",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;",
        "getPresenter",
        "()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;",
        "presenterMain",
        "progressBar",
        "Landroidx/core/widget/ContentLoadingProgressBar;",
        "toolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "getToolOptionsViewController$annotations",
        "getToolOptionsViewController",
        "()Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "setToolOptionsViewController",
        "(Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;)V",
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "getToolPaint$annotations",
        "getToolPaint",
        "()Lorg/catrobat/paintroid/tools/ToolPaint;",
        "setToolPaint",
        "(Lorg/catrobat/paintroid/tools/ToolPaint;)V",
        "toolReference",
        "Lorg/catrobat/paintroid/tools/ToolReference;",
        "getToolReference$annotations",
        "getToolReference",
        "()Lorg/catrobat/paintroid/tools/ToolReference;",
        "setToolReference",
        "(Lorg/catrobat/paintroid/tools/ToolReference;)V",
        "userInteraction",
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "getWorkspace$annotations",
        "getWorkspace",
        "()Lorg/catrobat/paintroid/tools/Workspace;",
        "setWorkspace",
        "(Lorg/catrobat/paintroid/tools/Workspace;)V",
        "addToMinuteTemporaryCopiesCounter",
        "",
        "seconds",
        "commandPostExecute",
        "enterFullscreen",
        "exitFullscreen",
        "getAppFragment",
        "getUriFromFile",
        "Landroid/net/Uri;",
        "file",
        "Ljava/io/File;",
        "handleIntent",
        "receivedIntent",
        "Landroid/content/Intent;",
        "hideContentLoadingProgressBar",
        "hideKeyboard",
        "initializeActionBar",
        "isOpenedFromCatroid",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDrawingSurface",
        "onCreateGlobals",
        "onCreateLayerMenu",
        "onCreateMainView",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onDestroy",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "onUserInteraction",
        "refreshDrawingSurface",
        "setActionBarToolTips",
        "topBar",
        "Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;",
        "context",
        "Landroid/content/Context;",
        "setBottomBarListeners",
        "viewHolder",
        "Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;",
        "setBottomNavigationListeners",
        "setLayerMenuListeners",
        "layerMenuViewHolder",
        "Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;",
        "setTopBarListeners",
        "showContentLoadingProgressBar",
        "startAutoSaveCoroutine",
        "superHandleActivityResult",
        "superHandleRequestPermissionsResult",
        "validateIntent",
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
.field private static final APP_FRAGMENT_KEY:Ljava/lang/String; = "customActivityState"

.field private static final CAMERA_IMAGE_URI_KEY:Ljava/lang/String; = "cameraImageUri"

.field public static final Companion:Lorg/catrobat/paintroid/MainActivity$Companion;

.field private static final FIRST_LAUNCH_AFTER_INSTALL:Ljava/lang/String; = "firstLaunchAfterInstall"

.field private static final IS_FULLSCREEN_KEY:Ljava/lang/String; = "isFullscreen"

.field private static final IS_OPENED_FROM_CATROID_KEY:Ljava/lang/String; = "isOpenedFromCatroid"

.field private static final IS_OPENED_FROM_FORMULA_EDITOR_IN_CATROID_KEY:Ljava/lang/String; = "isOpenedFromFormulaEditorInCatroid"

.field private static final IS_SAVED_KEY:Ljava/lang/String; = "isSaved"

.field private static final SAVED_PICTURE_URI_KEY:Ljava/lang/String; = "savedPictureUri"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "preferences"

.field public static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

.field private bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

.field private commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

.field public commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field private defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

.field private deferredRequestPermissionsResult:Ljava/lang/Runnable;

.field private drawerLayoutViewHolder:Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;

.field private drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

.field private final isRunningEspressoTests$delegate:Lkotlin/Lazy;

.field private isTemporaryFileSavingTest:Z

.field private keyboardListener:Lorg/catrobat/paintroid/ui/KeyboardListener;

.field private volatile lastInteractionTime:J

.field public layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

.field private layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

.field private volatile minuteTemporaryCopiesCounter:I

.field public model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

.field public perspective:Lorg/catrobat/paintroid/ui/Perspective;

.field private presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

.field private progressBar:Landroidx/core/widget/ContentLoadingProgressBar;

.field public toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

.field public toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

.field public toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

.field private volatile userInteraction:Z

.field public workspace:Lorg/catrobat/paintroid/tools/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/MainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/MainActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/MainActivity;->Companion:Lorg/catrobat/paintroid/MainActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/paintroid/MainActivity;->lastInteractionTime:J

    .line 150
    sget-object v0, Lorg/catrobat/paintroid/MainActivity$isRunningEspressoTests$2;->INSTANCE:Lorg/catrobat/paintroid/MainActivity$isRunningEspressoTests$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->isRunningEspressoTests$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$addToMinuteTemporaryCopiesCounter(Lorg/catrobat/paintroid/MainActivity;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;
    .param p1, "seconds"    # I

    .line 104
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/MainActivity;->addToMinuteTemporaryCopiesCounter(I)V

    return-void
.end method

.method public static final synthetic access$getAppFragment$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/PaintroidApplicationFragment;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;

    .line 104
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_0

    const-string v1, "appFragment"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getDrawingSurface$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/ui/DrawingSurface;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;

    .line 104
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    if-nez v0, :cond_0

    const-string v1, "drawingSurface"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getLastInteractionTime$p(Lorg/catrobat/paintroid/MainActivity;)J
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;

    .line 104
    iget-wide v0, p0, Lorg/catrobat/paintroid/MainActivity;->lastInteractionTime:J

    return-wide v0
.end method

.method public static final synthetic access$getLayerPresenter$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/presenter/LayerPresenter;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;

    .line 104
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v0, :cond_0

    const-string v1, "layerPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getMinuteTemporaryCopiesCounter$p(Lorg/catrobat/paintroid/MainActivity;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;

    .line 104
    iget v0, p0, Lorg/catrobat/paintroid/MainActivity;->minuteTemporaryCopiesCounter:I

    return v0
.end method

.method public static final synthetic access$getPresenterMain$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;

    .line 104
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_0

    const-string v1, "presenterMain"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getUserInteraction$p(Lorg/catrobat/paintroid/MainActivity;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;

    .line 104
    iget-boolean v0, p0, Lorg/catrobat/paintroid/MainActivity;->userInteraction:Z

    return v0
.end method

.method public static final synthetic access$setAppFragment$p(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/PaintroidApplicationFragment;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    .line 104
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    return-void
.end method

.method public static final synthetic access$setDrawingSurface$p(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/ui/DrawingSurface;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 104
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    return-void
.end method

.method public static final synthetic access$setLastInteractionTime$p(Lorg/catrobat/paintroid/MainActivity;J)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;
    .param p1, "<set-?>"    # J

    .line 104
    iput-wide p1, p0, Lorg/catrobat/paintroid/MainActivity;->lastInteractionTime:J

    return-void
.end method

.method public static final synthetic access$setLayerPresenter$p(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/presenter/LayerPresenter;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/presenter/LayerPresenter;

    .line 104
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    return-void
.end method

.method public static final synthetic access$setMinuteTemporaryCopiesCounter$p(Lorg/catrobat/paintroid/MainActivity;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;
    .param p1, "<set-?>"    # I

    .line 104
    iput p1, p0, Lorg/catrobat/paintroid/MainActivity;->minuteTemporaryCopiesCounter:I

    return-void
.end method

.method public static final synthetic access$setPresenterMain$p(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    .line 104
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    return-void
.end method

.method public static final synthetic access$setUserInteraction$p(Lorg/catrobat/paintroid/MainActivity;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/MainActivity;
    .param p1, "<set-?>"    # Z

    .line 104
    iput-boolean p1, p0, Lorg/catrobat/paintroid/MainActivity;->userInteraction:Z

    return-void
.end method

.method private final declared-synchronized addToMinuteTemporaryCopiesCounter(I)V
    .locals 1
    .param p1, "seconds"    # I

    monitor-enter p0

    .line 670
    :try_start_0
    iget v0, p0, Lorg/catrobat/paintroid/MainActivity;->minuteTemporaryCopiesCounter:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/catrobat/paintroid/MainActivity;->minuteTemporaryCopiesCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    monitor-exit p0

    return-void

    .line 669
    .end local p0    # "this":Lorg/catrobat/paintroid/MainActivity;
    .end local p1    # "seconds":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final getAppFragment()V
    .locals 4

    .line 356
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "customActivityState"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    const/4 v2, 0x0

    .line 357
    .local v2, "$i$a$-let-MainActivity$getAppFragment$1":I
    if-eqz v0, :cond_0

    move-object v3, v0

    check-cast v3, Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    iput-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    .line 358
    nop

    .line 356
    .end local v0    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v2    # "$i$a$-let-MainActivity$getAppFragment$1":I
    goto :goto_0

    .line 357
    .restart local v0    # "fragment":Landroidx/fragment/app/Fragment;
    .restart local v2    # "$i$a$-let-MainActivity$getAppFragment$1":I
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type org.catrobat.paintroid.PaintroidApplicationFragment"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    .end local v0    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v2    # "$i$a$-let-MainActivity$getAppFragment$1":I
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/MainActivity;

    iget-object v0, v0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_3

    .line 360
    new-instance v0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    invoke-direct {v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    .line 361
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v2, :cond_2

    const-string v3, "appFragment"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 363
    :cond_3
    return-void
.end method

.method public static synthetic getCommandManager$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLayerModel$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getModel$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPerspective$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getToolOptionsViewController$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getToolPaint$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getToolReference$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getWorkspace$annotations()V
    .locals 0

    return-void
.end method

.method private final handleIntent(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "receivedIntent"    # Landroid/content/Intent;

    .line 200
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 202
    .local v0, "receivedUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 204
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "content"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getMyContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 207
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "fileExtension":Ljava/lang/String;
    nop

    .line 209
    nop

    .line 208
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 209
    const-string v4, "fileExtension"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Locale.US"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_f

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 204
    .end local v2    # "fileExtension":Ljava/lang/String;
    :goto_3
    nop

    .line 212
    .local v2, "mimeType":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v0, :cond_e

    .line 213
    nop

    .line 214
    :try_start_0
    const-string v4, "application/zip"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v4, v6, v5, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "commandFactory"

    const-string v8, "commandManager"

    if-nez v4, :cond_8

    :try_start_1
    const-string v4, "application/octet-stream"

    invoke-static {v2, v4, v6, v5, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 234
    :cond_4
    const-string v1, "image"

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 235
    nop

    .line 236
    nop

    .line 235
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getMyContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "applicationContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, v4}, Lorg/catrobat/paintroid/FileIO;->getBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 236
    nop

    .local v1, "receivedBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 237
    .local v4, "$i$a$-let-MainActivity$handleIntent$2":I
    iget-object v5, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v5, :cond_5

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 238
    :cond_5
    iget-object v6, p0, Lorg/catrobat/paintroid/MainActivity;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    if-nez v6, :cond_6

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 239
    :cond_6
    nop

    .line 238
    invoke-interface {v6, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(Landroid/graphics/Bitmap;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v6

    .line 237
    invoke-interface {v5, v6}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    nop

    .line 236
    .end local v1    # "receivedBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "$i$a$-let-MainActivity$handleIntent$2":I
    :cond_7
    nop

    .line 243
    goto :goto_5

    .line 215
    :cond_8
    :goto_4
    nop

    .line 216
    :try_start_2
    iget-object v1, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v1, :cond_9

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 217
    :cond_9
    iget-object v4, p0, Lorg/catrobat/paintroid/MainActivity;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    if-nez v4, :cond_a

    const-string v5, "workspace"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/Workspace;->getCommandSerializationHelper()Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->readFromFile(Landroid/net/Uri;)Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v4

    .line 216
    invoke-interface {v1, v4}, Lorg/catrobat/paintroid/command/CommandManager;->loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V
    :try_end_2
    .catch Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$NotCatrobatImageException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 219
    return v6

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$NotCatrobatImageException;
    :try_start_3
    const-string v4, "MainActivity"

    const-string v5, "Image might be an ora file instead"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    nop

    .line 225
    nop

    .line 222
    nop

    .line 225
    nop

    .line 223
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getMyContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 224
    nop

    .line 222
    invoke-static {v4, v0}, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->importOraFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object v4

    iget-object v4, v4, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmapList:Ljava/util/List;

    if-eqz v4, :cond_d

    .line 225
    nop

    .local v4, "bitmapList":Ljava/util/List;
    const/4 v5, 0x0

    .line 226
    .local v5, "$i$a$-let-MainActivity$handleIntent$1":I
    iget-object v6, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v6, :cond_b

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 227
    :cond_b
    iget-object v8, p0, Lorg/catrobat/paintroid/MainActivity;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    if-nez v8, :cond_c

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 228
    :cond_c
    nop

    .line 227
    invoke-interface {v8, v4}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(Ljava/util/List;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v7

    .line 226
    invoke-interface {v6, v7}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 231
    nop

    .line 225
    .end local v4    # "bitmapList":Ljava/util/List;
    .end local v5    # "$i$a$-let-MainActivity$handleIntent$1":I
    :cond_d
    nop

    .line 232
    .end local v1    # "e":Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$NotCatrobatImageException;
    goto :goto_5

    .line 244
    :catch_1
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Can not read"

    const-string v5, "Unable to retrieve Bitmap from Uri"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    nop

    .line 247
    return v3

    .line 212
    :cond_e
    return v3

    .line 209
    .local v2, "fileExtension":Ljava/lang/String;
    :cond_f
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final isRunningEspressoTests()Z
    .locals 1

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->isRunningEspressoTests$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final onCreateDrawingSurface()V
    .locals 9

    .line 477
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_drawing_surface_view:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.pocket\u2026int_drawing_surface_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lorg/catrobat/paintroid/ui/DrawingSurface;

    iput-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 478
    const-string v0, "drawingSurface"

    if-nez v2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 479
    :cond_0
    iget-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v3, :cond_1

    const-string v1, "layerModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 480
    :cond_1
    iget-object v4, p0, Lorg/catrobat/paintroid/MainActivity;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    const-string v1, "perspective"

    if-nez v4, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 481
    :cond_2
    iget-object v5, p0, Lorg/catrobat/paintroid/MainActivity;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    if-nez v5, :cond_3

    const-string v6, "toolReference"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 482
    :cond_3
    iget-object v6, p0, Lorg/catrobat/paintroid/MainActivity;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    if-nez v6, :cond_4

    const-string v7, "toolOptionsViewController"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 483
    :cond_4
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    const-string v8, "supportFragmentManager"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {v2 .. v7}, Lorg/catrobat/paintroid/ui/DrawingSurface;->setArguments(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/tools/ToolReference;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Landroidx/fragment/app/FragmentManager;)V

    .line 485
    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    const-string v3, "layerPresenter"

    if-nez v2, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lorg/catrobat/paintroid/MainActivity;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    if-nez v4, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2, v4}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->setDrawingSurface(Lorg/catrobat/paintroid/ui/DrawingSurface;)V

    .line 486
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_7

    const-string v2, "appFragment"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-nez v2, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setPerspective(Lorg/catrobat/paintroid/ui/Perspective;)V

    .line 487
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lorg/catrobat/paintroid/MainActivity;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-nez v1, :cond_a

    const-string v2, "defaultToolController"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->setDefaultToolController(Lorg/catrobat/paintroid/controller/DefaultToolController;)V

    .line 488
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v0, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lorg/catrobat/paintroid/MainActivity;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    if-nez v1, :cond_c

    const-string v2, "bottomNavigationViewHolder"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->setBottomNavigationViewHolder(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V

    .line 489
    return-void
.end method

.method private final onCreateGlobals()V
    .locals 9

    .line 366
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    const-string v1, "appFragment"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/catrobat/paintroid/model/LayerModel;

    invoke-direct {v0}, Lorg/catrobat/paintroid/model/LayerModel;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 367
    .local v0, "currentLayerModel":Lorg/catrobat/paintroid/contract/LayerContracts$Model;
    :goto_0
    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setLayerModel(Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 368
    iput-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 370
    new-instance v2, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;

    invoke-direct {v2}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;-><init>()V

    check-cast v2, Lorg/catrobat/paintroid/command/CommandFactory;

    iput-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 372
    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v2

    .line 373
    .local v2, "currentCommandManager":Lorg/catrobat/paintroid/command/CommandManager;
    if-nez v2, :cond_b

    .line 374
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "resources"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 375
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    nop

    .line 376
    new-instance v4, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;

    new-instance v5, Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-direct {v5}, Lorg/catrobat/paintroid/common/CommonFactory;-><init>()V

    iget-object v6, p0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v7, "layerModel"

    if-nez v6, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-direct {v4, v5, v6}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;-><init>(Lorg/catrobat/paintroid/common/CommonFactory;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 375
    check-cast v4, Lorg/catrobat/paintroid/command/CommandManager;

    .line 377
    .local v4, "synchronousCommandManager":Lorg/catrobat/paintroid/command/CommandManager;
    new-instance v5, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    iget-object v6, p0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v6, :cond_5

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-direct {v5, v4, v6}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;-><init>(Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    check-cast v5, Lorg/catrobat/paintroid/command/CommandManager;

    iput-object v5, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 378
    nop

    .line 379
    iget-object v5, p0, Lorg/catrobat/paintroid/MainActivity;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    if-nez v5, :cond_6

    const-string v6, "commandFactory"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-interface {v5, v6, v7}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(II)Lorg/catrobat/paintroid/command/Command;

    move-result-object v5

    .line 378
    nop

    .line 380
    .local v5, "initCommand":Lorg/catrobat/paintroid/command/Command;
    iget-object v6, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    const-string v7, "commandManager"

    if-nez v6, :cond_7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-interface {v6, v5}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 381
    iget-object v6, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v6, :cond_8

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-interface {v6}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    .line 382
    iget-object v6, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v6, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v8, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v8, :cond_a

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v6, v8}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setCommandManager(Lorg/catrobat/paintroid/command/CommandManager;)V

    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "synchronousCommandManager":Lorg/catrobat/paintroid/command/CommandManager;
    .end local v5    # "initCommand":Lorg/catrobat/paintroid/command/Command;
    goto :goto_1

    .line 384
    :cond_b
    iput-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 385
    :goto_1
    nop

    .line 387
    iget-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v3, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v3}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->getToolPaint()Lorg/catrobat/paintroid/tools/ToolPaint;

    move-result-object v3

    if-eqz v3, :cond_d

    goto :goto_2

    :cond_d
    new-instance v3, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "applicationContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;-><init>(Landroid/content/Context;)V

    check-cast v3, Lorg/catrobat/paintroid/tools/ToolPaint;

    .line 388
    .local v3, "currentToolPaint":Lorg/catrobat/paintroid/tools/ToolPaint;
    :goto_2
    iget-object v4, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v4, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v4, v3}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setToolPaint(Lorg/catrobat/paintroid/tools/ToolPaint;)V

    .line 389
    iput-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    .line 391
    iget-object v4, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v4, :cond_f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v4}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->getCurrentTool()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v4

    if-eqz v4, :cond_10

    goto :goto_3

    :cond_10
    new-instance v4, Lorg/catrobat/paintroid/tools/implementation/DefaultToolReference;

    invoke-direct {v4}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolReference;-><init>()V

    check-cast v4, Lorg/catrobat/paintroid/tools/ToolReference;

    .line 392
    .local v4, "currentTool":Lorg/catrobat/paintroid/tools/ToolReference;
    :goto_3
    iget-object v5, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v5, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v5, v4}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setCurrentTool(Lorg/catrobat/paintroid/tools/ToolReference;)V

    .line 393
    iput-object v4, p0, Lorg/catrobat/paintroid/MainActivity;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    .line 394
    return-void
.end method

.method private final onCreateLayerMenu()V
    .locals 12

    .line 459
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_nav_view_layer:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 460
    .local v0, "layerLayout":Lcom/google/android/material/navigation/NavigationView;
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_layer_side_nav_list:I

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;

    .line 461
    .local v1, "layerListView":Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;
    new-instance v2, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;

    const-string v3, "layerLayout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    .line 462
    .local v2, "layerMenuViewHolder":Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;
    new-instance v3, Lorg/catrobat/paintroid/ui/LayerNavigator;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "applicationContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/catrobat/paintroid/ui/LayerNavigator;-><init>(Landroid/content/Context;)V

    .line 463
    .local v3, "layerNavigator":Lorg/catrobat/paintroid/ui/LayerNavigator;
    new-instance v11, Lorg/catrobat/paintroid/presenter/LayerPresenter;

    .line 464
    iget-object v5, p0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v5, :cond_0

    const-string v4, "layerModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v4, "layerListView"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

    move-object v7, v2

    check-cast v7, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    .line 465
    iget-object v8, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v8, :cond_1

    const-string v4, "commandManager"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v4, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;

    invoke-direct {v4}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;-><init>()V

    move-object v9, v4

    check-cast v9, Lorg/catrobat/paintroid/command/CommandFactory;

    move-object v10, v3

    check-cast v10, Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;

    .line 463
    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lorg/catrobat/paintroid/presenter/LayerPresenter;-><init>(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/command/CommandFactory;Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;)V

    iput-object v11, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    .line 467
    new-instance v4, Lorg/catrobat/paintroid/ui/LayerAdapter;

    iget-object v5, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    const-string v6, "layerPresenter"

    if-nez v5, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v5, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-direct {v4, v5}, Lorg/catrobat/paintroid/ui/LayerAdapter;-><init>(Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;)V

    .line 468
    .local v4, "layerAdapter":Lorg/catrobat/paintroid/ui/LayerAdapter;
    iget-object v5, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v5, :cond_3

    const-string v7, "presenterMain"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v5, v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->setLayerAdapter(Lorg/catrobat/paintroid/ui/LayerAdapter;)V

    .line 469
    iget-object v5, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v5, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    move-object v7, v4

    check-cast v7, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    invoke-virtual {v5, v7}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->setAdapter(Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;)V

    .line 470
    iget-object v5, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v5, :cond_5

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    check-cast v5, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    invoke-virtual {v1, v5}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setPresenter(Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;)V

    .line 471
    move-object v5, v4

    check-cast v5, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v5}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    iget-object v5, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v5, :cond_6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v5}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->refreshLayerMenuViewHolder()V

    .line 473
    invoke-direct {p0, v2}, Lorg/catrobat/paintroid/MainActivity;->setLayerMenuListeners(Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;)V

    .line 474
    return-void
.end method

.method private final onCreateMainView()V
    .locals 33

    .line 397
    move-object/from16 v0, p0

    move-object v14, v0

    check-cast v14, Landroid/content/Context;

    .line 398
    .local v14, "context":Landroid/content/Context;
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_drawer_layout:I

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 399
    .local v13, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_layout_top_bar:I

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/view/ViewGroup;

    .line 400
    .local v12, "topBarLayout":Landroid/view/ViewGroup;
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_main_bottom_bar:I

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 401
    .local v11, "bottomBarLayout":Landroid/view/View;
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_main_bottom_navigation:I

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 402
    .local v10, "bottomNavigationView":Landroid/view/View;
    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;-><init>(Landroid/app/Activity;)V

    check-cast v1, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    iput-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 403
    new-instance v1, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;

    const-string v2, "drawerLayout"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v13}, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    iput-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;

    .line 404
    new-instance v1, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    const-string v2, "topBarLayout"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v12}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;-><init>(Landroid/view/ViewGroup;)V

    move-object v9, v1

    .line 405
    .local v9, "topBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;
    new-instance v1, Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;

    const-string v2, "bottomBarLayout"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v11}, Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;-><init>(Landroid/view/View;)V

    move-object v8, v1

    .line 406
    .local v8, "bottomBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;
    new-instance v1, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    .line 407
    const-string v2, "bottomNavigationView"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 409
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-direct {v1, v10, v2, v3}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;-><init>(Landroid/view/View;ILandroid/content/Context;)V

    iput-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    .line 411
    new-instance v1, Lorg/catrobat/paintroid/ui/Perspective;

    iget-object v2, v0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v3, "layerModel"

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v2

    iget-object v4, v0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v4}, Lorg/catrobat/paintroid/ui/Perspective;-><init>(II)V

    iput-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    .line 412
    new-instance v1, Lorg/catrobat/paintroid/MainActivity$onCreateMainView$listener$1;

    invoke-direct {v1, v0}, Lorg/catrobat/paintroid/MainActivity$onCreateMainView$listener$1;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    move-object v7, v1

    check-cast v7, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;

    .line 413
    .local v7, "listener":Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;
    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;

    .line 414
    iget-object v2, v0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 415
    :cond_2
    iget-object v3, v0, Lorg/catrobat/paintroid/MainActivity;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    const-string v4, "perspective"

    if-nez v3, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 416
    :cond_3
    nop

    .line 417
    new-instance v5, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v15, v0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    const-string v17, "commandManager"

    if-nez v15, :cond_4

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-direct {v5, v6, v15}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;-><init>(Landroid/content/Context;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 413
    invoke-direct {v1, v2, v3, v7, v5}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;-><init>(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;)V

    check-cast v1, Lorg/catrobat/paintroid/tools/Workspace;

    iput-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 419
    new-instance v1, Lorg/catrobat/paintroid/model/MainActivityModel;

    invoke-direct {v1}, Lorg/catrobat/paintroid/model/MainActivityModel;-><init>()V

    check-cast v1, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    iput-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    .line 420
    new-instance v1, Lorg/catrobat/paintroid/controller/DefaultToolController;

    .line 421
    iget-object v2, v0, Lorg/catrobat/paintroid/MainActivity;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    const-string v3, "toolReference"

    if-nez v2, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 422
    :cond_5
    iget-object v5, v0, Lorg/catrobat/paintroid/MainActivity;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    if-nez v5, :cond_6

    const-string v6, "toolOptionsViewController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 423
    :cond_6
    new-instance v6, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;

    invoke-direct {v6}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;-><init>()V

    move-object/from16 v21, v6

    check-cast v21, Lorg/catrobat/paintroid/tools/ToolFactory;

    .line 424
    iget-object v6, v0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v6, :cond_7

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 425
    :cond_7
    iget-object v15, v0, Lorg/catrobat/paintroid/MainActivity;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    const-string v26, "workspace"

    if-nez v15, :cond_8

    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 426
    :cond_8
    move-object/from16 v27, v7

    .end local v7    # "listener":Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;
    .local v27, "listener":Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;
    iget-object v7, v0, Lorg/catrobat/paintroid/MainActivity;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    if-nez v7, :cond_9

    const-string v16, "toolPaint"

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 427
    :cond_9
    move-object/from16 v28, v10

    .end local v10    # "bottomNavigationView":Landroid/view/View;
    .local v28, "bottomNavigationView":Landroid/view/View;
    new-instance v10, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;

    invoke-direct {v10, v14}, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;-><init>(Landroid/content/Context;)V

    move-object/from16 v25, v10

    check-cast v25, Lorg/catrobat/paintroid/tools/ContextCallback;

    .line 420
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v15

    move-object/from16 v24, v7

    invoke-direct/range {v18 .. v25}, Lorg/catrobat/paintroid/controller/DefaultToolController;-><init>(Lorg/catrobat/paintroid/tools/ToolReference;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ContextCallback;)V

    iput-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    .line 429
    new-instance v1, Lorg/catrobat/paintroid/UserPreferences;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "getPreferences(MODE_PRIVATE)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/UserPreferences;-><init>(Landroid/content/SharedPreferences;)V

    move-object/from16 v16, v1

    .line 430
    .local v16, "preferences":Lorg/catrobat/paintroid/UserPreferences;
    new-instance v19, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;

    .line 431
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    .line 432
    move-object v5, v0

    check-cast v5, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    .line 433
    iget-object v6, v0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-nez v6, :cond_a

    const-string v1, "model"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 434
    :cond_a
    iget-object v7, v0, Lorg/catrobat/paintroid/MainActivity;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    if-nez v7, :cond_b

    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 435
    :cond_b
    new-instance v1, Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    iget-object v10, v0, Lorg/catrobat/paintroid/MainActivity;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    if-nez v10, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-direct {v1, v0, v10}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;-><init>(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/tools/ToolReference;)V

    move-object v10, v1

    check-cast v10, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 436
    new-instance v1, Lorg/catrobat/paintroid/ui/MainActivityInteractor;

    invoke-direct {v1}, Lorg/catrobat/paintroid/ui/MainActivityInteractor;-><init>()V

    move-object/from16 v20, v1

    check-cast v20, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 437
    move-object/from16 v21, v9

    check-cast v21, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    .line 438
    move-object/from16 v22, v8

    check-cast v22, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    .line 439
    iget-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;

    if-nez v1, :cond_d

    const-string v3, "drawerLayoutViewHolder"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v23, v1

    check-cast v23, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    .line 440
    iget-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    const-string v24, "bottomNavigationViewHolder"

    if-nez v1, :cond_e

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v25, v1

    check-cast v25, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    .line 441
    new-instance v1, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;

    invoke-direct {v1}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;-><init>()V

    move-object/from16 v26, v1

    check-cast v26, Lorg/catrobat/paintroid/command/CommandFactory;

    .line 442
    iget-object v3, v0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v3, :cond_f

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 443
    :cond_f
    iget-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-nez v1, :cond_10

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 444
    :cond_10
    iget-object v4, v0, Lorg/catrobat/paintroid/MainActivity;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    const-string v29, "defaultToolController"

    if-nez v4, :cond_11

    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    move-object v15, v4

    check-cast v15, Lorg/catrobat/paintroid/controller/ToolController;

    .line 445
    nop

    .line 446
    nop

    .line 447
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    move-object/from16 v18, v4

    move-object/from16 v17, v1

    const-string v1, "filesDir"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    move-object/from16 v1, v19

    move-object/from16 v30, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v10

    move-object/from16 v7, v20

    move-object v10, v8

    .end local v8    # "bottomBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;
    .local v10, "bottomBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;
    move-object/from16 v8, v21

    move-object/from16 v31, v9

    .end local v9    # "topBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;
    .local v31, "topBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;
    move-object/from16 v9, v22

    move-object/from16 v32, v10

    move-object/from16 v20, v28

    .end local v10    # "bottomBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;
    .end local v28    # "bottomNavigationView":Landroid/view/View;
    .local v20, "bottomNavigationView":Landroid/view/View;
    .local v32, "bottomBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;
    move-object/from16 v10, v23

    move-object/from16 v21, v11

    .end local v11    # "bottomBarLayout":Landroid/view/View;
    .local v21, "bottomBarLayout":Landroid/view/View;
    move-object/from16 v11, v25

    move-object/from16 v22, v12

    .end local v12    # "topBarLayout":Landroid/view/ViewGroup;
    .local v22, "topBarLayout":Landroid/view/ViewGroup;
    move-object/from16 v12, v26

    move-object/from16 v23, v13

    .end local v13    # "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .local v23, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object/from16 v13, v30

    move-object/from16 v25, v14

    .end local v14    # "context":Landroid/content/Context;
    .local v25, "context":Landroid/content/Context;
    move-object/from16 v14, v17

    move-object/from16 v17, v25

    invoke-direct/range {v1 .. v18}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;-><init>(Landroid/app/Activity;Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;Lorg/catrobat/paintroid/command/CommandFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/controller/ToolController;Lorg/catrobat/paintroid/UserPreferences;Landroid/content/Context;Ljava/io/File;)V

    move-object/from16 v1, v19

    check-cast v1, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    iput-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    .line 449
    iget-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-nez v1, :cond_12

    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    new-instance v2, Lorg/catrobat/paintroid/listener/PresenterColorPickedListener;

    iget-object v3, v0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v3, :cond_13

    const-string v4, "presenterMain"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    invoke-direct {v2, v3}, Lorg/catrobat/paintroid/listener/PresenterColorPickedListener;-><init>(Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;)V

    check-cast v2, Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    invoke-virtual {v1, v2}, Lorg/catrobat/paintroid/controller/DefaultToolController;->setOnColorPickedListener(Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V

    .line 450
    new-instance v1, Lorg/catrobat/paintroid/ui/KeyboardListener;

    move-object/from16 v2, v23

    check-cast v2, Landroid/view/View;

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/ui/KeyboardListener;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lorg/catrobat/paintroid/MainActivity;->keyboardListener:Lorg/catrobat/paintroid/ui/KeyboardListener;

    .line 451
    move-object/from16 v1, v31

    .end local v31    # "topBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;
    .local v1, "topBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;
    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/MainActivity;->setTopBarListeners(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;)V

    .line 452
    move-object/from16 v2, v32

    .end local v32    # "bottomBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;
    .local v2, "bottomBarViewHolder":Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;
    invoke-direct {v0, v2}, Lorg/catrobat/paintroid/MainActivity;->setBottomBarListeners(Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;)V

    .line 453
    iget-object v3, v0, Lorg/catrobat/paintroid/MainActivity;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    if-nez v3, :cond_14

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-direct {v0, v3}, Lorg/catrobat/paintroid/MainActivity;->setBottomNavigationListeners(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V

    .line 454
    move-object/from16 v3, v25

    .end local v25    # "context":Landroid/content/Context;
    .local v3, "context":Landroid/content/Context;
    invoke-direct {v0, v1, v3}, Lorg/catrobat/paintroid/MainActivity;->setActionBarToolTips(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;Landroid/content/Context;)V

    .line 455
    sget v4, Lorg/catrobat/paintroid/R$id;->pocketpaint_content_loading_progress_bar:I

    invoke-virtual {v0, v4}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "findViewById(R.id.pocket\u2026ent_loading_progress_bar)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/core/widget/ContentLoadingProgressBar;

    iput-object v4, v0, Lorg/catrobat/paintroid/MainActivity;->progressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 456
    return-void
.end method

.method private final setActionBarToolTips(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;Landroid/content/Context;)V
    .locals 2
    .param p1, "topBar"    # Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;
    .param p2, "context"    # Landroid/content/Context;

    .line 497
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getUndoButton()Landroid/widget/ImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/catrobat/paintroid/R$string;->button_undo:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getRedoButton()Landroid/widget/ImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/catrobat/paintroid/R$string;->button_redo:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 499
    return-void
.end method

.method private final setBottomBarListeners(Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;)V
    .locals 6
    .param p1, "viewHolder"    # Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;

    .line 519
    invoke-static {}, Lorg/catrobat/paintroid/tools/ToolType;->values()[Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    .line 520
    .local v0, "toolTypes":[Lorg/catrobat/paintroid/tools/ToolType;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 521
    .local v3, "type":Lorg/catrobat/paintroid/tools/ToolType;
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;->getLayout()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/ToolType;->getToolButtonID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 522
    .local v4, "toolButton":Landroid/view/View;
    new-instance v5, Lorg/catrobat/paintroid/MainActivity$setBottomBarListeners$1;

    invoke-direct {v5, p0, v3}, Lorg/catrobat/paintroid/MainActivity$setBottomBarListeners$1;-><init>(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/tools/ToolType;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    .end local v4    # "toolButton":Landroid/view/View;
    :cond_0
    nop

    .end local v3    # "type":Lorg/catrobat/paintroid/tools/ToolType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    :cond_1
    return-void
.end method

.method private final setBottomNavigationListeners(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    .line 527
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->getBottomNavigationView()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v0

    .line 528
    new-instance v1, Lorg/catrobat/paintroid/MainActivity$setBottomNavigationListeners$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$setBottomNavigationListeners$1;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    check-cast v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 527
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 539
    return-void
.end method

.method private final setLayerMenuListeners(Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;)V
    .locals 2
    .param p1, "layerMenuViewHolder"    # Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;

    .line 492
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->getLayerAddButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/MainActivity$setLayerMenuListeners$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$setLayerMenuListeners$1;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->getLayerDeleteButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/MainActivity$setLayerMenuListeners$2;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$setLayerMenuListeners$2;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    return-void
.end method

.method private final setTopBarListeners(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;)V
    .locals 2
    .param p1, "topBar"    # Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    .line 502
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getUndoButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$1;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getRedoButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$2;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$2;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getCheckmarkButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$3;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$3;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$4;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$4;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;->setTopBarViewHolder(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;)V

    .line 516
    return-void
.end method

.method private final startAutoSaveCoroutine()V
    .locals 7

    .line 674
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;-><init>(Lorg/catrobat/paintroid/MainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 685
    return-void
.end method

.method private final validateIntent(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "receivedIntent"    # Landroid/content/Intent;

    .line 251
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "receivedAction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "receivedType":Ljava/lang/String;
    nop

    .line 254
    nop

    .line 256
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v3, "android.intent.action.SEND"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.EDIT"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    :cond_0
    nop

    .line 255
    nop

    .line 254
    const-string v3, "image/"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 256
    const-string v3, "application/"

    invoke-static {v1, v3, v2, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 253
    :cond_2
    return v2
.end method


# virtual methods
.method public commandPostExecute()V
    .locals 2

    .line 553
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 554
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v0, :cond_0

    const-string v1, "layerPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->invalidate()V

    .line 555
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_1

    const-string v1, "presenterMain"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->onCommandPostExecute()V

    .line 557
    :cond_2
    return-void
.end method

.method public enterFullscreen()V
    .locals 2

    .line 633
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    if-nez v0, :cond_0

    const-string v1, "drawingSurface"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->disableAutoScroll()V

    .line 634
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 635
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 636
    return-void
.end method

.method public exitFullscreen()V
    .locals 2

    .line 639
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    if-nez v0, :cond_0

    const-string v1, "drawingSurface"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->enableAutoScroll()V

    .line 640
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 641
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 642
    return-void
.end method

.method public final getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v0, :cond_0

    const-string v1, "commandManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 178
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "resources.displayMetrics"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFinishing()Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public final getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-nez v0, :cond_0

    const-string v1, "layerModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-nez v0, :cond_0

    const-string v1, "model"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getMyContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .line 184
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contentResolver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPerspective()Lorg/catrobat/paintroid/ui/Perspective;
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-nez v0, :cond_0

    const-string v1, "perspective"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_0

    const-string v1, "presenterMain"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getToolOptionsViewController()Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    if-nez v0, :cond_0

    const-string v1, "toolOptionsViewController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getToolPaint()Lorg/catrobat/paintroid/tools/ToolPaint;
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    if-nez v0, :cond_0

    const-string v1, "toolPaint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    if-nez v0, :cond_0

    const-string v1, "toolReference"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getUriFromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.fromFile(file)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getWorkspace()Lorg/catrobat/paintroid/tools/Workspace;
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    if-nez v0, :cond_0

    const-string v1, "workspace"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public hideContentLoadingProgressBar()V
    .locals 2

    .line 659
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->progressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressBar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->hide()V

    .line 660
    return-void
.end method

.method public hideKeyboard()V
    .locals 4

    .line 647
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 648
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "window.decorView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 650
    .local v1, "rootView":Landroid/view/View;
    const-string v2, "rootView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 652
    .end local v1    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public initializeActionBar(Z)V
    .locals 4
    .param p1, "isOpenedFromCatroid"    # Z

    .line 542
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_toolbar:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 543
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 544
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .local v1, "$this$apply":Landroidx/appcompat/app/ActionBar;
    const/4 v2, 0x0

    .line 545
    .local v2, "$i$a$-apply-MainActivity$initializeActionBar$1":I
    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 546
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 547
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 548
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 549
    nop

    .line 544
    .end local v1    # "$this$apply":Landroidx/appcompat/app/ActionBar;
    .end local v2    # "$i$a$-apply-MainActivity$initializeActionBar$1":I
    nop

    .line 550
    :cond_0
    return-void
.end method

.method public isKeyboardShown()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->keyboardListener:Lorg/catrobat/paintroid/ui/KeyboardListener;

    if-nez v0, :cond_0

    const-string v1, "keyboardListener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/KeyboardListener;->isSoftKeyboardVisible()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 594
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 595
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_0

    const-string v1, "presenterMain"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->handleActivityResult(IILandroid/content/Intent;)V

    .line 596
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 586
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 589
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_1

    const-string v1, "presenterMain"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->onBackPressed()V

    .line 590
    :cond_2
    :goto_0
    nop

    .line 591
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget v2, Lorg/catrobat/paintroid/R$style;->PocketPaintTheme:I

    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/MainActivity;->setTheme(I)V

    .line 262
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getAppFragment()V

    .line 264
    sget-object v2, Lorg/catrobat/paintroid/PaintroidApplication;->Companion:Lorg/catrobat/paintroid/PaintroidApplication$Companion;

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/paintroid/PaintroidApplication$Companion;->setCacheDir(Ljava/io/File;)V

    .line 265
    sget v2, Lorg/catrobat/paintroid/R$layout;->activity_pocketpaint_main:I

    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/MainActivity;->setContentView(I)V

    .line 266
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->onCreateGlobals()V

    .line 267
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->onCreateMainView()V

    .line 268
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->onCreateLayerMenu()V

    .line 269
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->onCreateDrawingSurface()V

    .line 270
    iget-object v2, v0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    const-string v3, "presenterMain"

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->onCreateTool()V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 273
    .local v2, "receivedIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "isTemporaryFileSavingTest"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lorg/catrobat/paintroid/MainActivity;->isTemporaryFileSavingTest:Z

    .line 274
    nop

    .line 275
    const-string v4, "receivedIntent"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/catrobat/paintroid/MainActivity;->validateIntent(Landroid/content/Intent;)Z

    move-result v4

    const-string v5, "workspace"

    const-string v7, "commandManager"

    const-string v8, "model"

    if-eqz v4, :cond_7

    .line 276
    invoke-direct {v0, v2}, Lorg/catrobat/paintroid/MainActivity;->handleIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    iget-object v4, v0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v4, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v4}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    .line 279
    :cond_2
    iget-object v4, v0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-nez v4, :cond_3

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/4 v9, 0x0

    move-object v10, v9

    check-cast v10, Landroid/net/Uri;

    invoke-interface {v4, v10}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 280
    iget-object v4, v0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-nez v4, :cond_4

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v4, v10}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setCameraImageUri(Landroid/net/Uri;)V

    .line 281
    iget-object v4, v0, Lorg/catrobat/paintroid/MainActivity;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    if-nez v4, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/Workspace;->resetPerspective()V

    .line 282
    iget-object v4, v0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v4, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v4, v9, v9}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->initializeFromCleanState(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :cond_7
    if-nez v1, :cond_f

    .line 285
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 286
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "org.catrobat.extra.PAINTROID_PICTURE_PATH"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 287
    .local v9, "picturePath":Ljava/lang/String;
    const-string v10, "org.catrobat.extra.PAINTROID_PICTURE_NAME"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, "pictureName":Ljava/lang/String;
    iget-object v11, v0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v11, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-interface {v11, v9, v10}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->initializeFromCleanState(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v11, v0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-nez v11, :cond_9

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-interface {v11}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v11

    if-nez v11, :cond_11

    iget-object v11, v0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v11, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-interface {v11}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->checkForTemporaryFile()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-direct/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->isRunningEspressoTests()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-boolean v11, v0, Lorg/catrobat/paintroid/MainActivity;->isTemporaryFileSavingTest:Z

    if-eqz v11, :cond_11

    .line 291
    :cond_b
    iget-object v11, v0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v11, :cond_c

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object v12, v0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v12, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    iget-object v13, v0, Lorg/catrobat/paintroid/MainActivity;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    if-nez v13, :cond_e

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-interface {v12, v13}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->openTemporaryFile(Lorg/catrobat/paintroid/tools/Workspace;)Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v5

    invoke-interface {v11, v5}, Lorg/catrobat/paintroid/command/CommandManager;->loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v9    # "picturePath":Ljava/lang/String;
    .end local v10    # "pictureName":Ljava/lang/String;
    goto :goto_0

    .line 295
    :cond_f
    const-string v4, "isFullscreen"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 296
    .local v4, "isFullscreen":Z
    const-string v5, "isSaved"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 297
    .local v5, "isSaved":Z
    nop

    .line 298
    const-string v9, "isOpenedFromCatroid"

    invoke-virtual {v1, v9, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 297
    nop

    .line 299
    .local v12, "isOpenedFromCatroid":Z
    nop

    .line 300
    nop

    .line 299
    const-string v9, "isOpenedFromFormulaEditorInCatroid"

    invoke-virtual {v1, v9, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 302
    .local v16, "isOpenedFromFormulaEditorInCatroid":Z
    const-string v9, "savedPictureUri"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Landroid/net/Uri;

    .line 303
    .local v17, "savedPictureUri":Landroid/net/Uri;
    const-string v9, "cameraImageUri"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Landroid/net/Uri;

    .line 304
    .local v18, "cameraImageUri":Landroid/net/Uri;
    iget-object v9, v0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v9, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 305
    :cond_10
    nop

    .line 306
    nop

    .line 304
    move v10, v4

    move v11, v5

    move/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    invoke-interface/range {v9 .. v15}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->restoreState(ZZZZLandroid/net/Uri;Landroid/net/Uri;)V

    .line 309
    .end local v4    # "isFullscreen":Z
    .end local v5    # "isSaved":Z
    .end local v12    # "isOpenedFromCatroid":Z
    .end local v16    # "isOpenedFromFormulaEditorInCatroid":Z
    .end local v17    # "savedPictureUri":Landroid/net/Uri;
    .end local v18    # "cameraImageUri":Landroid/net/Uri;
    :cond_11
    :goto_0
    nop

    .line 311
    iget-object v4, v0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v4, :cond_12

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    move-object v5, v0

    check-cast v5, Lorg/catrobat/paintroid/command/CommandManager$CommandListener;

    invoke-interface {v4, v5}, Lorg/catrobat/paintroid/command/CommandManager;->addCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/catrobat/paintroid/MainActivity;->lastInteractionTime:J

    .line 313
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->isRunningEspressoTests()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-boolean v4, v0, Lorg/catrobat/paintroid/MainActivity;->isTemporaryFileSavingTest:Z

    if-eqz v4, :cond_15

    :cond_13
    iget-object v4, v0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-nez v4, :cond_14

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v4

    if-nez v4, :cond_15

    .line 314
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->startAutoSaveCoroutine()V

    .line 316
    :cond_15
    iget-object v4, v0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v4, :cond_16

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->finishInitialize()V

    .line 318
    nop

    .line 319
    const-string v4, "preferences"

    invoke-virtual {v0, v4, v6}, Lorg/catrobat/paintroid/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 321
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const/4 v5, 0x1

    const-string v7, "firstLaunchAfterInstall"

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 322
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 323
    iget-object v5, v0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v5, :cond_17

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_17
    invoke-interface {v5}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showHelpClicked()V

    .line 326
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_18
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$menu;->menu_pocketpaint_more_options:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 330
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_0

    const-string v1, "presenterMain"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->removeMoreOptionsItems(Landroid/view/Menu;)V

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .line 560
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    const-string v1, "commandManager"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v2, p0

    check-cast v2, Lorg/catrobat/paintroid/command/CommandManager$CommandListener;

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/command/CommandManager;->removeCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V

    .line 561
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 562
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->shutdown()V

    .line 563
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    const-string v1, "appFragment"

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-virtual {v0, v3}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setCurrentTool(Lorg/catrobat/paintroid/tools/ToolReference;)V

    .line 564
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/command/CommandManager;

    invoke-virtual {v0, v3}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setCommandManager(Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 565
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v2, Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setLayerModel(Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 567
    :cond_5
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 568
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 336
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_export:I

    const/4 v2, 0x1

    const-string v3, "presenterMain"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->saveCopyClicked(Z)V

    goto/16 :goto_0

    .line 337
    :cond_1
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_save_image:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->saveImageClicked()V

    goto/16 :goto_0

    .line 338
    :cond_3
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_save_duplicate:I

    const/4 v4, 0x0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0, v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->saveCopyClicked(Z)V

    goto/16 :goto_0

    .line 339
    :cond_5
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_open_image:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->loadImageClicked()V

    goto/16 :goto_0

    .line 340
    :cond_7
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_new_image:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->newImageClicked()V

    goto/16 :goto_0

    .line 341
    :cond_9
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_discard_image:I

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->discardImageClicked()V

    goto/16 :goto_0

    .line 342
    :cond_b
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_fullscreen_mode:I

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->enterFullscreenClicked()V

    goto/16 :goto_0

    .line 343
    :cond_d
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_rate_us:I

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->rateUsClicked()V

    goto :goto_0

    .line 344
    :cond_f
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_help:I

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showHelpClicked()V

    goto :goto_0

    .line 345
    :cond_11
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_about:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_12

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showAboutClicked()V

    goto :goto_0

    .line 346
    :cond_13
    const v1, 0x102002c

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_14

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->backToPocketCodeClicked()V

    goto :goto_0

    .line 347
    :cond_15
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_share_image_button:I

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_16

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->shareImageClicked()V

    goto :goto_0

    .line 348
    :cond_17
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_feedback:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_18

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_18
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->sendFeedback()V

    goto :goto_0

    .line 349
    :cond_19
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_advanced_settings:I

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_1a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showAdvancedSettingsClicked()V

    .line 351
    :goto_0
    nop

    .line 352
    return v2

    .line 350
    :cond_1b
    return v4
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 608
    new-instance v0, Lorg/catrobat/paintroid/MainActivity$onRequestPermissionsResult$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/catrobat/paintroid/MainActivity$onRequestPermissionsResult$1;-><init>(Lorg/catrobat/paintroid/MainActivity;I[Ljava/lang/String;[I)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->deferredRequestPermissionsResult:Ljava/lang/Runnable;

    goto :goto_0

    .line 616
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_1

    const-string v1, "presenterMain"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, p1, p2, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 617
    :goto_0
    nop

    .line 618
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 190
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 191
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->deferredRequestPermissionsResult:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .local v0, "result":Ljava/lang/Runnable;
    const/4 v1, 0x0

    .line 192
    .local v1, "$i$a$-let-MainActivity$onResume$1":I
    move-object v2, v0

    .line 193
    .local v2, "runnable":Ljava/lang/Runnable;
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Runnable;

    iput-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->deferredRequestPermissionsResult:Ljava/lang/Runnable;

    .line 194
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 195
    .end local v2    # "runnable":Ljava/lang/Runnable;
    nop

    .line 191
    .end local v0    # "result":Ljava/lang/Runnable;
    .end local v1    # "$i$a$-let-MainActivity$onResume$1":I
    nop

    .line 196
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 572
    move-object v0, p1

    .local v0, "$this$with":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 573
    .local v1, "$i$a$-with-MainActivity$onSaveInstanceState$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    const-string v3, "model"

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isFullscreen()Z

    move-result v2

    const-string v4, "isFullscreen"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 574
    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isSaved()Z

    move-result v2

    const-string v4, "isSaved"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v2

    const-string v4, "isOpenedFromCatroid"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 576
    nop

    .line 577
    nop

    .line 578
    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromFormulaEditorInCatroid()Z

    move-result v2

    .line 576
    const-string v4, "isOpenedFromFormulaEditorInCatroid"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 580
    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-nez v2, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->getSavedPictureUri()Landroid/net/Uri;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const-string v4, "savedPictureUri"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 581
    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-nez v2, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->getCameraImageUri()Landroid/net/Uri;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "cameraImageUri"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 582
    nop

    .line 572
    .end local v0    # "$this$with":Landroid/os/Bundle;
    .end local v1    # "$i$a$-with-MainActivity$onSaveInstanceState$1":I
    nop

    .line 583
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 663
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserInteraction()V

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/paintroid/MainActivity;->lastInteractionTime:J

    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/MainActivity;->userInteraction:Z

    .line 666
    return-void
.end method

.method public refreshDrawingSurface()V
    .locals 2

    .line 629
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    if-nez v0, :cond_0

    const-string v1, "drawingSurface"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    .line 630
    return-void
.end method

.method public final setCommandManager(Lorg/catrobat/paintroid/command/CommandManager;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/command/CommandManager;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    return-void
.end method

.method public final setLayerModel(Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    return-void
.end method

.method public final setModel(Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    return-void
.end method

.method public final setPerspective(Lorg/catrobat/paintroid/ui/Perspective;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/ui/Perspective;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    return-void
.end method

.method public final setToolOptionsViewController(Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    return-void
.end method

.method public final setToolPaint(Lorg/catrobat/paintroid/tools/ToolPaint;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/ToolPaint;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    return-void
.end method

.method public final setToolReference(Lorg/catrobat/paintroid/tools/ToolReference;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/ToolReference;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    return-void
.end method

.method public final setWorkspace(Lorg/catrobat/paintroid/tools/Workspace;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/Workspace;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    return-void
.end method

.method public showContentLoadingProgressBar()V
    .locals 2

    .line 655
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->progressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressBar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->show()V

    .line 656
    return-void
.end method

.method public superHandleActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 599
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 600
    return-void
.end method

.method public superHandleRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 626
    return-void
.end method
