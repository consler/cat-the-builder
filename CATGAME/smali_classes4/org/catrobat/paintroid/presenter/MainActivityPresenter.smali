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
    value = "SMAP\nMainActivityPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivityPresenter.kt\norg/catrobat/paintroid/presenter/MainActivityPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1270:1\n1#2:1271\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\u0016\u0018\u0000 \u00c7\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u00c7\u0001B\u0097\u0001\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u0012\u0006\u0010\u001f\u001a\u00020 \u0012\u0006\u0010!\u001a\u00020\"\u0012\u0006\u0010#\u001a\u00020$\u0012\u0006\u0010%\u001a\u00020&\u0012\u0006\u0010\'\u001a\u00020(\u00a2\u0006\u0002\u0010)J\u0008\u0010R\u001a\u00020SH\u0016J\u0008\u0010T\u001a\u00020SH\u0016J\u0008\u0010U\u001a\u00020SH\u0016J\u0006\u0010V\u001a\u00020SJ\u0010\u0010W\u001a\u00020S2\u0006\u0010X\u001a\u00020EH\u0002J\u0008\u0010Y\u001a\u00020SH\u0016J\u0010\u0010Z\u001a\u00020S2\u0006\u0010[\u001a\u00020+H\u0016J\u0008\u0010\\\u001a\u00020SH\u0002J\u0008\u0010]\u001a\u00020SH\u0002J\u0008\u0010^\u001a\u00020/H\u0016J\u0006\u0010_\u001a\u00020SJ\u0008\u0010`\u001a\u00020SH\u0002J\u0008\u0010a\u001a\u00020SH\u0016J\u0008\u0010b\u001a\u00020SH\u0002J\u0008\u0010c\u001a\u00020SH\u0016J\u0008\u0010d\u001a\u00020SH\u0002J\u0008\u0010e\u001a\u00020SH\u0016J\u0008\u0010f\u001a\u00020SH\u0016J\u0008\u0010g\u001a\u00020SH\u0016J\u0012\u0010h\u001a\u0004\u0018\u00010i2\u0006\u0010j\u001a\u00020kH\u0002J\"\u0010l\u001a\u00020S2\u0006\u0010X\u001a\u00020E2\u0006\u0010m\u001a\u00020E2\u0008\u0010n\u001a\u0004\u0018\u00010oH\u0016J+\u0010p\u001a\u00020S2\u0006\u0010X\u001a\u00020E2\u000c\u0010q\u001a\u0008\u0012\u0004\u0012\u00020i0r2\u0006\u0010s\u001a\u00020tH\u0016\u00a2\u0006\u0002\u0010uJ\u0006\u0010v\u001a\u00020SJ\u0008\u0010w\u001a\u00020SH\u0016J\u0008\u0010x\u001a\u00020SH\u0016J\u001c\u0010y\u001a\u00020S2\u0008\u0010z\u001a\u0004\u0018\u00010i2\u0008\u0010{\u001a\u0004\u0018\u00010iH\u0016J\u0008\u0010|\u001a\u00020SH\u0016J\u001a\u0010}\u001a\u00020S2\u0008\u0010j\u001a\u0004\u0018\u00010k2\u0006\u0010X\u001a\u00020EH\u0016J\u0008\u0010~\u001a\u00020SH\u0016J\u0008\u0010\u007f\u001a\u00020SH\u0016J\t\u0010\u0080\u0001\u001a\u00020SH\u0016J\u001c\u0010\u0081\u0001\u001a\u00020S2\u0006\u0010X\u001a\u00020E2\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010&H\u0016J\t\u0010\u0083\u0001\u001a\u00020SH\u0016J\'\u0010\u0084\u0001\u001a\u00020S2\u0006\u0010X\u001a\u00020E2\u0008\u0010j\u001a\u0004\u0018\u00010k2\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u0016J\u0011\u0010\u0087\u0001\u001a\u00020S2\u0006\u0010X\u001a\u00020EH\u0016J\t\u0010\u0088\u0001\u001a\u00020SH\u0016J$\u0010\u0089\u0001\u001a\u00020S2\u0006\u0010X\u001a\u00020E2\u0008\u0010j\u001a\u0004\u0018\u00010k2\u0007\u0010\u008a\u0001\u001a\u00020/H\u0016J\u0011\u0010\u008b\u0001\u001a\u00020S2\u0006\u0010X\u001a\u00020EH\u0016J\u000c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0016J\t\u0010\u008e\u0001\u001a\u00020SH\u0016J\t\u0010\u008f\u0001\u001a\u00020SH\u0016J\t\u0010\u0090\u0001\u001a\u00020SH\u0002J\u0015\u0010\u0091\u0001\u001a\u00020S2\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0016J\t\u0010\u0094\u0001\u001a\u00020SH\u0016JC\u0010\u0095\u0001\u001a\u00020S2\u0007\u0010\u0096\u0001\u001a\u00020/2\u0007\u0010\u0097\u0001\u001a\u00020/2\u0007\u0010\u0098\u0001\u001a\u00020/2\u0007\u0010\u0099\u0001\u001a\u00020/2\t\u0010\u009a\u0001\u001a\u0004\u0018\u00010k2\t\u0010\u009b\u0001\u001a\u0004\u0018\u00010kH\u0016J\t\u0010\u009c\u0001\u001a\u00020SH\u0016J\t\u0010\u009d\u0001\u001a\u00020SH\u0016J\t\u0010\u009e\u0001\u001a\u00020SH\u0016J\u0011\u0010\u009f\u0001\u001a\u00020S2\u0006\u0010H\u001a\u00020/H\u0016J\u001b\u0010\u00a0\u0001\u001a\u00020S2\u0006\u0010X\u001a\u00020E2\u0008\u0010j\u001a\u0004\u0018\u00010kH\u0016J\t\u0010\u00a1\u0001\u001a\u00020SH\u0016J\u001b\u0010\u00a2\u0001\u001a\u00020S2\u0006\u0010X\u001a\u00020E2\u0008\u0010j\u001a\u0004\u0018\u00010kH\u0016J\t\u0010\u00a3\u0001\u001a\u00020SH\u0016J\t\u0010\u00a4\u0001\u001a\u00020SH\u0016J\t\u0010\u00a5\u0001\u001a\u00020SH\u0016J\u0012\u0010\u00a6\u0001\u001a\u00020S2\u0007\u0010\u00a7\u0001\u001a\u00020EH\u0016J\u0015\u0010\u00a8\u0001\u001a\u00020S2\n\u0010\u00a9\u0001\u001a\u0005\u0018\u00010\u00aa\u0001H\u0016J\t\u0010\u00ab\u0001\u001a\u00020SH\u0002J\u0011\u0010\u00ac\u0001\u001a\u00020S2\u0006\u0010K\u001a\u00020LH\u0016J\u0013\u0010\u00ad\u0001\u001a\u00020S2\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u0001H\u0002J\t\u0010\u00b0\u0001\u001a\u00020SH\u0016J\t\u0010\u00b1\u0001\u001a\u00020SH\u0016J\t\u0010\u00b2\u0001\u001a\u00020SH\u0016J\t\u0010\u00b3\u0001\u001a\u00020SH\u0016J\t\u0010\u00b4\u0001\u001a\u00020SH\u0016J\t\u0010\u00b5\u0001\u001a\u00020SH\u0016J\t\u0010\u00b6\u0001\u001a\u00020SH\u0016J\t\u0010\u00b7\u0001\u001a\u00020SH\u0016J\t\u0010\u00b8\u0001\u001a\u00020SH\u0016J\t\u0010\u00b9\u0001\u001a\u00020SH\u0016J\t\u0010\u00ba\u0001\u001a\u00020SH\u0002J\t\u0010\u00bb\u0001\u001a\u00020SH\u0016J\u001a\u0010\u00bc\u0001\u001a\u00020S2\u0007\u0010\u00bd\u0001\u001a\u00020E2\u0006\u0010H\u001a\u00020/H\u0016J\t\u0010\u00be\u0001\u001a\u00020SH\u0016J\t\u0010\u00bf\u0001\u001a\u00020SH\u0016J\t\u0010\u00c0\u0001\u001a\u00020SH\u0002J\u0011\u0010\u00c1\u0001\u001a\u00020S2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u000f\u0010\u00c2\u0001\u001a\u00020S2\u0006\u0010X\u001a\u00020EJ\u0019\u0010\u00c2\u0001\u001a\u00020S2\u0006\u0010X\u001a\u00020E2\u0006\u0010H\u001a\u00020/H\u0016J\u0013\u0010\u00c3\u0001\u001a\u00020S2\u0008\u0010\u00c4\u0001\u001a\u00030\u00af\u0001H\u0002J\u0013\u0010\u00c5\u0001\u001a\u00020S2\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u0001H\u0016J\t\u0010\u00c6\u0001\u001a\u00020SH\u0016R\u0016\u0010*\u001a\u0004\u0018\u00010+8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u00020/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00104\u001a\u000205X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010:\u001a\u00020;8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=R\u0014\u0010#\u001a\u00020$X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010?R\u0010\u0010@\u001a\u0004\u0018\u00010AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010CR\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010D\u001a\u00020E8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010GR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010I\u001a\u00020/8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u00101R\u0014\u0010J\u001a\u00020/8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u00101R\u0010\u0010K\u001a\u0004\u0018\u00010LX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010N\u001a\u00020/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u00101\"\u0004\u0008P\u00103R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00c8\u0001"
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
        "toolController",
        "Lorg/catrobat/paintroid/controller/ToolController;",
        "sharedPreferences",
        "Lorg/catrobat/paintroid/UserPreferences;",
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "context",
        "Landroid/content/Context;",
        "internalMemoryPath",
        "Ljava/io/File;",
        "commandSerializer",
        "Lorg/catrobat/paintroid/command/serialization/CommandSerializer;",
        "(Landroid/app/Activity;Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;Lorg/catrobat/paintroid/command/CommandFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/controller/ToolController;Lorg/catrobat/paintroid/UserPreferences;Landroidx/test/espresso/idling/CountingIdlingResource;Landroid/content/Context;Ljava/io/File;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;)V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "clippingToolInUseAndUndoRedoClicked",
        "",
        "getClippingToolInUseAndUndoRedoClicked",
        "()Z",
        "setClippingToolInUseAndUndoRedoClicked",
        "(Z)V",
        "clippingToolPaint",
        "Landroid/graphics/Paint;",
        "getClippingToolPaint",
        "()Landroid/graphics/Paint;",
        "setClippingToolPaint",
        "(Landroid/graphics/Paint;)V",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "getContentResolver",
        "()Landroid/content/ContentResolver;",
        "getContext",
        "()Landroid/content/Context;",
        "downTimer",
        "Landroid/os/CountDownTimer;",
        "getFileActivity",
        "()Landroid/app/Activity;",
        "imageNumber",
        "",
        "getImageNumber",
        "()I",
        "isExport",
        "isFinishing",
        "isImageUnchanged",
        "layerAdapter",
        "Lorg/catrobat/paintroid/ui/LayerAdapter;",
        "resetPerspectiveAfterNextCommand",
        "toolOptionsViewWasShown",
        "getToolOptionsViewWasShown",
        "setToolOptionsViewWasShown",
        "wasImageLoaded",
        "actionCurrentToolClicked",
        "",
        "actionToolsClicked",
        "addImageToCurrentLayerClicked",
        "adjustClippingToolPostCommandExecute",
        "askForReadAndWriteExternalStoragePermission",
        "requestCode",
        "backToPocketCodeClicked",
        "bitmapLoadedFromSource",
        "loadedImage",
        "checkForDefaultFilename",
        "checkForImplicitToolApplication",
        "checkForTemporaryFile",
        "checkIfClippingToolNeedsAdjustment",
        "countUpImageNumber",
        "discardImageClicked",
        "enterHideButtons",
        "enterHideButtonsClicked",
        "exitHideButtons",
        "exitHideButtonsClicked",
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
        "hideBottomBarViewHolder",
        "importFromGalleryClicked",
        "importStickersClicked",
        "initializeFromCleanState",
        "extraPicturePath",
        "extraPictureName",
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
        "Lorg/catrobat/paintroid/iotasks/WorkspaceReturnValue;",
        "rateUsClicked",
        "redoClicked",
        "refreshTopBarButtons",
        "removeMoreOptionsItems",
        "menu",
        "Landroid/view/Menu;",
        "replaceImageClicked",
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
        "setColorHistoryAfterLoadImage",
        "colorHistory",
        "Lorg/catrobat/paintroid/colorpicker/ColorHistory;",
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
        "showZoomWindowSettingsClicked",
        "switchBetweenVersions",
        "switchTool",
        "type",
        "toolClicked",
        "undoClicked",
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
.field public static final Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;


