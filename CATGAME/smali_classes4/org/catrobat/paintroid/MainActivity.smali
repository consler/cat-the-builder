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
    d1 = {
        "\u0000\u00c6\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u00ce\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u00ce\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0087\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u0089\u0001\u001a\u00020KH\u0002J\n\u0010\u008a\u0001\u001a\u00030\u0088\u0001H\u0016J\n\u0010\u008b\u0001\u001a\u00030\u0088\u0001H\u0016J\n\u0010\u008c\u0001\u001a\u00030\u0088\u0001H\u0016J\n\u0010\u008d\u0001\u001a\u00030\u0088\u0001H\u0002J\u0014\u0010\u008e\u0001\u001a\u00030\u008f\u00012\u0008\u0010\u0090\u0001\u001a\u00030\u0091\u0001H\u0016J\u0008\u0010\u0092\u0001\u001a\u00030\u0093\u0001J\u0013\u0010\u0094\u0001\u001a\u00020(2\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0002J\n\u0010\u0097\u0001\u001a\u00030\u0088\u0001H\u0016J\n\u0010\u0098\u0001\u001a\u00030\u0088\u0001H\u0016J\u0013\u0010\u0099\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u009a\u0001\u001a\u00020(H\u0016J(\u0010\u009b\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u009c\u0001\u001a\u00020K2\u0007\u0010\u009d\u0001\u001a\u00020K2\n\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u0096\u0001H\u0016J\n\u0010\u009f\u0001\u001a\u00030\u0088\u0001H\u0016J\u0016\u0010\u00a0\u0001\u001a\u00030\u0088\u00012\n\u0010\u00a1\u0001\u001a\u0005\u0018\u00010\u00a2\u0001H\u0016J\n\u0010\u00a3\u0001\u001a\u00030\u0088\u0001H\u0002J\n\u0010\u00a4\u0001\u001a\u00030\u0088\u0001H\u0002J\n\u0010\u00a5\u0001\u001a\u00030\u0088\u0001H\u0002J\n\u0010\u00a6\u0001\u001a\u00030\u0088\u0001H\u0002J\u0013\u0010\u00a7\u0001\u001a\u00020(2\u0008\u0010\u00a8\u0001\u001a\u00030\u00a9\u0001H\u0016J\n\u0010\u00aa\u0001\u001a\u00030\u0088\u0001H\u0014J\u0013\u0010\u00ab\u0001\u001a\u00020(2\u0008\u0010\u00ac\u0001\u001a\u00030\u00ad\u0001H\u0016J4\u0010\u00ae\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u009c\u0001\u001a\u00020K2\u000f\u0010\u00af\u0001\u001a\n\u0012\u0005\u0012\u00030\u0093\u00010\u00b0\u00012\u0008\u0010\u00b1\u0001\u001a\u00030\u00b2\u0001H\u0016\u00a2\u0006\u0003\u0010\u00b3\u0001J\n\u0010\u00b4\u0001\u001a\u00030\u0088\u0001H\u0014J\u0014\u0010\u00b5\u0001\u001a\u00030\u0088\u00012\u0008\u0010\u00b6\u0001\u001a\u00030\u00a2\u0001H\u0014J\n\u0010\u00b7\u0001\u001a\u00030\u0088\u0001H\u0016J\u0013\u0010\u00b8\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u00b9\u0001\u001a\u00020(H\u0016J\n\u0010\u00ba\u0001\u001a\u00030\u0088\u0001H\u0016J\u001e\u0010\u00bb\u0001\u001a\u00030\u0088\u00012\u0008\u0010\u00bc\u0001\u001a\u00030\u00bd\u00012\u0008\u0010\u00be\u0001\u001a\u00030\u00bf\u0001H\u0002J\u0014\u0010\u00c0\u0001\u001a\u00030\u0088\u00012\u0008\u0010\u00c1\u0001\u001a\u00030\u00c2\u0001H\u0002J\u0013\u0010\u00c3\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u00c1\u0001\u001a\u00020\u0008H\u0002J\u0014\u0010\u00c4\u0001\u001a\u00030\u0088\u00012\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u0001H\u0002J\n\u0010\u00c7\u0001\u001a\u00030\u0088\u0001H\u0002J\u0014\u0010\u00c8\u0001\u001a\u00030\u0088\u00012\u0008\u0010\u00bc\u0001\u001a\u00030\u00bd\u0001H\u0002J\n\u0010\u00c9\u0001\u001a\u00030\u0088\u0001H\u0016J\n\u0010\u00ca\u0001\u001a\u00030\u0088\u0001H\u0002J(\u0010\u00cb\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u009c\u0001\u001a\u00020K2\u0007\u0010\u009d\u0001\u001a\u00020K2\n\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u0096\u0001H\u0016J4\u0010\u00cc\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u009c\u0001\u001a\u00020K2\u000f\u0010\u00af\u0001\u001a\n\u0012\u0005\u0012\u00030\u0093\u00010\u00b0\u00012\u0008\u0010\u00b1\u0001\u001a\u00030\u00b2\u0001H\u0016\u00a2\u0006\u0003\u0010\u00b3\u0001J\u0013\u0010\u00cd\u0001\u001a\u00020(2\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u00020(8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u0014\u00101\u001a\u00020(8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010*R\u001b\u00102\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00082\u0010*R\u000e\u00105\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000209X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010:\u001a\u00020;8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008<\u0010\u0004\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R$\u0010A\u001a\u00020B8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008C\u0010\u0004\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u000e\u0010H\u001a\u00020IX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020KX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010L\u001a\u00020MX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u0014\u0010R\u001a\u00020S8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010UR$\u0010V\u001a\u00020W8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008X\u0010\u0004\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\u0014\u0010]\u001a\u00020^8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010`R\u000e\u0010a\u001a\u00020^X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010b\u001a\u00020cX\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010d\u001a\u00020e8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008f\u0010\u0004\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR\u001a\u0010k\u001a\u00020lX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR$\u0010q\u001a\u00020r8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008s\u0010\u0004\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\u000e\u0010x\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010y\u001a\u00020z8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008{\u0010\u0004\u001a\u0004\u0008|\u0010}\"\u0004\u0008~\u0010\u007fR+\u0010\u0080\u0001\u001a\u00030\u0081\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0019\n\u0000\u0012\u0005\u0008\u0082\u0001\u0010\u0004\u001a\u0006\u0008\u0083\u0001\u0010\u0084\u0001\"\u0006\u0008\u0085\u0001\u0010\u0086\u0001\u00a8\u0006\u00cf\u0001"
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
        "getBottomNavigationViewHolder",
        "()Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;",
        "setBottomNavigationViewHolder",
        "(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V",
        "commandFactory",
        "Lorg/catrobat/paintroid/command/CommandFactory;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "getCommandManager",
        "()Lorg/catrobat/paintroid/command/CommandManager;",
        "setCommandManager",
        "(Lorg/catrobat/paintroid/command/CommandManager;)V",
        "commandSerializer",
        "Lorg/catrobat/paintroid/command/serialization/CommandSerializer;",
        "defaultToolController",
        "Lorg/catrobat/paintroid/controller/DefaultToolController;",
        "getDefaultToolController",
        "()Lorg/catrobat/paintroid/controller/DefaultToolController;",
        "setDefaultToolController",
        "(Lorg/catrobat/paintroid/controller/DefaultToolController;)V",
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
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "getIdlingResource",
        "()Landroidx/test/espresso/idling/CountingIdlingResource;",
        "setIdlingResource",
        "(Landroidx/test/espresso/idling/CountingIdlingResource;)V",
        "isKeyboardShown",
        "isRunningEspressoTests",
        "isRunningEspressoTests$delegate",
        "Lkotlin/Lazy;",
        "isTemporaryFileSavingTest",
        "keyboardListener",
        "Lorg/catrobat/paintroid/ui/KeyboardListener;",
        "lastInteractionTime",
        "",
        "layerAdapter",
        "Lorg/catrobat/paintroid/ui/LayerAdapter;",
        "getLayerAdapter$annotations",
        "getLayerAdapter",
        "()Lorg/catrobat/paintroid/ui/LayerAdapter;",
        "setLayerAdapter",
        "(Lorg/catrobat/paintroid/ui/LayerAdapter;)V",
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
        "zoomWindowController",
        "Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;",
        "getZoomWindowController$annotations",
        "getZoomWindowController",
        "()Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;",
        "setZoomWindowController",
        "(Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;)V",
        "addToMinuteTemporaryCopiesCounter",
        "",
        "seconds",
        "commandPostExecute",
        "enterHideButtons",
        "exitHideButtons",
        "getAppFragment",
        "getUriFromFile",
        "Landroid/net/Uri;",
        "file",
        "Ljava/io/File;",
        "getVersionCode",
        "",
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
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "onUserInteraction",
        "onWindowFocusChanged",
        "hasFocus",
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
        "setLayoutDirection",
        "setTopBarListeners",
        "showContentLoadingProgressBar",
        "startAutoSaveCoroutine",
        "superHandleActivityResult",
        "superHandleRequestPermissionsResult",
        "validateIntent",
        "Companion",
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

.field public bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

.field private commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

.field public commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field private commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

.field public defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

.field private deferredRequestPermissionsResult:Ljava/lang/Runnable;

.field private drawerLayoutViewHolder:Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;

.field private drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

.field private idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

.field private final isRunningEspressoTests$delegate:Lkotlin/Lazy;

.field private isTemporaryFileSavingTest:Z

.field private keyboardListener:Lorg/catrobat/paintroid/ui/KeyboardListener;

.field private volatile lastInteractionTime:J

.field public layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

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

.field public zoomWindowController:Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;


# direct methods
.method public static synthetic $r8$lambda$4QlcvTYnilzwE8D_qrM8-c_95QA(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/MainActivity;->setLayerMenuListeners$lambda-7(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8AmxsJBkp3S1Pw_6CQU_fGKRZlY(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/MainActivity;->setTopBarListeners$lambda-9(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8fxkVXHtUjXq-DGb05-i-2wy7mw(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/MainActivity;->setTopBarListeners$lambda-11(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9J4n1p0Wl4n7TyVCDnI9vCqwkfs(Lorg/catrobat/paintroid/MainActivity;I[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/catrobat/paintroid/MainActivity;->onRequestPermissionsResult$lambda-17(Lorg/catrobat/paintroid/MainActivity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$F6vrtkpTblf-RFDbWKc1iDpvXQ4(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/MainActivity;->setTopBarListeners$lambda-12(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JsAQnKeGbd_ddIdwCJcRLtNTDwU(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/tools/ToolType;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/MainActivity;->setBottomBarListeners$lambda-13(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/tools/ToolType;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cc4SKJxi5nlnfhdwO1asF_Hb02Q(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/MainActivity;->setTopBarListeners$lambda-10(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kbGAeA-SIqlyAPI0k5xbxkEZ24k(Lorg/catrobat/paintroid/MainActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/MainActivity;->setBottomNavigationListeners$lambda-14(Lorg/catrobat/paintroid/MainActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lj84RZd2tKw3DzpetPGLToup_dI(Lorg/catrobat/paintroid/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/catrobat/paintroid/MainActivity;->onCreateMainView$lambda-6(Lorg/catrobat/paintroid/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oqpF-wC5bJ1nfCfbB572QqTAGI0(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/MainActivity;->setLayerMenuListeners$lambda-8(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V

    return-void
.end method

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

    .line 117
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 136
    new-instance v0, Landroidx/test/espresso/idling/CountingIdlingResource;

    const-string v1, "MainIdleResource"

    invoke-direct {v0, v1}, Landroidx/test/espresso/idling/CountingIdlingResource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/paintroid/MainActivity;->lastInteractionTime:J

    .line 168
    sget-object v0, Lorg/catrobat/paintroid/MainActivity$isRunningEspressoTests$2;->INSTANCE:Lorg/catrobat/paintroid/MainActivity$isRunningEspressoTests$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->isRunningEspressoTests$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$addToMinuteTemporaryCopiesCounter(Lorg/catrobat/paintroid/MainActivity;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/MainActivity;->addToMinuteTemporaryCopiesCounter(I)V

    return-void
.end method

.method public static final synthetic access$getLastInteractionTime$p(Lorg/catrobat/paintroid/MainActivity;)J
    .locals 2

    .line 117
    iget-wide v0, p0, Lorg/catrobat/paintroid/MainActivity;->lastInteractionTime:J

    return-wide v0
.end method

.method public static final synthetic access$getMinuteTemporaryCopiesCounter$p(Lorg/catrobat/paintroid/MainActivity;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/catrobat/paintroid/MainActivity;->minuteTemporaryCopiesCounter:I

    return p0
.end method

.method public static final synthetic access$getPresenterMain$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    return-object p0
.end method

.method public static final synthetic access$getUserInteraction$p(Lorg/catrobat/paintroid/MainActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lorg/catrobat/paintroid/MainActivity;->userInteraction:Z

    return p0
.end method

.method public static final synthetic access$setMinuteTemporaryCopiesCounter$p(Lorg/catrobat/paintroid/MainActivity;I)V
    .locals 0

    .line 117
    iput p1, p0, Lorg/catrobat/paintroid/MainActivity;->minuteTemporaryCopiesCounter:I

    return-void
.end method

.method public static final synthetic access$setUserInteraction$p(Lorg/catrobat/paintroid/MainActivity;Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/catrobat/paintroid/MainActivity;->userInteraction:Z

    return-void
.end method

.method private final declared-synchronized addToMinuteTemporaryCopiesCounter(I)V
    .locals 1

    monitor-enter p0

    .line 770
    :try_start_0
    iget v0, p0, Lorg/catrobat/paintroid/MainActivity;->minuteTemporaryCopiesCounter:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/catrobat/paintroid/MainActivity;->minuteTemporaryCopiesCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final getAppFragment()V
    .locals 3

    .line 409
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "customActivityState"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    check-cast v0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    iput-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    .line 412
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_2

    .line 413
    new-instance v0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    invoke-direct {v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    .line 414
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v2, :cond_1

    const-string v2, "appFragment"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method public static synthetic getLayerAdapter$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLayerModel$annotations()V
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

.method public static synthetic getToolReference$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getWorkspace$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getZoomWindowController$annotations()V
    .locals 0

    return-void
.end method

.method private final handleIntent(Landroid/content/Intent;)Z
    .locals 7

    const-string v0, "android.intent.extra.STREAM"

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :cond_0
    const/4 p1, 0x0

    if-nez v0, :cond_1

    move-object v1, p1

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "content"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getMyContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    move-object v1, p1

    goto :goto_1

    .line 225
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    const-string v3, "fileExtension"

    .line 227
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "US"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v2, 0x1

    if-nez v0, :cond_4

    return v2

    :cond_4
    :try_start_0
    const-string v3, "application/zip"

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 232
    invoke-static {v1, v3, v5, v4, p1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "commandFactory"

    if-nez v3, :cond_8

    :try_start_1
    const-string v3, "application/octet-stream"

    invoke-static {v1, v3, v5, v4, p1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 259
    :cond_5
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    const-string v1, "image"

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getMyContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, v3}, Lorg/catrobat/paintroid/FileIO;->getBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    goto/16 :goto_7

    .line 262
    :cond_6
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v1

    .line 263
    iget-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    if-nez v3, :cond_7

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object p1, v3

    :goto_3
    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(Landroid/graphics/Bitmap;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 262
    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    .line 234
    :cond_8
    :goto_4
    :try_start_2
    iget-object v1, p0, Lorg/catrobat/paintroid/MainActivity;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    if-nez v1, :cond_9

    const-string v1, "commandSerializer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p1

    :cond_9
    invoke-virtual {v1, v0}, Lorg/catrobat/paintroid/command/serialization/CommandSerializer;->readFromFile(Landroid/net/Uri;)Lorg/catrobat/paintroid/command/serialization/CatrobatFileContent;

    move-result-object v1

    .line 235
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v3

    invoke-virtual {v1}, Lorg/catrobat/paintroid/command/serialization/CatrobatFileContent;->getCommandModel()Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/catrobat/paintroid/command/CommandManager;->loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V

    .line 236
    iget-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v3, :cond_a

    const-string v3, "presenterMain"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, p1

    :cond_a
    invoke-virtual {v1}, Lorg/catrobat/paintroid/command/serialization/CatrobatFileContent;->getColorHistory()Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->setColorHistoryAfterLoadImage(Lorg/catrobat/paintroid/colorpicker/ColorHistory;)V
    :try_end_2
    .catch Lorg/catrobat/paintroid/command/serialization/CommandSerializer$NotCatrobatImageException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v5

    :catch_0
    :try_start_3
    const-string v1, "MainActivity"

    const-string v3, "Image might be an ora file instead"

    .line 239
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v1, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->Companion:Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;

    invoke-virtual {v1, p0}, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;->setMainActivity(Lorg/catrobat/paintroid/MainActivity;)V

    .line 241
    sget-object v1, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->Companion:Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;

    .line 242
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getMyContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 241
    invoke-virtual {v1, v3, v0}, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;->importOraFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->layerList:Ljava/util/List;

    if-nez v0, :cond_b

    goto :goto_5

    .line 245
    :cond_b
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v1

    .line 246
    iget-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    if-nez v3, :cond_c

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, p1

    :cond_c
    invoke-interface {v3, v0}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(Ljava/util/List;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 245
    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 251
    :goto_5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 252
    new-instance v1, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 253
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/paintroid/MainActivity;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    if-nez v4, :cond_d

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    move-object p1, v4

    :goto_6
    invoke-interface {p1, v0, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPointCommand(Landroid/graphics/Paint;Landroid/graphics/PointF;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    invoke-interface {v3, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 255
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 256
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    const-string p1, "Can not read"

    const-string v0, "Unable to retrieve Bitmap from Uri"

    .line 270
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return v2
.end method

.method private final isRunningEspressoTests()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->isRunningEspressoTests$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final onCreateDrawingSurface()V
    .locals 14

    .line 562
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_drawing_surface_view:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.pocket\u2026int_drawing_surface_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/catrobat/paintroid/ui/DrawingSurface;

    iput-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    const-string v1, "drawingSurface"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 563
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 564
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v4

    .line 565
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v5

    .line 566
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v6

    .line 567
    iget-object v7, p0, Lorg/catrobat/paintroid/MainActivity;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    .line 568
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v8

    const-string v0, "supportFragmentManager"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getToolOptionsViewController()Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    move-result-object v9

    .line 570
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;

    if-nez v0, :cond_1

    const-string v0, "drawerLayoutViewHolder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v10, v0

    .line 571
    :goto_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getZoomWindowController()Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;

    .line 572
    new-instance v12, Lorg/catrobat/paintroid/UserPreferences;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v13, "getPreferences(MODE_PRIVATE)"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v0}, Lorg/catrobat/paintroid/UserPreferences;-><init>(Landroid/content/SharedPreferences;)V

    .line 563
    invoke-virtual/range {v3 .. v12}, Lorg/catrobat/paintroid/ui/DrawingSurface;->setArguments(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/tools/ToolReference;Landroidx/test/espresso/idling/CountingIdlingResource;Landroidx/fragment/app/FragmentManager;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;Lorg/catrobat/paintroid/UserPreferences;)V

    .line 574
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    const-string v3, "layerPresenter"

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v4, p0, Lorg/catrobat/paintroid/MainActivity;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    if-nez v4, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_3
    invoke-virtual {v0, v4}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->setDrawingSurface(Lorg/catrobat/paintroid/ui/DrawingSurface;)V

    .line 575
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_4

    const-string v0, "appFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setPerspective(Lorg/catrobat/paintroid/ui/Perspective;)V

    .line 576
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getDefaultToolController()Lorg/catrobat/paintroid/controller/DefaultToolController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->setDefaultToolController(Lorg/catrobat/paintroid/controller/DefaultToolController;)V

    .line 577
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v2, v0

    :goto_2
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getBottomNavigationViewHolder()Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->setBottomNavigationViewHolder(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V

    return-void
.end method

.method private final onCreateGlobals()V
    .locals 6

    .line 419
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    const-string v1, "appFragment"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/catrobat/paintroid/model/LayerModel;

    invoke-direct {v0}, Lorg/catrobat/paintroid/model/LayerModel;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 420
    :cond_1
    iget-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-virtual {v3, v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setLayerModel(Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 421
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->setLayerModel(Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 423
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/command/CommandFactory;

    iput-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 425
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v0

    if-nez v0, :cond_6

    .line 427
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 429
    new-instance v3, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;

    new-instance v4, Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-direct {v4}, Lorg/catrobat/paintroid/common/CommonFactory;-><init>()V

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;-><init>(Lorg/catrobat/paintroid/common/CommonFactory;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    check-cast v3, Lorg/catrobat/paintroid/command/CommandManager;

    .line 430
    new-instance v4, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;-><init>(Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    check-cast v4, Lorg/catrobat/paintroid/command/CommandManager;

    invoke-virtual {p0, v4}, Lorg/catrobat/paintroid/MainActivity;->setCommandManager(Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 432
    iget-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    if-nez v3, :cond_4

    const-string v3, "commandFactory"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-interface {v3, v4, v0}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(II)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 434
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    .line 435
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setCommandManager(Lorg/catrobat/paintroid/command/CommandManager;)V

    goto :goto_0

    .line 437
    :cond_6
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->setCommandManager(Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 440
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-virtual {v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->getToolPaint()Lorg/catrobat/paintroid/tools/ToolPaint;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;-><init>(Landroid/content/Context;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/ToolPaint;

    .line 441
    :cond_8
    iget-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v3, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    invoke-virtual {v3, v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setToolPaint(Lorg/catrobat/paintroid/tools/ToolPaint;)V

    .line 442
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->setToolPaint(Lorg/catrobat/paintroid/tools/ToolPaint;)V

    .line 444
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    invoke-virtual {v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->getCurrentTool()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolReference;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolReference;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/tools/ToolReference;

    .line 445
    :cond_b
    iget-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v3, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    move-object v2, v3

    :goto_1
    invoke-virtual {v2, v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setCurrentTool(Lorg/catrobat/paintroid/tools/ToolReference;)V

    .line 446
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->setToolReference(Lorg/catrobat/paintroid/tools/ToolReference;)V

    return-void
.end method

.method private final onCreateLayerMenu()V
    .locals 13

    .line 523
    invoke-direct {p0}, Lorg/catrobat/paintroid/MainActivity;->setLayoutDirection()V

    .line 524
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_nav_view_layer:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 525
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_drawer_layout:I

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 526
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_layer_side_nav_list:I

    invoke-virtual {p0, v2}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;

    .line 527
    new-instance v3, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;

    const-string v4, "layerLayout"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    .line 528
    new-instance v0, Lorg/catrobat/paintroid/ui/LayerNavigator;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "applicationContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lorg/catrobat/paintroid/ui/LayerNavigator;-><init>(Landroid/content/Context;)V

    .line 529
    new-instance v4, Lorg/catrobat/paintroid/presenter/LayerPresenter;

    .line 530
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v7

    const-string v5, "layerListView"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v2

    check-cast v8, Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

    move-object v9, v3

    check-cast v9, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    .line 531
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v10

    new-instance v5, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;

    invoke-direct {v5}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;-><init>()V

    move-object v11, v5

    check-cast v11, Lorg/catrobat/paintroid/command/CommandFactory;

    move-object v12, v0

    check-cast v12, Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;

    move-object v6, v4

    .line 529
    invoke-direct/range {v6 .. v12}, Lorg/catrobat/paintroid/presenter/LayerPresenter;-><init>(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/command/CommandFactory;Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;)V

    iput-object v4, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    .line 533
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 534
    move-object v4, v0

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v4}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 535
    invoke-virtual {v2, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setManager$Paintroid_signedRelease(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 536
    new-instance v0, Lorg/catrobat/paintroid/ui/LayerAdapter;

    iget-object v4, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    const-string v5, "layerPresenter"

    const/4 v6, 0x0

    if-nez v4, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v6

    :cond_0
    check-cast v4, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-direct {v0, v4, p0}, Lorg/catrobat/paintroid/ui/LayerAdapter;-><init>(Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;Lorg/catrobat/paintroid/MainActivity;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->setLayerAdapter(Lorg/catrobat/paintroid/ui/LayerAdapter;)V

    .line 537
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerAdapter()Lorg/catrobat/paintroid/ui/LayerAdapter;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setLayerAdapter(Lorg/catrobat/paintroid/ui/LayerAdapter;)V

    .line 538
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_1

    const-string v0, "presenterMain"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerAdapter()Lorg/catrobat/paintroid/ui/LayerAdapter;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->setLayerAdapter(Lorg/catrobat/paintroid/ui/LayerAdapter;)V

    .line 539
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v0, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerAdapter()Lorg/catrobat/paintroid/ui/LayerAdapter;

    move-result-object v4

    check-cast v4, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    invoke-virtual {v0, v4}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->setAdapter(Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;)V

    .line 540
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v0, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_3
    check-cast v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    invoke-virtual {v2, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setPresenter(Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;)V

    .line 541
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerAdapter()Lorg/catrobat/paintroid/ui/LayerAdapter;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 542
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v0, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_4
    invoke-virtual {v0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->refreshLayerMenuViewHolder()V

    .line 543
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v0, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_5
    invoke-virtual {v0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->disableVisibilityAndOpacityButtons()V

    .line 544
    invoke-direct {p0, v3}, Lorg/catrobat/paintroid/MainActivity;->setLayerMenuListeners(Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;)V

    .line 545
    new-instance v0, Lorg/catrobat/paintroid/listener/DrawerLayoutListener;

    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v2, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v6, v2

    :goto_0
    invoke-direct {v0, p0, v6}, Lorg/catrobat/paintroid/listener/DrawerLayoutListener;-><init>(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/presenter/LayerPresenter;)V

    .line 546
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method

.method private final onCreateMainView()V
    .locals 29

    move-object/from16 v6, p0

    .line 450
    move-object v15, v6

    check-cast v15, Landroid/content/Context;

    .line 451
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_drawer_layout:I

    invoke-virtual {v6, v0}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 452
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_layout_top_bar:I

    invoke-virtual {v6, v0}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 453
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_main_bottom_bar:I

    invoke-virtual {v6, v1}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 454
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_main_bottom_navigation:I

    invoke-virtual {v6, v2}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 455
    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;

    move-object v8, v6

    check-cast v8, Landroid/app/Activity;

    iget-object v4, v6, Lorg/catrobat/paintroid/MainActivity;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-direct {v3, v8, v4}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;-><init>(Landroid/app/Activity;Landroidx/test/espresso/idling/CountingIdlingResource;)V

    check-cast v3, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-virtual {v6, v3}, Lorg/catrobat/paintroid/MainActivity;->setToolOptionsViewController(Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;)V

    .line 456
    new-instance v3, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;

    const-string v4, "drawerLayout"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v14}, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    iput-object v3, v6, Lorg/catrobat/paintroid/MainActivity;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;

    .line 457
    new-instance v13, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    const-string v3, "topBarLayout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v13, v0}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 458
    new-instance v12, Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;

    const-string v0, "bottomBarLayout"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v1}, Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;-><init>(Landroid/view/View;)V

    .line 459
    new-instance v0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    const-string v1, "bottomNavigationView"

    .line 460
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 462
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-direct {v0, v2, v1, v3}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;-><init>(Landroid/view/View;ILandroid/content/Context;)V

    invoke-virtual {v6, v0}, Lorg/catrobat/paintroid/MainActivity;->setBottomNavigationViewHolder(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V

    .line 464
    new-instance v0, Lorg/catrobat/paintroid/ui/Perspective;

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v1

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v2

    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/catrobat/paintroid/ui/Perspective;-><init>(II)V

    invoke-virtual {v6, v0}, Lorg/catrobat/paintroid/MainActivity;->setPerspective(Lorg/catrobat/paintroid/ui/Perspective;)V

    .line 465
    new-instance v0, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, v6}, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda4;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    .line 466
    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;

    .line 467
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v2

    .line 468
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v3

    .line 466
    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;-><init>(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;)V

    check-cast v1, Lorg/catrobat/paintroid/tools/Workspace;

    invoke-virtual {v6, v1}, Lorg/catrobat/paintroid/MainActivity;->setWorkspace(Lorg/catrobat/paintroid/tools/Workspace;)V

    .line 471
    new-instance v0, Lorg/catrobat/paintroid/model/MainActivityModel;

    invoke-direct {v0}, Lorg/catrobat/paintroid/model/MainActivityModel;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-virtual {v6, v0}, Lorg/catrobat/paintroid/MainActivity;->setModel(Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;)V

    .line 472
    new-instance v0, Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v2

    invoke-direct {v0, v15, v1, v2}, Lorg/catrobat/paintroid/command/serialization/CommandSerializer;-><init>(Landroid/content/Context;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;)V

    iput-object v0, v6, Lorg/catrobat/paintroid/MainActivity;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    .line 473
    new-instance v7, Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;

    .line 475
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v2

    .line 476
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getWorkspace()Lorg/catrobat/paintroid/tools/Workspace;

    move-result-object v3

    .line 477
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v4

    .line 478
    new-instance v5, Lorg/catrobat/paintroid/UserPreferences;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/catrobat/paintroid/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v10, "getPreferences(MODE_PRIVATE)"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v0}, Lorg/catrobat/paintroid/UserPreferences;-><init>(Landroid/content/SharedPreferences;)V

    move-object v0, v7

    move-object/from16 v1, p0

    .line 473
    invoke-direct/range {v0 .. v5}, Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;-><init>(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/tools/ToolReference;Lorg/catrobat/paintroid/UserPreferences;)V

    invoke-virtual {v6, v7}, Lorg/catrobat/paintroid/MainActivity;->setZoomWindowController(Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;)V

    .line 480
    new-instance v0, Lorg/catrobat/paintroid/controller/DefaultToolController;

    .line 481
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v17

    .line 482
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getToolOptionsViewController()Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    move-result-object v18

    .line 483
    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;

    invoke-direct {v1, v6}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    move-object/from16 v19, v1

    check-cast v19, Lorg/catrobat/paintroid/tools/ToolFactory;

    .line 484
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v20

    .line 485
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getWorkspace()Lorg/catrobat/paintroid/tools/Workspace;

    move-result-object v21

    .line 486
    iget-object v1, v6, Lorg/catrobat/paintroid/MainActivity;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    .line 487
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getToolPaint()Lorg/catrobat/paintroid/tools/ToolPaint;

    move-result-object v23

    .line 488
    new-instance v2, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;

    invoke-direct {v2, v15}, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;-><init>(Landroid/content/Context;)V

    move-object/from16 v24, v2

    check-cast v24, Lorg/catrobat/paintroid/tools/ContextCallback;

    move-object/from16 v16, v0

    move-object/from16 v22, v1

    .line 480
    invoke-direct/range {v16 .. v24}, Lorg/catrobat/paintroid/controller/DefaultToolController;-><init>(Lorg/catrobat/paintroid/tools/ToolReference;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ContextCallback;)V

    invoke-virtual {v6, v0}, Lorg/catrobat/paintroid/MainActivity;->setDefaultToolController(Lorg/catrobat/paintroid/controller/DefaultToolController;)V

    .line 490
    new-instance v0, Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v6, v9}, Lorg/catrobat/paintroid/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/UserPreferences;-><init>(Landroid/content/SharedPreferences;)V

    .line 491
    new-instance v1, Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;-><init>(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/tools/ToolReference;)V

    .line 492
    new-instance v2, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;

    .line 494
    move-object v9, v6

    check-cast v9, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    .line 495
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v10

    .line 496
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getWorkspace()Lorg/catrobat/paintroid/tools/Workspace;

    move-result-object v11

    .line 497
    new-instance v3, Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;-><init>(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/tools/ToolReference;)V

    check-cast v3, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 498
    new-instance v4, Lorg/catrobat/paintroid/ui/MainActivityInteractor;

    iget-object v5, v6, Lorg/catrobat/paintroid/MainActivity;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-direct {v4, v5}, Lorg/catrobat/paintroid/ui/MainActivityInteractor;-><init>(Landroidx/test/espresso/idling/CountingIdlingResource;)V

    check-cast v4, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 499
    move-object v5, v13

    check-cast v5, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    .line 500
    move-object/from16 v16, v12

    check-cast v16, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    .line 501
    iget-object v7, v6, Lorg/catrobat/paintroid/MainActivity;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;

    const/16 v26, 0x0

    if-nez v7, :cond_0

    const-string v7, "drawerLayoutViewHolder"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v7, v26

    :cond_0
    move-object/from16 v17, v7

    check-cast v17, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    .line 502
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getBottomNavigationViewHolder()Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    move-result-object v7

    move-object/from16 v18, v7

    check-cast v18, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    .line 503
    new-instance v7, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;

    invoke-direct {v7}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandFactory;-><init>()V

    move-object/from16 v19, v7

    check-cast v19, Lorg/catrobat/paintroid/command/CommandFactory;

    .line 504
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v20

    .line 505
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getDefaultToolController()Lorg/catrobat/paintroid/controller/DefaultToolController;

    move-result-object v7

    move-object/from16 v21, v7

    check-cast v21, Lorg/catrobat/paintroid/controller/ToolController;

    .line 507
    iget-object v7, v6, Lorg/catrobat/paintroid/MainActivity;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    move-object/from16 v27, v1

    .line 509
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    move-object/from16 v22, v7

    const-string v7, "filesDir"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    iget-object v7, v6, Lorg/catrobat/paintroid/MainActivity;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    if-nez v7, :cond_1

    const-string v7, "commandSerializer"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v25, v26

    goto :goto_0

    :cond_1
    move-object/from16 v25, v7

    :goto_0
    move-object v7, v2

    move-object/from16 v28, v12

    move-object v12, v3

    move-object v3, v13

    move-object v13, v4

    move-object v4, v14

    move-object v14, v5

    move-object v5, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v0

    move-object/from16 v23, v5

    move-object/from16 v24, v1

    .line 492
    invoke-direct/range {v7 .. v25}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;-><init>(Landroid/app/Activity;Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;Lorg/catrobat/paintroid/command/CommandFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/controller/ToolController;Lorg/catrobat/paintroid/UserPreferences;Landroidx/test/espresso/idling/CountingIdlingResource;Landroid/content/Context;Ljava/io/File;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;)V

    check-cast v2, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    iput-object v2, v6, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    .line 512
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    move-object/from16 v1, v27

    check-cast v1, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/FileIO;->setNavigator(Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getDefaultToolController()Lorg/catrobat/paintroid/controller/DefaultToolController;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/listener/PresenterColorPickedListener;

    iget-object v2, v6, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v2, :cond_2

    const-string v2, "presenterMain"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v26

    :cond_2
    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/listener/PresenterColorPickedListener;-><init>(Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;)V

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/controller/DefaultToolController;->setOnColorPickedListener(Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V

    .line 514
    new-instance v0, Lorg/catrobat/paintroid/ui/KeyboardListener;

    move-object v14, v4

    check-cast v14, Landroid/view/View;

    invoke-direct {v0, v14}, Lorg/catrobat/paintroid/ui/KeyboardListener;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/catrobat/paintroid/MainActivity;->keyboardListener:Lorg/catrobat/paintroid/ui/KeyboardListener;

    .line 515
    invoke-direct {v6, v3}, Lorg/catrobat/paintroid/MainActivity;->setTopBarListeners(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;)V

    move-object/from16 v0, v28

    .line 516
    invoke-direct {v6, v0}, Lorg/catrobat/paintroid/MainActivity;->setBottomBarListeners(Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/MainActivity;->getBottomNavigationViewHolder()Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/catrobat/paintroid/MainActivity;->setBottomNavigationListeners(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V

    .line 518
    invoke-direct {v6, v3, v5}, Lorg/catrobat/paintroid/MainActivity;->setActionBarToolTips(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;Landroid/content/Context;)V

    .line 519
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_content_loading_progress_bar:I

    invoke-virtual {v6, v0}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.pocket\u2026ent_loading_progress_bar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/core/widget/ContentLoadingProgressBar;

    iput-object v0, v6, Lorg/catrobat/paintroid/MainActivity;->progressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    return-void
.end method

.method private static final onCreateMainView$lambda-6(Lorg/catrobat/paintroid/MainActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    if-nez p0, :cond_0

    const-string p0, "drawingSurface"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    return-void
.end method

.method private static final onRequestPermissionsResult$lambda-17(Lorg/catrobat/paintroid/MainActivity;I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p0, :cond_0

    const-string p0, "presenterMain"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method private final setActionBarToolTips(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;Landroid/content/Context;)V
    .locals 2

    .line 586
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getUndoButton()Landroid/widget/ImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/catrobat/paintroid/R$string;->button_undo:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 587
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getRedoButton()Landroid/widget/ImageButton;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget v0, Lorg/catrobat/paintroid/R$string;->button_redo:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setBottomBarListeners(Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;)V
    .locals 6

    .line 614
    invoke-static {}, Lorg/catrobat/paintroid/tools/ToolType;->values()[Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    .line 615
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 616
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;->getLayout()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/ToolType;->getToolButtonID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    new-instance v5, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3}, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/tools/ToolType;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final setBottomBarListeners$lambda-13(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/tools/ToolType;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$type"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p0, :cond_0

    const-string p0, "presenterMain"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->toolClicked(Lorg/catrobat/paintroid/tools/ToolType;)V

    return-void
.end method

.method private final setBottomNavigationListeners(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V
    .locals 1

    .line 622
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->getBottomNavigationView()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    new-instance v0, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method private static final setBottomNavigationListeners$lambda-14(Lorg/catrobat/paintroid/MainActivity;Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 625
    sget v0, Lorg/catrobat/paintroid/R$id;->action_tools:I

    const/4 v1, 0x0

    const-string v2, "presenterMain"

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->actionToolsClicked()V

    goto :goto_4

    .line 626
    :cond_1
    sget v0, Lorg/catrobat/paintroid/R$id;->action_current_tool:I

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->actionCurrentToolClicked()V

    goto :goto_4

    .line 627
    :cond_3
    sget v0, Lorg/catrobat/paintroid/R$id;->action_color_picker:I

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, p0

    :goto_2
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showColorPickerClicked()V

    goto :goto_4

    .line 628
    :cond_5
    sget v0, Lorg/catrobat/paintroid/R$id;->action_layers:I

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v1, p0

    :goto_3
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showLayerMenuClicked()V

    :goto_4
    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private final setLayerMenuListeners(Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;)V
    .locals 2

    .line 581
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->getLayerAddButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda2;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->getLayerDeleteButton()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda3;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setLayerMenuListeners$lambda-7(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez p0, :cond_0

    const-string p0, "layerPresenter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->addLayer()V

    return-void
.end method

.method private static final setLayerMenuListeners$lambda-8(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez p0, :cond_0

    const-string p0, "layerPresenter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->removeLayer()V

    return-void
.end method

.method private final setLayoutDirection()V
    .locals 4

    .line 550
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_layer_side_nav_button_visibility:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 551
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_nav_view_layer:I

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/navigation/NavigationView;

    .line 552
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 553
    sget v2, Lorg/catrobat/paintroid/R$drawable;->rounded_corner_top_rtl:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 554
    sget v0, Lorg/catrobat/paintroid/R$drawable;->layer_nav_view_background_rtl:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/navigation/NavigationView;->setBackgroundResource(I)V

    goto :goto_0

    .line 556
    :cond_0
    sget v2, Lorg/catrobat/paintroid/R$drawable;->rounded_corner_top_ltr:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 557
    sget v0, Lorg/catrobat/paintroid/R$drawable;->layer_nav_view_background_ltr:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/navigation/NavigationView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private final setTopBarListeners(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;)V
    .locals 2

    .line 591
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getUndoButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda5;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getRedoButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda6;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getCheckmarkButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda7;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/MainActivity$$ExternalSyntheticLambda8;-><init>(Lorg/catrobat/paintroid/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;->setTopBarViewHolder(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;)V

    return-void
.end method

.method private static final setTopBarListeners$lambda-10(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p0, :cond_0

    const-string p0, "presenterMain"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->redoClicked()V

    return-void
.end method

.method private static final setTopBarListeners$lambda-11(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object p1

    :goto_1
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->TRANSFORM:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3, v0}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 595
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->setCheckMarkClicked(Z)V

    .line 596
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object p0

    invoke-interface {p0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p0

    check-cast p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;

    if-nez p0, :cond_2

    goto :goto_4

    .line 597
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->onClickOnButton()V

    goto :goto_4

    .line 595
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.TransformTool"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 598
    :cond_4
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p1

    if-nez p1, :cond_5

    :goto_2
    move-object p1, v0

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object p1

    :goto_3
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->CLIP:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2, v3, v0}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 599
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object p0

    invoke-interface {p0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p0

    check-cast p0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    if-nez p0, :cond_7

    goto :goto_4

    .line 600
    :cond_7
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->onClickOnButton()V

    goto :goto_4

    .line 602
    :cond_8
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object p0

    invoke-interface {p0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p0

    check-cast p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;

    if-nez p0, :cond_9

    goto :goto_4

    .line 603
    :cond_9
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->onClickOnButton()V

    :goto_4
    return-void
.end method

.method private static final setTopBarListeners$lambda-12(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object p0

    invoke-interface {p0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;

    .line 608
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->onClickOnPlus()V

    return-void

    .line 607
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.LineTool"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final setTopBarListeners$lambda-9(Lorg/catrobat/paintroid/MainActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    iget-object p0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p0, :cond_0

    const-string p0, "presenterMain"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->undoClicked()V

    return-void
.end method

.method private final startAutoSaveCoroutine()V
    .locals 7

    .line 774
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;-><init>(Lorg/catrobat/paintroid/MainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final validateIntent(Landroid/content/Intent;)Z
    .locals 4

    .line 276
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.EDIT"

    .line 279
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string v2, "android.intent.action.SEND"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "image/"

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 280
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/"

    .line 282
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public commandPostExecute()V
    .locals 2

    .line 648
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 649
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->getLastExecutedCommand()Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/paintroid/command/implementation/LayerOpacityCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 650
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerPresenter:Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-nez v0, :cond_0

    const-string v0, "layerPresenter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->invalidate()V

    .line 652
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_2

    const-string v0, "presenterMain"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->onCommandPostExecute()V

    :cond_3
    return-void
.end method

.method public enterHideButtons()V
    .locals 2

    .line 731
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 732
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 735
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public exitHideButtons()V
    .locals 2

    .line 740
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 741
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public final getBottomNavigationViewHolder()Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bottomNavigationViewHolder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "commandManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDefaultToolController()Lorg/catrobat/paintroid/controller/DefaultToolController;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "defaultToolController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 196
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "resources.displayMetrics"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFinishing()Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public final getIdlingResource()Landroidx/test/espresso/idling/CountingIdlingResource;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    return-object v0
.end method

.method public final getLayerAdapter()Lorg/catrobat/paintroid/ui/LayerAdapter;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "layerAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "layerModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "model"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMyContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .line 202
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contentResolver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPerspective()Lorg/catrobat/paintroid/ui/Perspective;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "perspective"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_0

    const-string v0, "presenterMain"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final getToolOptionsViewController()Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "toolOptionsViewController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getToolPaint()Lorg/catrobat/paintroid/tools/ToolPaint;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "toolPaint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "toolReference"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUriFromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "fromFile(file)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getVersionCode()Ljava/lang/String;
    .locals 3

    .line 787
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/MainActivity;

    .line 788
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 787
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 789
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkspace()Lorg/catrobat/paintroid/tools/Workspace;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "workspace"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getZoomWindowController()Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->zoomWindowController:Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "zoomWindowController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideContentLoadingProgressBar()V
    .locals 1

    .line 759
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->progressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    if-nez v0, :cond_0

    const-string v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->hide()V

    return-void
.end method

.method public hideKeyboard()V
    .locals 3

    const-string v0, "input_method"

    .line 747
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 750
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public initializeActionBar(Z)V
    .locals 2

    .line 637
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_toolbar:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 638
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 639
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    .line 640
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 641
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 p1, 0x1

    .line 642
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    const/4 p1, 0x0

    .line 643
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :goto_0
    return-void
.end method

.method public isKeyboardShown()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->keyboardListener:Lorg/catrobat/paintroid/ui/KeyboardListener;

    if-nez v0, :cond_0

    const-string v0, "keyboardListener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/KeyboardListener;->isSoftKeyboardVisible()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 692
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 693
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_0

    const-string v0, "presenterMain"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->handleActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 684
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 687
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_1

    const-string v0, "presenterMain"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->onBackPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 287
    sget v0, Lorg/catrobat/paintroid/R$style;->PocketPaintTheme:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->setTheme(I)V

    .line 288
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-direct {p0}, Lorg/catrobat/paintroid/MainActivity;->getAppFragment()V

    .line 290
    sget-object v0, Lorg/catrobat/paintroid/PaintroidApplication;->Companion:Lorg/catrobat/paintroid/PaintroidApplication$Companion;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/PaintroidApplication$Companion;->setCacheDir(Ljava/io/File;)V

    .line 291
    sget v0, Lorg/catrobat/paintroid/R$layout;->activity_pocketpaint_main:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->setContentView(I)V

    .line 292
    invoke-direct {p0}, Lorg/catrobat/paintroid/MainActivity;->onCreateGlobals()V

    .line 293
    invoke-direct {p0}, Lorg/catrobat/paintroid/MainActivity;->onCreateMainView()V

    .line 294
    invoke-direct {p0}, Lorg/catrobat/paintroid/MainActivity;->onCreateLayerMenu()V

    .line 295
    invoke-direct {p0}, Lorg/catrobat/paintroid/MainActivity;->onCreateDrawingSurface()V

    .line 296
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    const-string v1, "presenterMain"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->onCreateTool()V

    .line 297
    sget-object v0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->Companion:Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;

    invoke-virtual {v0, p0}, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;->setMainActivity(Lorg/catrobat/paintroid/MainActivity;)V

    .line 299
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isTemporaryFileSavingTest"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/catrobat/paintroid/MainActivity;->isTemporaryFileSavingTest:Z

    const-string v3, "receivedIntent"

    .line 302
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->validateIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    .line 303
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/MainActivity;->handleIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    .line 306
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 307
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setCameraImageUri(Landroid/net/Uri;)V

    .line 308
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWorkspace()Lorg/catrobat/paintroid/tools/Workspace;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Workspace;->resetPerspective()V

    .line 309
    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    invoke-interface {p1, v2, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->initializeFromCleanState(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    if-nez p1, :cond_f

    .line 312
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "org.catrobat.extra.PAINTROID_PICTURE_PATH"

    .line 313
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "org.catrobat.extra.PAINTROID_PICTURE_NAME"

    .line 314
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 315
    iget-object v3, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    invoke-interface {v3, v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->initializeFromCleanState(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->checkForTemporaryFile()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lorg/catrobat/paintroid/MainActivity;->isRunningEspressoTests()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lorg/catrobat/paintroid/MainActivity;->isTemporaryFileSavingTest:Z

    if-eqz p1, :cond_e

    .line 318
    :cond_6
    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_7
    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->openTemporaryFile()Lorg/catrobat/paintroid/iotasks/WorkspaceReturnValue;

    move-result-object p1

    .line 319
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v0

    if-nez p1, :cond_8

    move-object v3, v2

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lorg/catrobat/paintroid/iotasks/WorkspaceReturnValue;->getCommandManagerModel()Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v3

    :goto_0
    invoke-interface {v0, v3}, Lorg/catrobat/paintroid/command/CommandManager;->loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V

    .line 320
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v0

    if-nez p1, :cond_9

    move-object p1, v2

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lorg/catrobat/paintroid/iotasks/WorkspaceReturnValue;->getColorHistory()Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_a

    new-instance p1, Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    invoke-direct {p1}, Lorg/catrobat/paintroid/colorpicker/ColorHistory;-><init>()V

    :cond_a
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setColorHistory(Lorg/catrobat/paintroid/colorpicker/ColorHistory;)V

    .line 321
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->getColorHistory()Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/catrobat/paintroid/colorpicker/ColorHistory;->getColors()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 322
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    const/4 v3, 0x2

    invoke-static {v0, p1, v5, v3, v2}, Lorg/catrobat/paintroid/tools/Tool$DefaultImpls;->changePaintColor$default(Lorg/catrobat/paintroid/tools/Tool;IZILjava/lang/Object;)V

    .line 323
    :goto_2
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_d
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->setBottomNavigationColor(I)V

    .line 326
    :cond_e
    :goto_3
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWorkspace()Lorg/catrobat/paintroid/tools/Workspace;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Workspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object p1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v3

    invoke-interface {v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lorg/catrobat/paintroid/ui/Perspective;->setBitmapDimensions(II)V

    goto :goto_5

    :cond_f
    const-string v0, "isFullscreen"

    .line 329
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "isSaved"

    .line 330
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v0, "isOpenedFromCatroid"

    .line 331
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v0, "isOpenedFromFormulaEditorInCatroid"

    .line 332
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v0, "savedPictureUri"

    .line 335
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/net/Uri;

    const-string v0, "cameraImageUri"

    .line 336
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v12, p1

    check-cast v12, Landroid/net/Uri;

    .line 337
    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_4

    :cond_10
    move-object v6, p1

    :goto_4
    invoke-interface/range {v6 .. v12}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->restoreState(ZZZZLandroid/net/Uri;Landroid/net/Uri;)V

    .line 344
    :goto_5
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/command/CommandManager$CommandListener;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/catrobat/paintroid/MainActivity;->lastInteractionTime:J

    .line 346
    invoke-direct {p0}, Lorg/catrobat/paintroid/MainActivity;->isRunningEspressoTests()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lorg/catrobat/paintroid/MainActivity;->isTemporaryFileSavingTest:Z

    if-eqz p1, :cond_12

    :cond_11
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result p1

    if-nez p1, :cond_12

    .line 347
    invoke-direct {p0}, Lorg/catrobat/paintroid/MainActivity;->startAutoSaveCoroutine()V

    .line 349
    :cond_12
    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_13

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_13
    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->finishInitialize()V

    const-string p1, "preferences"

    .line 352
    invoke-virtual {p0, p1, v5}, Lorg/catrobat/paintroid/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x1

    const-string v3, "firstLaunchAfterInstall"

    .line 354
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 355
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 356
    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    move-object v2, p1

    :goto_6
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showHelpClicked()V

    :cond_15
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$menu;->menu_pocketpaint_more_options:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 375
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_0

    const-string v0, "presenterMain"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->removeMoreOptionsItems(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    .line 657
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lorg/catrobat/paintroid/command/CommandManager$CommandListener;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandManager;->removeCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V

    .line 658
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "presenterMain"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->saveNewTemporaryImage()V

    .line 659
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 660
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->shutdown()V

    .line 661
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    const-string v2, "appFragment"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setCurrentTool(Lorg/catrobat/paintroid/tools/ToolReference;)V

    .line 662
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setCommandManager(Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 663
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->appFragment:Lorg/catrobat/paintroid/PaintroidApplicationFragment;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setLayerModel(Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 665
    :cond_4
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 381
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_export:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "presenterMain"

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-interface {v2, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->saveCopyClicked(Z)V

    goto/16 :goto_10

    .line 382
    :cond_1
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_save_image:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->saveImageClicked()V

    goto/16 :goto_10

    .line 383
    :cond_3
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_save_duplicate:I

    const/4 v4, 0x0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v2, p1

    :goto_2
    invoke-interface {v2, v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->saveCopyClicked(Z)V

    goto/16 :goto_10

    .line 384
    :cond_5
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_replace_image:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v2, p1

    :goto_3
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->replaceImageClicked()V

    goto/16 :goto_10

    .line 385
    :cond_7
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_add_to_current_layer:I

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v2, p1

    :goto_4
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->addImageToCurrentLayerClicked()V

    goto/16 :goto_10

    .line 386
    :cond_9
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_new_image:I

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object v2, p1

    :goto_5
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->newImageClicked()V

    goto/16 :goto_10

    .line 387
    :cond_b
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_discard_image:I

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    move-object v2, p1

    :goto_6
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->discardImageClicked()V

    goto/16 :goto_10

    .line 388
    :cond_d
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_fullscreen_mode:I

    if-ne p1, v0, :cond_f

    .line 389
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/catrobat/paintroid/ui/Perspective;->setMainActivity(Lorg/catrobat/paintroid/MainActivity;)V

    .line 390
    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    move-object v2, p1

    :goto_7
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->enterHideButtonsClicked()V

    goto/16 :goto_10

    .line 392
    :cond_f
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_rate_us:I

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    move-object v2, p1

    :goto_8
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->rateUsClicked()V

    goto/16 :goto_10

    .line 393
    :cond_11
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_help:I

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_12

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    move-object v2, p1

    :goto_9
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showHelpClicked()V

    goto/16 :goto_10

    .line 394
    :cond_13
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_about:I

    if-ne p1, v0, :cond_15

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_14

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a

    :cond_14
    move-object v2, p1

    :goto_a
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showAboutClicked()V

    goto/16 :goto_10

    .line 395
    :cond_15
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_share_image_button:I

    if-ne p1, v0, :cond_17

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_16

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    move-object v2, p1

    :goto_b
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->shareImageClicked()V

    goto :goto_10

    .line 396
    :cond_17
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_feedback:I

    if-ne p1, v0, :cond_19

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_18

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_c

    :cond_18
    move-object v2, p1

    :goto_c
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->sendFeedback()V

    goto :goto_10

    .line 397
    :cond_19
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_zoom_window_settings:I

    if-ne p1, v0, :cond_1b

    .line 398
    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_1a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_d

    :cond_1a
    move-object v2, p1

    .line 399
    :goto_d
    new-instance p1, Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {p0, v4}, Lorg/catrobat/paintroid/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "getPreferences(MODE_PRIVATE)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/catrobat/paintroid/UserPreferences;-><init>(Landroid/content/SharedPreferences;)V

    .line 398
    invoke-interface {v2, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showZoomWindowSettingsClicked(Lorg/catrobat/paintroid/UserPreferences;)V

    goto :goto_10

    .line 401
    :cond_1b
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_advanced_settings:I

    if-ne p1, v0, :cond_1d

    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_1c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_e

    :cond_1c
    move-object v2, p1

    :goto_e
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showAdvancedSettingsClicked()V

    goto :goto_10

    :cond_1d
    const v0, 0x102002c

    if-ne p1, v0, :cond_1f

    .line 402
    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_1e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    move-object v2, p1

    :goto_f
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->backToPocketCodeClicked()V

    :goto_10
    return v1

    :cond_1f
    return v4
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_0

    const-string v0, "presenterMain"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 208
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 209
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->deferredRequestPermissionsResult:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 211
    iput-object v1, p0, Lorg/catrobat/paintroid/MainActivity;->deferredRequestPermissionsResult:Ljava/lang/Runnable;

    .line 212
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 671
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isFullscreen()Z

    move-result v0

    const-string v1, "isFullscreen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 672
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isSaved()Z

    move-result v0

    const-string v1, "isSaved"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 673
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    const-string v1, "isOpenedFromCatroid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 676
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromFormulaEditorInCatroid()Z

    move-result v0

    const-string v1, "isOpenedFromFormulaEditorInCatroid"

    .line 674
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 678
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->getSavedPictureUri()Landroid/net/Uri;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "savedPictureUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 679
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->getCameraImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "cameraImageUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 763
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserInteraction()V

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/paintroid/MainActivity;->lastInteractionTime:J

    const/4 v0, 0x1

    .line 765
    iput-boolean v0, p0, Lorg/catrobat/paintroid/MainActivity;->userInteraction:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 362
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_1

    .line 364
    iget-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->presenterMain:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez p1, :cond_0

    const-string p1, "presenterMain"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->saveNewTemporaryImage()V

    const/4 p1, 0x0

    .line 365
    iput p1, p0, Lorg/catrobat/paintroid/MainActivity;->minuteTemporaryCopiesCounter:I

    .line 366
    iput-boolean p1, p0, Lorg/catrobat/paintroid/MainActivity;->userInteraction:Z

    .line 368
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    .line 369
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public refreshDrawingSurface()V
    .locals 1

    .line 727
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    if-nez v0, :cond_0

    const-string v0, "drawingSurface"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    return-void
.end method

.method public final setBottomNavigationViewHolder(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    return-void
.end method

.method public final setCommandManager(Lorg/catrobat/paintroid/command/CommandManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    return-void
.end method

.method public final setDefaultToolController(Lorg/catrobat/paintroid/controller/DefaultToolController;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    return-void
.end method

.method public final setIdlingResource(Landroidx/test/espresso/idling/CountingIdlingResource;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    return-void
.end method

.method public final setLayerAdapter(Lorg/catrobat/paintroid/ui/LayerAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    return-void
.end method

.method public final setLayerModel(Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    return-void
.end method

.method public final setModel(Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    return-void
.end method

.method public final setPerspective(Lorg/catrobat/paintroid/ui/Perspective;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    return-void
.end method

.method public final setToolOptionsViewController(Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    return-void
.end method

.method public final setToolPaint(Lorg/catrobat/paintroid/tools/ToolPaint;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    return-void
.end method

.method public final setToolReference(Lorg/catrobat/paintroid/tools/ToolReference;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    return-void
.end method

.method public final setWorkspace(Lorg/catrobat/paintroid/tools/Workspace;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    return-void
.end method

.method public final setZoomWindowController(Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity;->zoomWindowController:Lorg/catrobat/paintroid/ui/zoomwindow/DefaultZoomWindowController;

    return-void
.end method

.method public showContentLoadingProgressBar()V
    .locals 1

    .line 755
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity;->progressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    if-nez v0, :cond_0

    const-string v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->show()V

    return-void
.end method

.method public superHandleActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 697
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public superHandleRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