# instance fields
.field private final bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

.field private final bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

.field private clippingToolInUseAndUndoRedoClicked:Z

.field private clippingToolPaint:Landroid/graphics/Paint;

.field private final commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

.field private final commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field private final commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

.field private final context:Landroid/content/Context;

.field private downTimer:Landroid/os/CountDownTimer;

.field private final drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

.field private final fileActivity:Landroid/app/Activity;

.field private final idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

.field private final interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

.field private final internalMemoryPath:Ljava/io/File;

.field private isExport:Z

.field private layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

.field private final model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

.field private final navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

.field private resetPerspectiveAfterNextCommand:Z

.field private final sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

.field private final toolController:Lorg/catrobat/paintroid/controller/ToolController;

.field private toolOptionsViewWasShown:Z

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

.method public constructor <init>(Landroid/app/Activity;Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;Lorg/catrobat/paintroid/command/CommandFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/controller/ToolController;Lorg/catrobat/paintroid/UserPreferences;Landroidx/test/espresso/idling/CountingIdlingResource;Landroid/content/Context;Ljava/io/File;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;)V
    .locals 16

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

    move-object/from16 v0, p17

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

    const-string v0, "toolController"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalMemoryPath"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandSerializer"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 107
    iput-object v15, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->fileActivity:Landroid/app/Activity;

    .line 108
    iput-object v1, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    .line 109
    iput-object v2, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    .line 110
    iput-object v3, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 111
    iput-object v4, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 112
    iput-object v5, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 113
    iput-object v6, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    .line 114
    iput-object v7, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    .line 115
    iput-object v8, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    .line 116
    iput-object v9, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    .line 117
    iput-object v10, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 118
    iput-object v11, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 119
    iput-object v12, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    .line 120
    iput-object v13, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    .line 121
    iput-object v14, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    move-object/from16 v1, p16

    .line 122
    iput-object v1, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->context:Landroid/content/Context;

    move-object/from16 v1, p17

    .line 123
    iput-object v1, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->internalMemoryPath:Ljava/io/File;

    move-object/from16 v1, p18

    .line 124
    iput-object v1, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    .line 153
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static final synthetic access$getDownTimer$p(Lorg/catrobat/paintroid/presenter/MainActivityPresenter;)Landroid/os/CountDownTimer;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->downTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static final synthetic access$getToolController$p(Lorg/catrobat/paintroid/presenter/MainActivityPresenter;)Lorg/catrobat/paintroid/controller/ToolController;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    return-object p0
.end method

.method public static final synthetic access$getWorkspace$p(Lorg/catrobat/paintroid/presenter/MainActivityPresenter;)Lorg/catrobat/paintroid/tools/Workspace;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    return-object p0
.end method

.method public static final synthetic access$setTool(Lorg/catrobat/paintroid/presenter/MainActivityPresenter;Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    return-void
.end method

.method private final askForReadAndWriteExternalStoragePermission(I)V
    .locals 4

    .line 383
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 386
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [I

    aput v3, v1, v3

    .line 384
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->isSdkAboveOrEqualT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->doIHavePermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 396
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->askForPermission([Ljava/lang/String;I)V

    goto :goto_0

    .line 402
    :cond_1
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [I

    aput v3, v1, v3

    .line 400
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 406
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->isSdkAboveOrEqualQ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 407
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->doIHavePermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 408
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 409
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->askForPermission([Ljava/lang/String;I)V

    goto :goto_0

    .line 415
    :cond_3
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [I

    aput v3, v1, v3

    .line 413
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 420
    :cond_4
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->isSdkAboveOrEqualM()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->doIHavePermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 421
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 422
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->askForPermission([Ljava/lang/String;I)V

    goto :goto_0

    .line 428
    :cond_5
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [I

    aput v3, v1, v3

    .line 426
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method private final checkForDefaultFilename()V
    .locals 2

    .line 436
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "image"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 437
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->countUpImageNumber()V

    :cond_0
    return-void
.end method

.method private final checkForImplicitToolApplication()V
    .locals 3

    .line 819
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 820
    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v1

    .line 821
    :goto_0
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v2}, Lorg/catrobat/paintroid/controller/ToolController;->getToolList()Ljava/util/HashSet;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 822
    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;

    .line 823
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->onClickOnButton()V

    goto :goto_1

    .line 822
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.BaseToolWithShape"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_2
    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->CLIP:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v1, v2, :cond_4

    if-eqz v0, :cond_3

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->onClickOnButton()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.ClippingTool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method private final countUpImageNumber()V
    .locals 2

    .line 261
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/UserPreferences;->getPreferenceImageNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 263
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v1, v0}, Lorg/catrobat/paintroid/UserPreferences;->setPreferenceImageNumber(I)V

    return-void
.end method

.method private final enterHideButtons()V
    .locals 1

    .line 759
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->toolOptionsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 760
    iput-boolean v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolOptionsViewWasShown:Z

    .line 762
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->hideKeyboard()V

    .line 763
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->enterHideButtons()V

    .line 764
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->hide()V

    .line 765
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->hide()V

    .line 766
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->hide()V

    .line 767
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->disableToolOptionsView()V

    .line 768
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->disableHideOption()V

    return-void
.end method

.method private final exitHideButtons()V
    .locals 1

    .line 747
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->exitHideButtons()V

    .line 748
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->show()V

    .line 749
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->show()V

    .line 750
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->enableToolOptionsView()V

    .line 751
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->enableHideOption()V

    .line 752
    iget-boolean v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolOptionsViewWasShown:Z

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->showToolOptionsView()V

    const/4 v0, 0x0

    .line 754
    iput-boolean v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolOptionsViewWasShown:Z

    :cond_0
    return-void
.end method

.method private final getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 1077
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1078
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getFileActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_3

    .line 1079
    :cond_2
    check-cast p1, Ljava/io/Closeable;

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    .line 1080
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "_display_name"

    .line 1081
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 1083
    :goto_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_3
    return-object v1
.end method

.method public static final getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final isImageUnchanged()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final refreshTopBarButtons()V
    .locals 1

    .line 794
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->enableUndoButton()V

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->disableUndoButton()V

    .line 799
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isRedoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->enableRedoButton()V

    goto :goto_1

    .line 802
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->disableRedoButton()V

    :goto_1
    return-void
.end method

.method private final setFirstCheckBoxInLayerMenu()V
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->setLayerVisibilityCheckbox(Z)V

    :goto_0
    return-void
.end method

.method private final setTool(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 2

    .line 853
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {v0}, Landroidx/test/espresso/idling/CountingIdlingResource;->increment()V

    .line 854
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->hide()V

    .line 855
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 856
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->getHeight()I

    move-result v0

    .line 857
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->getNameResource()I

    move-result p1

    invoke-interface {v1, v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToolChangeToast(II)V

    .line 858
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {p1}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V

    return-void
.end method

.method private final showLikeUsDialogIfFirstTimeSave()V
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/UserPreferences;->getPreferenceLikeUsDialogValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showLikeUsDialog()V

    .line 256
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/UserPreferences;->setPreferenceLikeUsDialogValue()V

    :cond_0
    return-void
.end method

.method private final showSecurityQuestionBeforeExit()V
    .locals 1

    .line 207
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

    .line 209
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveBeforeFinish()V

    goto :goto_1

    .line 212
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveBeforeFinishDialog()V

    goto :goto_1

    .line 208
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->finishActivity()V

    :goto_1
    return-void
.end method

.method private final switchTool(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 9

    .line 828
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->setMaskFilterToNull()V

    .line 829
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->hideKeyboard()V

    .line 832
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getToolList()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v1}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xfa

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    move-wide v5, v0

    .line 830
    new-instance v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$switchTool$1;

    const-wide/16 v7, 0x53

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$switchTool$1;-><init>(Lorg/catrobat/paintroid/presenter/MainActivityPresenter;Lorg/catrobat/paintroid/tools/ToolType;JJ)V

    .line 849
    invoke-virtual {v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$switchTool$1;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    .line 830
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->downTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public actionCurrentToolClicked()V
    .locals 2

    .line 1059
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v0, v1, :cond_0

    .line 1060
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->showImportDialog()V

    return-void

    .line 1063
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->hide()V

    .line 1066
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->toolOptionsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1067
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->hideToolOptionsView()V

    goto :goto_0

    .line 1069
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->hasToolOptionsView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1070
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->showToolOptionsView()V

    :cond_3
    :goto_0
    return-void
.end method

.method public actionToolsClicked()V
    .locals 3

    .line 1043
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->toolOptionsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->hideToolOptionsView()V

    .line 1046
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->hide()V

    goto :goto_1

    .line 1049
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getCurrentLayerIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 1050
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1051
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    sget v1, Lorg/catrobat/paintroid/R$string;->no_tools_on_hidden_layer:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(II)V

    return-void

    .line 1054
    :cond_4
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->show()V

    :goto_1
    return-void
.end method

.method public addImageToCurrentLayerClicked()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkIfClippingToolNeedsAdjustment()V

    .line 164
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    const/4 v0, 0x7

    .line 165
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchBetweenVersions(I)V

    return-void
.end method

.method public final adjustClippingToolPostCommandExecute()V
    .locals 7

    .line 674
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.ClippingTool"

    if-eqz v0, :cond_2

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    .line 675
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->getAreaClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v2}, Lorg/catrobat/paintroid/command/CommandManager;->popFirstCommandInRedo()V

    :cond_0
    const/4 v2, 0x0

    .line 678
    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->setAreaClosed(Z)V

    .line 679
    iget-object v3, v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->rewind()V

    .line 680
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->getPointArray()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    .line 681
    invoke-virtual {v0, v3}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->setInitialEventCoordinate(Landroid/graphics/PointF;)V

    .line 682
    iput-object v3, v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 683
    move-object v4, v0

    check-cast v4, Lorg/catrobat/paintroid/tools/Tool;

    iget-object v5, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v4, v5, v2, v6, v3}, Lorg/catrobat/paintroid/tools/Tool$DefaultImpls;->changePaintColor$default(Lorg/catrobat/paintroid/tools/Tool;IZILjava/lang/Object;)V

    .line 684
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->getMainActivity()Lorg/catrobat/paintroid/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getBottomNavigationViewHolder()Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    move-result-object v0

    .line 685
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->setColorButtonColor(I)V

    .line 686
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->setWasRecentlyApplied(Z)V

    .line 687
    iput-boolean v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolInUseAndUndoRedoClicked:Z

    return-void

    .line 686
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public backToPocketCodeClicked()V
    .locals 0

    .line 277
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->showSecurityQuestionBeforeExit()V

    return-void
.end method

.method public bitmapLoadedFromSource(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "loadedImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/controller/ToolController;->setBitmapFromSource(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public checkForTemporaryFile()Z
    .locals 2

    .line 1127
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->internalMemoryPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/FileIO;->checkForTemporaryFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public final checkIfClippingToolNeedsAdjustment()V
    .locals 6

    .line 1142
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    if-eqz v0, :cond_6

    .line 1143
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.ClippingTool"

    if-eqz v0, :cond_5

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    .line 1144
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->getAreaClosed()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1146
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->getInitialEventCoordinate()Landroid/graphics/PointF;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 1147
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->getInitialEventCoordinate()Landroid/graphics/PointF;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v5, Landroid/graphics/PointF;->y:F

    .line 1148
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v4, v5

    .line 1145
    :goto_0
    invoke-virtual {v0, v4}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->handleDown(Landroid/graphics/PointF;)Z

    .line 1155
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v2}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    invoke-virtual {v2, v3}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->setWasRecentlyApplied(Z)V

    .line 1156
    sget-object v1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->NEW_IMAGE_LOADED:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    goto :goto_1

    .line 1155
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1158
    :cond_3
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v2}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    invoke-virtual {v2, v3}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->setWasRecentlyApplied(Z)V

    .line 1159
    sget-object v1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->NEW_IMAGE_LOADED:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    goto :goto_1

    .line 1158
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-void
.end method

.method public discardImageClicked()V
    .locals 2

    .line 342
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createResetCommand()Lorg/catrobat/paintroid/command/Command;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    return-void
.end method

.method public enterHideButtonsClicked()V
    .locals 2

    .line 267
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setFullscreen(Z)V

    .line 268
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->enterHideButtons()V

    return-void
.end method

.method public exitHideButtonsClicked()V
    .locals 2

    .line 272
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setFullscreen(Z)V

    .line 273
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->exitHideButtons()V

    return-void
.end method

.method public finishActivity()V
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->finishActivity()V

    return-void
.end method

.method public finishInitialize()V
    .locals 2

    .line 723
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->refreshTopBarButtons()V

    .line 724
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getToolColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->setColorButtonColor(I)V

    .line 725
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v1}, Lorg/catrobat/paintroid/controller/ToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 726
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->enterHideButtons()V

    goto :goto_1

    .line 729
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->exitHideButtons()V

    .line 731
    :goto_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->initializeActionBar(Z)V

    .line 732
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showIndeterminateProgressDialog()V

    :cond_2
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getBitmapOfAllLayers()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getClippingToolInUseAndUndoRedoClicked()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolInUseAndUndoRedoClicked:Z

    return v0
.end method

.method public final getClippingToolPaint()Landroid/graphics/Paint;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getMyContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFileActivity()Landroid/app/Activity;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->fileActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getImageNumber()I
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/UserPreferences;->getPreferenceImageNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->countUpImageNumber()V

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/UserPreferences;->getPreferenceImageNumber()I

    move-result v0

    return v0
.end method

.method public final getToolOptionsViewWasShown()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolOptionsViewWasShown:Z

    return v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 8

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    move-object v4, v0

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 483
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0, p1, p2, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->superHandleActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const/16 p1, 0xa

    if-ne p2, p1, :cond_6

    .line 478
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 479
    sget p2, Lorg/catrobat/paintroid/R$string;->pocketpaint_intro_split_screen_not_supported:I

    .line 478
    invoke-interface {p1, p2, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(II)V

    goto :goto_1

    :cond_2
    if-eq p2, v0, :cond_3

    return-void

    .line 468
    :cond_3
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 469
    move-object v2, p0

    check-cast v2, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    const/4 v3, 0x1

    .line 472
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    .line 474
    iget-object v7, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    .line 468
    invoke-interface/range {v1 .. v7}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/command/serialization/CommandSerializer;)V

    goto :goto_1

    :cond_4
    if-eq p2, v0, :cond_5

    return-void

    .line 453
    :cond_5
    sget-object p1, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 454
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    sget-object p2, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/controller/ToolController;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 455
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 456
    move-object v2, p0

    check-cast v2, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    const/4 v3, 0x2

    .line 459
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    .line 461
    iget-object v7, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    .line 455
    invoke-interface/range {v1 .. v7}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/command/serialization/CommandSerializer;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public handleRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    aget-object v2, p2, v0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    aget-object v2, p2, v0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    aget-object v2, p2, v0

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 495
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

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    .line 542
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0, p1, p2, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->superHandleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto/16 :goto_2

    .line 539
    :pswitch_0
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startImportImageActivity(I)V

    goto/16 :goto_2

    .line 534
    :pswitch_1
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isImageUnchanged()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 537
    :cond_2
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveBeforeLoadImageDialog()V

    goto :goto_2

    .line 535
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startLoadImageActivity(I)V

    goto :goto_2

    :pswitch_2
    const/4 p1, 0x4

    .line 508
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 506
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveImageConfirmClicked(ILandroid/net/Uri;)V

    .line 510
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    goto :goto_2

    .line 522
    :pswitch_3
    sget-object p1, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 520
    invoke-virtual {p0, v0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveImageConfirmClicked(ILandroid/net/Uri;)V

    .line 524
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    goto :goto_2

    :pswitch_4
    const/4 p1, 0x3

    .line 515
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 513
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveImageConfirmClicked(ILandroid/net/Uri;)V

    .line 517
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    goto :goto_2

    .line 529
    :pswitch_5
    sget-object p1, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 527
    invoke-virtual {p0, v1, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveCopyConfirmClicked(ILandroid/net/Uri;)V

    .line 531
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    goto :goto_2

    .line 500
    :pswitch_6
    sget-object p1, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 498
    invoke-virtual {p0, v1, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->saveImageConfirmClicked(ILandroid/net/Uri;)V

    .line 502
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    .line 503
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->showLikeUsDialogIfFirstTimeSave()V

    goto :goto_2

    .line 549
    :cond_4
    iget-object p3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p3, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->isPermissionPermanentlyDenied([Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 550
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showRequestPermanentlyDeniedPermissionRationaleDialog()V

    goto :goto_2

    .line 552
    :cond_5
    iget-object p3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 553
    sget-object v0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->EXTERNAL_STORAGE:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    .line 552
    invoke-interface {p3, v0, p2, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showRequestPermissionRationaleDialog(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)V

    goto :goto_2

    .line 559
    :cond_6
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0, p1, p2, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->superHandleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_2
    return-void

    nop

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

.method public final hideBottomBarViewHolder()V
    .locals 1

    .line 1165
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->hide()V

    :cond_0
    return-void
.end method

.method public importFromGalleryClicked()V
    .locals 1

    const/4 v0, 0x7

    .line 1097
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchBetweenVersions(I)V

    return-void
.end method

.method public importStickersClicked()V
    .locals 3

    .line 1105
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showCatroidMediaGallery()V

    .line 1106
    sget-object v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->access$checkForInternet(Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$string;->no_connection_sticker:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public initializeFromCleanState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 695
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

    .line 696
    iput-boolean v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->wasImageLoaded:Z

    if-eqz p1, :cond_2

    .line 698
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 700
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    iget-object p2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 701
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 702
    move-object v1, p0

    check-cast v1, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    const/4 v2, 0x3

    .line 704
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->getSavedPictureUri()Landroid/net/Uri;

    move-result-object v3

    .line 705
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 707
    iget-object v6, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    .line 701
    invoke-interface/range {v0 .. v6}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/command/serialization/CommandSerializer;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 710
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 711
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;

    .line 710
    invoke-interface {p1, v0, v1, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->createFile(Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;ILjava/lang/String;)V

    goto :goto_1

    .line 717
    :cond_2
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {p1}, Lorg/catrobat/paintroid/controller/ToolController;->resetToolInternalStateOnImageLoaded()V

    .line 718
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public isFinishing()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getFinishing()Z

    move-result v0

    return v0
.end method

.method public loadNewImage()V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkIfClippingToolNeedsAdjustment()V

    .line 182
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startLoadImageActivity(I)V

    .line 183
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    return-void
.end method

.method public loadScaledImage(Landroid/net/Uri;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v1, "MainActivity"

    const-string v2, "wrong request code for loading pictures"

    .line 895
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 876
    :cond_0
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 877
    iget-object v1, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/controller/ToolController;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 878
    iget-object v3, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 879
    move-object v4, v0

    check-cast v4, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    const/4 v5, 0x2

    .line 882
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    .line 884
    iget-object v9, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    move-object/from16 v6, p1

    .line 878
    invoke-interface/range {v3 .. v9}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/command/serialization/CommandSerializer;)V

    goto :goto_0

    .line 887
    :cond_1
    iget-object v10, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    .line 888
    move-object v11, v0

    check-cast v11, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    const/4 v12, 0x1

    .line 891
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    .line 893
    iget-object v1, v0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    move-object/from16 v13, p1

    move-object/from16 v16, v1

    .line 887
    invoke-interface/range {v10 .. v16}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/command/serialization/CommandSerializer;)V

    :goto_0
    return-void
.end method

.method public newImageClicked()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkIfClippingToolNeedsAdjustment()V

    .line 188
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isImageUnchanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveBeforeNewImageDialog()V

    .line 193
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    goto :goto_1

    .line 189
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->onNewImage()V

    .line 190
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 564
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    const v1, 0x800003

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;->isDrawerOpen(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;->closeDrawer(IZ)V

    goto :goto_1

    .line 566
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    const v1, 0x800005

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;->closeDrawer(IZ)V

    goto :goto_1

    .line 568
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->exitHideButtonsClicked()V

    goto :goto_1

    .line 570
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->isDefaultTool()Z

    move-result v0

    if-nez v0, :cond_5

    .line 571
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->CLIP:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/controller/ToolController;->adjustClippingToolOnBackPressed(Z)V

    .line 572
    :cond_4
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->BRUSH:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    goto :goto_1

    .line 574
    :cond_5
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->showSecurityQuestionBeforeExit()V

    :goto_1
    return-void
.end method

.method public onCommandPostExecute()V
    .locals 2

    .line 659
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->dismissIndeterminateProgressDialog()V

    .line 660
    iget-boolean v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 661
    iput-boolean v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    .line 662
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->resetPerspective()V

    .line 664
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSaved(Z)V

    .line 665
    iget-boolean v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolInUseAndUndoRedoClicked:Z

    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->adjustClippingToolPostCommandExecute()V

    .line 668
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->resetToolInternalState()V

    .line 669
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->refreshDrawingSurface()V

    .line 670
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->refreshTopBarButtons()V

    return-void
.end method

.method public onCreateFilePostExecute(ILjava/io/File;)V
    .locals 1

    if-nez p2, :cond_0

    .line 863
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveErrorDialog()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 867
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    return-void

    .line 869
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onCreateTool()V
    .locals 1

    .line 790
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->createTool()V

    return-void
.end method

.method public onLoadImagePostExecute(ILandroid/net/Uri;Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;)V
    .locals 6

    if-nez p3, :cond_0

    .line 905
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showLoadErrorDialog()V

    return-void

    .line 908
    :cond_0
    iget-object v0, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 909
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v0, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V

    .line 910
    iput-boolean v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    .line 911
    iget-object p1, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->colorHistory:Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setColorHistoryAfterLoadImage(Lorg/catrobat/paintroid/colorpicker/ColorHistory;)V

    .line 912
    sget-object p1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object p1, Lorg/catrobat/paintroid/FileIO$FileType;->CATROBAT:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    if-eqz p2, :cond_1

    .line 914
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 916
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sget-object p3, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {p3}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    :cond_1
    return-void

    .line 921
    :cond_2
    iget-boolean v0, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->toBeScaled:Z

    if-eqz v0, :cond_3

    .line 922
    iget-object p3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p3, p2, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showScaleImageRequestDialog(Landroid/net/Uri;I)V

    return-void

    :cond_3
    const/4 v0, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_8

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 969
    iput-boolean v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    .line 970
    iget-object p1, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    goto :goto_0

    .line 971
    :cond_4
    iget-object p3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(Landroid/graphics/Bitmap;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 973
    :goto_0
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {p1}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    .line 974
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 975
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1, v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setCameraImageUri(Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 977
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 960
    :cond_6
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {p1}, Lorg/catrobat/paintroid/controller/ToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object p1

    sget-object p2, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne p1, p2, :cond_7

    .line 961
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    iget-object p2, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/controller/ToolController;->setBitmapFromSource(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_7
    const-string p1, "MainActivity"

    const-string p2, "importPngToFloatingBox: Current tool is no ImportTool as required"

    .line 963
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 927
    :cond_8
    iput-boolean v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    .line 928
    iget-object p1, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_a

    .line 929
    iget-object p1, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_9

    goto :goto_1

    .line 930
    :cond_9
    iget-object p3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v5, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v5, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(Landroid/graphics/Bitmap;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_1

    .line 933
    :cond_a
    iget-object p1, p3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->layerList:Ljava/util/List;

    if-nez p1, :cond_b

    goto :goto_1

    .line 934
    :cond_b
    iget-object p3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v5, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v5, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(Ljava/util/List;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 937
    :goto_1
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {p1}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    .line 938
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result p1

    if-nez p1, :cond_c

    .line 939
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1, v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 941
    :cond_c
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1, v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setCameraImageUri(Landroid/net/Uri;)V

    .line 942
    iput-boolean v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->wasImageLoaded:Z

    if-eqz p2, :cond_10

    .line 944
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 946
    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2, v0, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "jpeg"

    invoke-static {p1, p2, v2, v0, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_2

    .line 949
    :cond_d
    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2, v0, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 950
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object p2, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 951
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object p2, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    goto :goto_3

    .line 953
    :cond_e
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object p2, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    goto :goto_3

    .line 947
    :cond_f
    :goto_2
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object p2, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 948
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object p2, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 955
    :goto_3
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sget-object p3, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {p3}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    :cond_10
    :goto_4
    return-void
.end method

.method public onLoadImagePreExecute(I)V
    .locals 0

    return-void
.end method

.method public onNewImage()V
    .locals 3

    .line 329
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 330
    iput-boolean v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->resetPerspectiveAfterNextCommand:Z

    .line 331
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 332
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    const-string v1, "image"

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 333
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 334
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 335
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->internalMemoryPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Lorg/catrobat/paintroid/FileIO;->deleteTempFile(Ljava/io/File;)V

    .line 336
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-interface {v1, v2, v0}, Lorg/catrobat/paintroid/command/CommandFactory;->createInitCommand(II)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 338
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    return-void
.end method

.method public onSaveImagePostExecute(ILandroid/net/Uri;Z)V
    .locals 5

    .line 992
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->hideContentLoadingProgressBar()V

    if-nez p2, :cond_0

    .line 994
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveErrorDialog()V

    return-void

    :cond_0
    const-string v0, "null"

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    .line 998
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isExport:Z

    if-nez v2, :cond_1

    .line 999
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    sget v2, Lorg/catrobat/paintroid/R$string;->copy:I

    invoke-interface {v0, v2, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(II)V

    goto/16 :goto_5

    .line 1001
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/catrobat/paintroid/R$string;->copy_to:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1002
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getFileActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1003
    :cond_2
    sget-object v4, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v4, v3, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1005
    :goto_0
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    invoke-interface {v3, v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(Ljava/lang/String;I)V

    goto :goto_5

    .line 1008
    :cond_4
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isExport:Z

    if-nez v2, :cond_5

    .line 1009
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    sget v2, Lorg/catrobat/paintroid/R$string;->saved:I

    invoke-interface {v0, v2, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(II)V

    goto :goto_4

    .line 1011
    :cond_5
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/catrobat/paintroid/R$string;->saved_to:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1012
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getFileActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_2

    .line 1013
    :cond_6
    sget-object v4, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v4, v3, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1015
    :goto_2
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    invoke-interface {v3, v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showToast(Ljava/lang/String;I)V

    .line 1017
    :goto_4
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 1018
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSaved(Z)V

    .line 1020
    :goto_5
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p3, :cond_9

    .line 1021
    :cond_8
    iget-object p3, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p3, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->broadcastAddPictureToGallery(Landroid/net/Uri;)V

    :cond_9
    if-eq p1, v1, :cond_e

    const/4 p3, 0x2

    if-eq p1, p3, :cond_d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    const/4 p3, 0x4

    if-ne p1, p3, :cond_b

    .line 1028
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1029
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->returnToPocketCode(Ljava/lang/String;)V

    goto :goto_6

    .line 1031
    :cond_a
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->finishActivity()V

    :goto_6
    return-void

    .line 1038
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1035
    :cond_c
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startLoadImageActivity(I)V

    goto :goto_7

    .line 1024
    :cond_d
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->onNewImage()V

    :cond_e
    :goto_7
    return-void
.end method

.method public onSaveImagePreExecute(I)V
    .locals 0

    .line 984
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->showContentLoadingProgressBar()V

    return-void
.end method

.method public openTemporaryFile()Lorg/catrobat/paintroid/iotasks/WorkspaceReturnValue;
    .locals 2

    .line 1124
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/FileIO;->openTemporaryPictureFile(Lorg/catrobat/paintroid/command/serialization/CommandSerializer;)Lorg/catrobat/paintroid/iotasks/WorkspaceReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public rateUsClicked()V
    .locals 1

    .line 1089
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->rateUsClicked()V

    return-void
.end method

.method public redoClicked()V
    .locals 2

    .line 620
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {v0}, Landroidx/test/espresso/idling/CountingIdlingResource;->increment()V

    .line 621
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->isKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->hideKeyboard()V

    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->redoLineTool()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.LineTool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->redo()V

    .line 628
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 629
    iput-boolean v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolInUseAndUndoRedoClicked:Z

    .line 633
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {v0}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V

    return-void
.end method

.method public removeMoreOptionsItems(Landroid/view/Menu;)V
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->removeStandaloneMenuItems(Landroid/view/Menu;)V

    .line 740
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->hideTitleIfNotStandalone()V

    goto :goto_0

    .line 742
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->topBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;->removeCatroidMenuItems(Landroid/view/Menu;)V

    :goto_0
    return-void
.end method

.method public replaceImageClicked()V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkIfClippingToolNeedsAdjustment()V

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0, v0, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchBetweenVersions(IZ)V

    .line 159
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    return-void
.end method

.method public restoreState(ZZZZLandroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    .line 779
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setFullscreen(Z)V

    .line 780
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSaved(Z)V

    .line 781
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setOpenedFromCatroid(Z)V

    .line 782
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1, p4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setOpenedFromFormulaEditorInCatroid(Z)V

    .line 783
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1, p5}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setSavedPictureUri(Landroid/net/Uri;)V

    .line 784
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1, p6}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setCameraImageUri(Landroid/net/Uri;)V

    .line 785
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->restoreFragmentListeners()V

    .line 786
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {p1}, Lorg/catrobat/paintroid/controller/ToolController;->resetToolInternalStateOnImageLoaded()V

    return-void
.end method

.method public saveBeforeFinish()V
    .locals 4

    .line 221
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkIfClippingToolNeedsAdjustment()V

    .line 222
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 224
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 222
    invoke-interface {v0, v3, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveImageInformationDialogWhenStandalone(IIZ)V

    return-void
.end method

.method public saveBeforeLoadImage()V
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 175
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 173
    invoke-interface {v0, v3, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveImageInformationDialogWhenStandalone(IIZ)V

    return-void
.end method

.method public saveBeforeNewImage()V
    .locals 4

    .line 198
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkIfClippingToolNeedsAdjustment()V

    .line 199
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 201
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 199
    invoke-interface {v0, v3, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveImageInformationDialogWhenStandalone(IIZ)V

    return-void
.end method

.method public saveCopyClicked(Z)V
    .locals 3

    .line 230
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    const/4 v1, 0x2

    .line 232
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v2

    .line 230
    invoke-interface {v0, v1, v2, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveImageInformationDialogWhenStandalone(IIZ)V

    return-void
.end method

.method public saveCopyConfirmClicked(ILandroid/net/Uri;)V
    .locals 8

    .line 585
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkIfClippingToolNeedsAdjustment()V

    .line 586
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->refreshDrawingSurface()V

    .line 587
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    move-object v2, p0

    check-cast v2, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v7

    move v3, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v7}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->saveCopy(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;Landroid/net/Uri;Landroid/content/Context;)V

    return-void
.end method

.method public saveImageClicked()V
    .locals 4

    .line 238
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    .line 240
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getImageNumber()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 238
    invoke-interface {v0, v3, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveImageInformationDialogWhenStandalone(IIZ)V

    return-void
.end method

.method public saveImageConfirmClicked(ILandroid/net/Uri;)V
    .locals 8

    .line 579
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkIfClippingToolNeedsAdjustment()V

    .line 580
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->refreshDrawingSurface()V

    .line 581
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->interactor:Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;

    move-object v2, p0

    check-cast v2, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v7

    move v3, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v7}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;->saveImage(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;Landroid/net/Uri;Landroid/content/Context;)V

    return-void
.end method

.method public saveNewTemporaryImage()V
    .locals 3

    .line 1120
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->internalMemoryPath:Ljava/io/File;

    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/FileIO;->saveTemporaryPictureFile(Ljava/io/File;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;)V

    return-void
.end method

.method public sendFeedback()V
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->sendFeedback()V

    return-void
.end method

.method public setAntialiasingOnOkClicked()V
    .locals 1

    .line 1116
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->setAntialiasingOnToolPaint()V

    return-void
.end method

.method public setBottomNavigationColor(I)V
    .locals 1

    .line 691
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;->setColorButtonColor(I)V

    return-void
.end method

.method public final setClippingToolInUseAndUndoRedoClicked(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolInUseAndUndoRedoClicked:Z

    return-void
.end method

.method public final setClippingToolPaint(Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setColorHistoryAfterLoadImage(Lorg/catrobat/paintroid/colorpicker/ColorHistory;)V
    .locals 4

    if-nez p1, :cond_0

    .line 1131
    new-instance p1, Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    invoke-direct {p1}, Lorg/catrobat/paintroid/colorpicker/ColorHistory;-><init>()V

    .line 1132
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->setColorHistory(Lorg/catrobat/paintroid/colorpicker/ColorHistory;)V

    .line 1133
    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getColor()I

    move-result v0

    .line 1134
    invoke-virtual {p1}, Lorg/catrobat/paintroid/colorpicker/ColorHistory;->getColors()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1135
    invoke-virtual {p1}, Lorg/catrobat/paintroid/colorpicker/ColorHistory;->getColors()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1137
    :cond_1
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {p1}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lorg/catrobat/paintroid/tools/Tool$DefaultImpls;->changePaintColor$default(Lorg/catrobat/paintroid/tools/Tool;IZILjava/lang/Object;)V

    .line 1138
    :goto_0
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setBottomNavigationColor(I)V

    return-void
.end method

.method public setLayerAdapter(Lorg/catrobat/paintroid/ui/LayerAdapter;)V
    .locals 1

    const-string v0, "layerAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    return-void
.end method

.method public final setToolOptionsViewWasShown(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolOptionsViewWasShown:Z

    return-void
.end method

.method public shareImageClicked()V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkIfClippingToolNeedsAdjustment()V

    .line 247
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->refreshDrawingSurface()V

    .line 248
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getBitmapOfAllLayers()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startShareImageActivity(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public showAboutClicked()V
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showAboutDialog()V

    return-void
.end method

.method public showAdvancedSettingsClicked()V
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showAdvancedSettingsDialog()V

    return-void
.end method

.method public showCatrobatInformationDialog()V
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showCatrobatInformationDialog()V

    return-void
.end method

.method public showColorPickerClicked()V
    .locals 1

    .line 637
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showColorPickerDialog()V

    return-void
.end method

.method public showFeedbackDialog()V
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showFeedbackDialog()V

    return-void
.end method

.method public showHelpClicked()V
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startWelcomeActivity(I)V

    return-void
.end method

.method public showImportDialog()V
    .locals 1

    .line 1101
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showImageImportDialog()V

    return-void
.end method

.method public showJpgInformationDialog()V
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showJpgInformationDialog()V

    return-void
.end method

.method public showLayerMenuClicked()V
    .locals 6

    .line 641
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {v0}, Landroidx/test/espresso/idling/CountingIdlingResource;->increment()V

    .line 642
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    .line 643
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 644
    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 646
    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v2

    .line 647
    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 648
    invoke-interface {v4, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->updateImageView(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V

    :cond_2
    :goto_1
    if-lt v3, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_0

    .line 653
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkIfClippingToolNeedsAdjustment()V

    .line 654
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->drawerLayoutViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;

    const v1, 0x800005

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;->openDrawer(I)V

    .line 655
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {v0}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V

    return-void
.end method

.method public showOraInformationDialog()V
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showOraInformationDialog()V

    return-void
.end method

.method public showOverwriteDialog(IZ)V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0, p1, p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showOverwriteDialog(IZ)V

    return-void
.end method

.method public showPngInformationDialog()V
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showPngInformationDialog()V

    return-void
.end method

.method public showRateUsDialog()V
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showRateUsDialog()V

    return-void
.end method

.method public showZoomWindowSettingsClicked(Lorg/catrobat/paintroid/UserPreferences;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showZoomWindowSettingsDialog(Lorg/catrobat/paintroid/UserPreferences;)V

    return-void
.end method

.method public final switchBetweenVersions(I)V
    .locals 1

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, p1, v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchBetweenVersions(IZ)V

    return-void
.end method

.method public switchBetweenVersions(IZ)V
    .locals 1

    .line 350
    iput-boolean p2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isExport:Z

    .line 352
    iget-object p2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 353
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object p2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->getSavedPictureUri()Landroid/net/Uri;

    move-result-object p2

    sput-object p2, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 356
    :cond_0
    iget-object p2, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->isSdkAboveOrEqualM()Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_2

    .line 357
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->askForReadAndWriteExternalStoragePermission(I)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 365
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForDefaultFilename()V

    goto :goto_1

    :cond_2
    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    .line 369
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->isImageUnchanged()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->model:Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 373
    :cond_3
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->showSaveBeforeLoadImageDialog()V

    .line 374
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    goto :goto_1

    .line 370
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;->startLoadImageActivity(I)V

    .line 371
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setFirstCheckBoxInLayerMenu()V

    goto :goto_1

    .line 377
    :cond_5
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->askForReadAndWriteExternalStoragePermission(I)V

    :goto_1
    return-void
.end method

.method public toolClicked(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 1

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {v0}, Landroidx/test/espresso/idling/CountingIdlingResource;->increment()V

    .line 808
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->bottomBarViewHolder:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;->hide()V

    .line 809
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->hasToolOptionsView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {p1}, Lorg/catrobat/paintroid/controller/ToolController;->toggleToolOptionsView()V

    goto :goto_0

    .line 812
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->checkForImplicitToolApplication()V

    .line 813
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 815
    :goto_0
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {p1}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V

    return-void
.end method

.method public undoClicked()V
    .locals 5

    .line 591
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {v0}, Landroidx/test/espresso/idling/CountingIdlingResource;->increment()V

    .line 592
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->isKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->view:Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->hideKeyboard()V

    goto/16 :goto_1

    .line 595
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/paintroid/tools/implementation/EraserTool;

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isLastColorCommandOnTop()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->getColorCommandCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 596
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lorg/catrobat/paintroid/tools/Tool$DefaultImpls;->changePaintColor$default(Lorg/catrobat/paintroid/tools/Tool;IZILjava/lang/Object;)V

    .line 597
    :goto_0
    invoke-virtual {p0, v2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->setBottomNavigationColor(I)V

    .line 599
    :cond_3
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    if-eqz v0, :cond_5

    .line 600
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    .line 601
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolPaint:Landroid/graphics/Paint;

    .line 602
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    const/4 v0, 0x1

    .line 603
    iput-boolean v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->clippingToolInUseAndUndoRedoClicked:Z

    goto :goto_1

    .line 600
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.ClippingTool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_5
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;

    if-eqz v0, :cond_7

    .line 606
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoChangePaintColor(IZ)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.LineTool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_7
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->toolController:Lorg/catrobat/paintroid/controller/ToolController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/controller/ToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/paintroid/tools/implementation/EraserTool;

    if-eqz v0, :cond_8

    .line 609
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->undoIgnoringColorChanges()V

    goto :goto_1

    .line 611
    :cond_8
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 616
    :goto_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {v0}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V

    return-void
.end method
