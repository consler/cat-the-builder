.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
.super Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;
.source "ProjectListFragment.kt"

# interfaces
.implements Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$ProjectImportFinishedListener;,
        Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<",
        "Lorg/catrobat/catroid/common/ProjectData;",
        ">;",
        "Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProjectListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProjectListFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,582:1\n37#2,2:583\n25#3,3:585\n*E\n*S KotlinDebug\n*F\n+ 1 ProjectListFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment\n*L\n309#1,2:583\n82#1,3:585\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0095\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f*\u0001\u0011\u0008\u0007\u0018\u0000 Z2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u0003:\u0002Z[B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0018\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u001a\u0010\"\u001a\u00020\u001c2\u0010\u0010#\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010$H\u0014J\u001a\u0010%\u001a\u00020\u001c2\u0010\u0010#\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010$H\u0014J\u001e\u0010&\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020(2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0006H\u0002J\u0008\u0010*\u001a\u00020+H\u0015J\u0008\u0010,\u001a\u00020+H\u0014J\u0008\u0010-\u001a\u00020+H\u0014J\u0012\u0010.\u001a\u00020\u001c2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0002J\u0016\u0010/\u001a\u00020\u001c2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0006H\u0002J\u0008\u00100\u001a\u00020\u001cH\u0002J\u0008\u00101\u001a\u00020\u001cH\u0003J\u0008\u00102\u001a\u00020\u001cH\u0014J\u0008\u00103\u001a\u00020\nH\u0014J\u0012\u00104\u001a\u00020\u001c2\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J\"\u00107\u001a\u00020\u001c2\u0006\u00108\u001a\u00020+2\u0006\u00109\u001a\u00020+2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0010\u0010:\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020\nH\u0002J\u0008\u0010<\u001a\u00020\u001cH\u0002J\u0010\u0010=\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020\nH\u0002J\u0012\u0010>\u001a\u00020\u001c2\u0008\u0010?\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010@\u001a\u00020\u001c2\u0008\u0010?\u001a\u0004\u0018\u00010\u00022\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J\u0010\u0010C\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020\nH\u0016J\u0010\u0010D\u001a\u00020\n2\u0006\u0010?\u001a\u00020EH\u0016J\u0010\u0010F\u001a\u00020\u001c2\u0006\u0010G\u001a\u00020HH\u0016J\u0010\u0010I\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020\nH\u0002J\u0008\u0010J\u001a\u00020\u001cH\u0016J\u001c\u0010K\u001a\u00020\u001c2\u0008\u0010?\u001a\u0004\u0018\u00010\u00022\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0016J\u001a\u0010N\u001a\u00020\u001c2\u0010\u0010#\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010$H\u0014J\u0010\u0010O\u001a\u00020\u001c2\u0006\u0010P\u001a\u00020+H\u0014J\u0016\u0010Q\u001a\u00020\u001c2\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0006H\u0002J\u001c\u0010S\u001a\u00020\u001c2\u0008\u0010?\u001a\u0004\u0018\u00010\u00022\u0008\u0010T\u001a\u0004\u0018\u00010!H\u0014J\u0010\u0010U\u001a\u00020\u001c2\u0006\u0010V\u001a\u00020\nH\u0002J\u0008\u0010W\u001a\u00020\u001cH\u0002J\u0012\u0010X\u001a\u00020\u001c2\u0008\u0010?\u001a\u0004\u0018\u00010\u0002H\u0002J\u0008\u0010V\u001a\u00020\u001cH\u0002J\u0008\u0010Y\u001a\u00020\u001cH\u0014R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u000f\u00a8\u0006\\"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;",
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;",
        "Lorg/catrobat/catroid/common/ProjectData;",
        "Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;",
        "()V",
        "filesForImportTask",
        "Ljava/util/ArrayList;",
        "Ljava/io/File;",
        "filesForUnzipAndImportTask",
        "hasImportTaskFinished",
        "",
        "hasUnzipAndImportTaskFinished",
        "itemList",
        "",
        "getItemList",
        "()Ljava/util/List;",
        "projectImportListener",
        "org/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1",
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;",
        "projectManager",
        "Lorg/catrobat/catroid/ProjectManager;",
        "getProjectManager",
        "()Lorg/catrobat/catroid/ProjectManager;",
        "projectManager$delegate",
        "Lkotlin/Lazy;",
        "sortedItemList",
        "getSortedItemList",
        "checkForEmptyList",
        "",
        "copyFileContentToCacheFile",
        "uri",
        "Landroid/net/Uri;",
        "fileName",
        "",
        "copyItems",
        "selectedItems",
        "",
        "deleteItems",
        "extractAllUris",
        "data",
        "Landroid/content/Intent;",
        "uris",
        "getDeleteAlertTitleId",
        "",
        "getRenameDialogHint",
        "getRenameDialogTitle",
        "importProject",
        "importProjectUris",
        "importUsingFilePickerActivity",
        "importUsingSystemFilePicker",
        "initializeAdapter",
        "isBackpackEmpty",
        "onActivityCreated",
        "savedInstance",
        "Landroid/os/Bundle;",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "onCopyProjectComplete",
        "success",
        "onImportError",
        "onImportProjectFinished",
        "onItemClick",
        "item",
        "onItemLongClick",
        "holder",
        "Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;",
        "onLoadFinished",
        "onOptionsItemSelected",
        "Landroid/view/MenuItem;",
        "onPrepareOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onRenameFinished",
        "onResume",
        "onSettingsClick",
        "view",
        "Landroid/view/View;",
        "packItems",
        "prepareActionMode",
        "type",
        "prepareFilesForImport",
        "urisToImport",
        "renameItem",
        "name",
        "setAdapterItems",
        "sortProjects",
        "showImportChooser",
        "showProjectOptionsFragment",
        "switchToBackpack",
        "Companion",
        "ProjectImportFinishedListener",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;

.field private static final PERMISSIONS_REQUEST_IMPORT_FROM_EXTERNAL_STORAGE:I = 0x321

.field private static final REQUEST_IMPORT_PROJECT:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private filesForImportTask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private filesForUnzipAndImportTask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private hasImportTaskFinished:Z

.field private hasUnzipAndImportTaskFinished:Z

.field private final projectImportListener:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;

.field private final projectManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;

    .line 561
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProjectListFragment::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 76
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;-><init>()V

    .line 82
    move-object v0, p0

    .line 585
    .local v0, "$this$inject$iv":Landroid/content/ComponentCallbacks;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 586
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 587
    .local v3, "$i$f$inject":I
    sget-object v4, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$$special$$inlined$inject$1;

    invoke-direct {v5, v0, v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$$special$$inlined$inject$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .end local v0    # "$this$inject$iv":Landroid/content/ComponentCallbacks;
    .end local v1    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "$i$f$inject":I
    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->projectManager$delegate:Lkotlin/Lazy;

    .line 133
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->projectImportListener:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;

    return-void
.end method

.method public static final synthetic access$getFilesForImportTask$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    .line 76
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForImportTask:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getHasImportTaskFinished$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    .line 76
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->hasImportTaskFinished:Z

    return v0
.end method

.method public static final synthetic access$getHasUnzipAndImportTaskFinished$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    .line 76
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->hasUnzipAndImportTaskFinished:Z

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onCopyProjectComplete(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
    .param p1, "success"    # Z

    .line 76
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onCopyProjectComplete(Z)V

    return-void
.end method

.method public static final synthetic access$onImportProjectFinished(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
    .param p1, "success"    # Z

    .line 76
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onImportProjectFinished(Z)V

    return-void
.end method

.method public static final synthetic access$onRenameFinished(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
    .param p1, "success"    # Z

    .line 76
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onRenameFinished(Z)V

    return-void
.end method

.method public static final synthetic access$setAdapterItems(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
    .param p1, "sortProjects"    # Z

    .line 76
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setAdapterItems(Z)V

    return-void
.end method

.method public static final synthetic access$setFilesForImportTask$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
    .param p1, "<set-?>"    # Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForImportTask:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setHasImportTaskFinished$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
    .param p1, "<set-?>"    # Z

    .line 76
    iput-boolean p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->hasImportTaskFinished:Z

    return-void
.end method

.method public static final synthetic access$setHasUnzipAndImportTaskFinished$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
    .param p1, "<set-?>"    # Z

    .line 76
    iput-boolean p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->hasUnzipAndImportTaskFinished:Z

    return-void
.end method

.method public static final synthetic access$showProjectOptionsFragment(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Lorg/catrobat/catroid/common/ProjectData;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
    .param p1, "item"    # Lorg/catrobat/catroid/common/ProjectData;

    .line 76
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->showProjectOptionsFragment(Lorg/catrobat/catroid/common/ProjectData;)V

    return-void
.end method

.method private final copyFileContentToCacheFile(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 342
    nop

    .line 343
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 344
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    .line 342
    invoke-static {v0, p1, v1, p2}, Lorg/catrobat/catroid/io/StorageOperations;->copyUriToDir(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 346
    .local v0, "projectFile":Ljava/io/File;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForUnzipAndImportTask:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->hasUnzipAndImportTaskFinished:Z

    .line 348
    return-void
.end method

.method private final extractAllUris(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "uris"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 285
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 286
    .local v0, "singleUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 289
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 290
    .local v1, "clipData":Landroid/content/ClipData;
    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    .line 292
    .local v2, "itemCount":I
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 293
    .local v3, "idx":I
    invoke-virtual {v1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    const-string v5, "clipData.getItemAt(idx)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    nop

    .end local v3    # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v2    # "itemCount":I
    :cond_1
    :goto_1
    nop

    .line 297
    return-void
.end method

.method private final getItemList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 174
    .local v0, "items":Ljava/util/List;
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;->getLocalProjectList(Ljava/util/List;)V

    .line 175
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$itemList$1;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$itemList$1;

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    return-object v0
.end method

.method public static final getLocalProjectList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;->getLocalProjectList(Ljava/util/List;)V

    return-void
.end method

.method private final getProjectManager()Lorg/catrobat/catroid/ProjectManager;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->projectManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ProjectManager;

    return-object v0
.end method

.method private final getSortedItemList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 184
    .local v0, "items":Ljava/util/List;
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;->getLocalProjectList(Ljava/util/List;)V

    .line 185
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$sortedItemList$1;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$sortedItemList$1;

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 190
    return-object v0
.end method

.method public static final getTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final importProject(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .line 258
    if-nez p1, :cond_0

    .line 259
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onImportError()V

    .line 260
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, "uris":Ljava/util/ArrayList;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    if-nez v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 264
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onImportError()V

    .line 265
    return-void

    .line 267
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.util.ArrayList<android.net.Uri>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_4
    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->extractAllUris(Landroid/content/Intent;Ljava/util/ArrayList;)V

    .line 271
    :goto_1
    nop

    .line 272
    nop

    .line 273
    :try_start_0
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->importProjectUris(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->TAG:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Cannot resolve project to import."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .line 277
    return-void
.end method

.method private final importProjectUris(Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "uris"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 300
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->prepareFilesForImport(Ljava/util/ArrayList;)V

    .line 301
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForImportTask:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .local v0, "$this$apply":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 302
    .local v2, "$i$a$-apply-ProjectListFragment$importProjectUris$1":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 303
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForImportTask:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 304
    .local v3, "filesToImport":Ljava/util/List;
    :goto_0
    new-instance v4, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;

    invoke-direct {v4, v3}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;-><init>(Ljava/util/List;)V

    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->projectImportListener:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;

    check-cast v5, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->setListener(Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;)Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 306
    .end local v3    # "filesToImport":Ljava/util/List;
    :cond_1
    nop

    .line 301
    .end local v0    # "$this$apply":Ljava/util/ArrayList;
    .end local v2    # "$i$a$-apply-ProjectListFragment$importProjectUris$1":I
    nop

    .line 307
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForUnzipAndImportTask:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .restart local v0    # "$this$apply":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 308
    .local v2, "$i$a$-apply-ProjectListFragment$importProjectUris$2":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 309
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForUnzipAndImportTask:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    check-cast v3, Ljava/util/Collection;

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 583
    .local v4, "$i$f$toTypedArray":I
    move-object v5, v3

    .line 584
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    new-array v6, v1, [Ljava/io/File;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v6, [Ljava/io/File;

    if-eqz v6, :cond_4

    goto :goto_1

    .restart local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v4    # "$i$f$toTypedArray":I
    .restart local v5    # "thisCollection$iv":Ljava/util/Collection;
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    new-array v6, v1, [Ljava/io/File;

    :goto_1
    move-object v1, v6

    .line 310
    .local v1, "filesToUnzipAndImport":[Ljava/io/File;
    nop

    .line 311
    nop

    .line 310
    new-instance v3, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter;

    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$importProjectUris$$inlined$apply$lambda$1;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$importProjectUris$$inlined$apply$lambda$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v6}, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter;-><init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 311
    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter;->unZipAndImportAsync([Ljava/io/File;)V

    .line 313
    .end local v1    # "filesToUnzipAndImport":[Ljava/io/File;
    :cond_5
    nop

    .line 307
    .end local v0    # "$this$apply":Ljava/util/ArrayList;
    .end local v2    # "$i$a$-apply-ProjectListFragment$importProjectUris$2":I
    nop

    .line 314
    :cond_6
    return-void
.end method

.method private final importUsingFilePickerActivity()V
    .locals 4

    .line 236
    nop

    .line 247
    nop

    .line 236
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$importUsingFilePickerActivity$1;

    .line 237
    nop

    .line 238
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 239
    const/16 v2, 0x321

    const v3, 0x7f120710

    invoke-direct {v0, p0, v2, v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$importUsingFilePickerActivity$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;ILjava/util/List;I)V

    .line 247
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$importUsingFilePickerActivity$1;->execute(Landroid/app/Activity;)V

    .line 248
    return-void
.end method

.method private final importUsingSystemFilePicker()V
    .locals 5

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 226
    .local v2, "$i$a$-apply-ProjectListFragment$importUsingSystemFilePicker$intent$1":I
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v3, "*/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v4, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    nop

    .line 225
    .end local v1    # "$this$apply":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-ProjectListFragment$importUsingSystemFilePicker$intent$1":I
    nop

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12050b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requireContext().resourc\u2026(R.string.import_project)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .local v1, "title":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 233
    return-void
.end method

.method private final onCopyProjectComplete(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 455
    if-eqz p1, :cond_0

    .line 456
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v0, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setAdapterItems(Z)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1202d7

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 459
    :goto_0
    nop

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 461
    return-void
.end method

.method private final onImportError()V
    .locals 2

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 281
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1202e4

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 282
    return-void
.end method

.method private final onImportProjectFinished(Z)V
    .locals 7
    .param p1, "success"    # Z

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v0, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setAdapterItems(Z)V

    .line 101
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1202e4

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    goto :goto_2

    .line 104
    :cond_0
    nop

    .line 105
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 107
    const v3, 0x7f10001b

    .line 108
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForUnzipAndImportTask:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 109
    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForUnzipAndImportTask:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 106
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    :goto_2
    nop

    .line 113
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForUnzipAndImportTask:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 114
    :cond_3
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 115
    return-void
.end method

.method private final onRenameFinished(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 118
    if-eqz p1, :cond_1

    .line 119
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->hasImportTaskFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->hasUnzipAndImportTaskFinished:Z

    if-eqz v0, :cond_0

    .line 120
    nop

    .line 121
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 122
    const v1, 0x7f12070b

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForUnzipAndImportTask:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v0, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setAdapterItems(Z)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120303

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 129
    :goto_0
    nop

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 131
    return-void
.end method

.method private final prepareFilesForImport(Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "urisToImport"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 318
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 319
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v2, v1}, Lorg/catrobat/catroid/io/StorageOperations;->resolveFileName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 320
    .local v9, "fileName":Ljava/lang/String;
    const-string v3, "fileName"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v9

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, ".catrobat"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v4, v10, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 321
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120601

    invoke-static {v3, v4}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 322
    goto :goto_1

    .line 324
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, ".catrobat"

    const-string v5, ".zip"

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 326
    .end local v9    # "fileName":Ljava/lang/String;
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, "uri"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    invoke-direct {p0, v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->copyFileContentToCacheFile(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 329
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "uri.path ?: return"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    .local v4, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v5, "src":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 332
    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForImportTask:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_2
    iput-boolean v10, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->hasImportTaskFinished:Z

    goto :goto_1

    .line 335
    :cond_3
    invoke-direct {p0, v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->copyFileContentToCacheFile(Landroid/net/Uri;Ljava/lang/String;)V

    .line 336
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "src":Ljava/io/File;
    :goto_1
    nop

    .line 337
    nop

    .line 317
    goto/16 :goto_0

    .line 329
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v3    # "fileName":Ljava/lang/String;
    :cond_4
    return-void

    .line 339
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private final setAdapterItems(Z)V
    .locals 2
    .param p1, "sortProjects"    # Z

    .line 547
    if-eqz p1, :cond_0

    .line 548
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getSortedItemList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->setItems(Ljava/util/List;)V

    goto :goto_0

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->setItems(Ljava/util/List;)V

    .line 551
    :goto_0
    nop

    .line 552
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 553
    return-void
.end method

.method private final showImportChooser()V
    .locals 2

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 217
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->importUsingSystemFilePicker()V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->importUsingFilePickerActivity()V

    .line 220
    :goto_0
    nop

    .line 221
    return-void
.end method

.method private final showProjectOptionsFragment(Lorg/catrobat/catroid/common/ProjectData;)V
    .locals 6
    .param p1, "item"    # Lorg/catrobat/catroid/common/ProjectData;

    .line 510
    if-eqz p1, :cond_0

    .line 511
    nop

    .line 512
    const v0, 0x7f1202ea

    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v1

    .line 513
    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ProjectData;->getDirectory()Ljava/io/File;

    move-result-object v2

    .line 514
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    .line 512
    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/io/XstreamSerializer;->loadProject(Ljava/io/File;Landroid/content/Context;)Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 516
    .local v1, "project":Lorg/catrobat/catroid/content/Project;
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ProjectManager;->setCurrentProject(Lorg/catrobat/catroid/content/Project;)V

    .line 517
    nop

    .line 522
    nop

    .line 517
    nop

    .line 521
    nop

    .line 517
    nop

    .line 518
    nop

    .line 517
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 519
    const v3, 0x7f0a03b7

    new-instance v4, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;

    invoke-direct {v4}, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;-><init>()V

    check-cast v4, Landroidx/fragment/app/Fragment;

    sget-object v5, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->Companion:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$Companion;

    invoke-virtual {v5}, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    .line 518
    invoke-virtual {v2, v3, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 521
    sget-object v3, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->Companion:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$Companion;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 522
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/catrobat/catroid/exceptions/LoadingProjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    .end local v1    # "project":Lorg/catrobat/catroid/content/Project;
    :catch_0
    move-exception v1

    .line 527
    .local v1, "exception":Lorg/catrobat/catroid/exceptions/LoadingProjectException;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 528
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->TAG:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    .end local v1    # "exception":Lorg/catrobat/catroid/exceptions/LoadingProjectException;
    :catch_1
    move-exception v1

    .line 524
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 525
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->TAG:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v1    # "exception":Ljava/io/IOException;
    :goto_0
    nop

    .line 530
    return-void

    .line 510
    :cond_0
    return-void
.end method

.method private final sortProjects()V
    .locals 3

    .line 203
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v1, v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    .line 204
    nop

    .line 210
    nop

    .line 204
    nop

    .line 206
    nop

    .line 204
    nop

    .line 205
    nop

    .line 204
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    nop

    .line 208
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v1, v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    .line 206
    const-string v2, "sortProjectsList"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v0, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setAdapterItems(Z)V

    .line 212
    return-void
.end method


# virtual methods
.method public final checkForEmptyList()V
    .locals 2

    .line 413
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const-string v1, "adapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 415
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->initializeDefaultProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v0, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setAdapterItems(Z)V

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1207db

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 420
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 421
    :cond_1
    :goto_0
    nop

    .line 423
    return-void
.end method

.method protected copyItems(Ljava/util/List;)V
    .locals 18
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;)V"
        }
    .end annotation

    .line 370
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->finishActionMode()V

    .line 371
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const-string v3, "adapter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 373
    .local v1, "usedProjectNames":Ljava/util/ArrayList;
    if-eqz p1, :cond_2

    .line 374
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/ProjectData;

    .line 375
    .local v3, "projectData":Lorg/catrobat/catroid/common/ProjectData;
    if-eqz v3, :cond_0

    .line 376
    nop

    .line 377
    nop

    .line 376
    iget-object v4, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    .line 377
    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ProjectData;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 376
    nop

    .line 378
    .local v4, "name":Ljava/lang/String;
    new-instance v11, Lorg/catrobat/catroid/common/ProjectData;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lorg/catrobat/catroid/common/ProjectData;-><init>(Ljava/lang/String;Ljava/io/File;DZ)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v12, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ProjectData;->getDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "projectData.directory"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "name"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v5, v4}, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    .local v12, "projectCopier":Lorg/catrobat/catroid/io/asynctask/ProjectCopier;
    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$copyItems$1;

    invoke-direct {v5, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$copyItems$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)V

    move-object v13, v5

    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->copyProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectCopier;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)V

    .line 374
    .end local v3    # "projectData":Lorg/catrobat/catroid/common/ProjectData;
    .end local v4    # "name":Ljava/lang/String;
    .end local v12    # "projectCopier":Lorg/catrobat/catroid/io/asynctask/ProjectCopier;
    :cond_0
    goto :goto_0

    .line 382
    :cond_1
    return-void

    .line 373
    :cond_2
    return-void
.end method

.method protected deleteItems(Ljava/util/List;)V
    .locals 7
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;)V"
        }
    .end annotation

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 389
    if-eqz p1, :cond_2

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/common/ProjectData;

    .line 391
    .local v2, "item":Lorg/catrobat/catroid/common/ProjectData;
    if-eqz v2, :cond_0

    .line 392
    nop

    .line 393
    :try_start_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ProjectData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/ProjectManager;->deleteDownloadedProjectInformation(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ProjectData;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lorg/catrobat/catroid/io/StorageOperations;->deleteDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 395
    :catch_0
    move-exception v3

    .line 396
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->TAG:Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 398
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->remove(Ljava/lang/Object;)Z

    .line 390
    .end local v2    # "item":Lorg/catrobat/catroid/common/ProjectData;
    :cond_0
    goto :goto_0

    .line 400
    :cond_1
    nop

    .line 401
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 402
    const v3, 0x7f100014

    .line 403
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 404
    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 401
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {v1, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->finishActionMode()V

    .line 408
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v0, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setAdapterItems(Z)V

    .line 409
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->checkForEmptyList()V

    .line 410
    return-void

    .line 389
    :cond_2
    return-void
.end method

.method protected getDeleteAlertTitleId()I
    .locals 1

    .line 385
    const v0, 0x7f10000c

    return v0
.end method

.method protected getRenameDialogHint()I
    .locals 1

    .line 427
    const v0, 0x7f1206e7

    return v0
.end method

.method protected getRenameDialogTitle()I
    .locals 1

    .line 425
    const v0, 0x7f120707

    return v0
.end method

.method protected initializeAdapter()V
    .locals 2

    .line 166
    const-string v0, "showDetailsProjectList"

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    .line 167
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ProjectAdapter;

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ProjectAdapter;-><init>(Ljava/util/List;)V

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 168
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onAdapterReady()V

    .line 169
    return-void
.end method

.method protected isBackpackEmpty()Z
    .locals 1

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .line 85
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForImportTask:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->filesForUnzipAndImportTask:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->hasUnzipAndImportTaskFinished:Z

    .line 89
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->hasImportTaskFinished:Z

    .line 90
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->importProject(Landroid/content/Intent;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "merge"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showSettings:Z

    .line 95
    const/4 v0, 0x6

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->actionModeType:I

    .line 97
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 251
    invoke-super {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 253
    invoke-direct {p0, p3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->importProject(Landroid/content/Intent;)V

    .line 255
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Lorg/catrobat/catroid/common/ProjectData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onItemClick(Lorg/catrobat/catroid/common/ProjectData;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Lorg/catrobat/catroid/common/Nameable;)V
    .locals 0

    .line 76
    check-cast p1, Lorg/catrobat/catroid/common/ProjectData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onItemClick(Lorg/catrobat/catroid/common/ProjectData;)V

    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/common/ProjectData;)V
    .locals 5
    .param p1, "item"    # Lorg/catrobat/catroid/common/ProjectData;

    .line 464
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->actionModeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 465
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/common/Nameable;

    invoke-super {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onItemClick(Lorg/catrobat/catroid/common/Nameable;)V

    .line 466
    return-void

    .line 468
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->actionModeType:I

    if-nez v0, :cond_2

    .line 469
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 470
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ProjectData;->getDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 471
    .local v1, "directoryFile":Ljava/io/File;
    new-instance v2, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, v3}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;-><init>(Ljava/io/File;Landroid/content/Context;)V

    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->setListener(Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;)Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->loadProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectLoader;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V

    goto :goto_0

    .line 470
    .end local v1    # "directoryFile":Ljava/io/File;
    :cond_1
    return-void

    .line 473
    :cond_2
    :goto_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->actionModeType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 476
    nop

    .line 477
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ProjectData;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "item!!.directory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "item!!.directory.absoluteFile"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 475
    const-string v2, "merge"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 480
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 482
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public bridge synthetic onItemLongClick(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    .line 76
    check-cast p1, Lorg/catrobat/catroid/common/ProjectData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onItemLongClick(Lorg/catrobat/catroid/common/ProjectData;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    return-void
.end method

.method public bridge synthetic onItemLongClick(Lorg/catrobat/catroid/common/Nameable;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    .line 76
    check-cast p1, Lorg/catrobat/catroid/common/ProjectData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onItemLongClick(Lorg/catrobat/catroid/common/ProjectData;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    return-void
.end method

.method public onItemLongClick(Lorg/catrobat/catroid/common/ProjectData;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0
    .param p1, "item"    # Lorg/catrobat/catroid/common/ProjectData;
    .param p2, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    .line 485
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onItemClick(Lorg/catrobat/catroid/common/ProjectData;)V

    .line 486
    return-void
.end method

.method public onLoadFinished(Z)V
    .locals 4
    .param p1, "success"    # Z

    .line 441
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 442
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/catrobat/catroid/ui/ProjectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 444
    nop

    .line 445
    nop

    .line 443
    const-string v2, "fragmentPosition"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 450
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1202ea

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 451
    :goto_0
    nop

    .line 452
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a03e8

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a05c6

    if-eq v0, v1, :cond_0

    .line 197
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 196
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->sortProjects()V

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->showImportChooser()V

    .line 198
    :goto_0
    nop

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 534
    nop

    .line 535
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 534
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 535
    const-string v2, "sortProjectsList"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    .line 536
    nop

    .line 537
    nop

    .line 536
    const v0, 0x7f0a05c6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v1, v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    if-eqz v1, :cond_0

    .line 539
    const v1, 0x7f1207ab

    goto :goto_0

    .line 541
    :cond_0
    const v1, 0x7f12074d

    .line 538
    :goto_0
    nop

    .line 537
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 544
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 155
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->actionModeType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 156
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->setCurrentProject(Lorg/catrobat/catroid/content/Project;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v0, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setAdapterItems(Z)V

    .line 160
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->checkForEmptyList()V

    .line 161
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->showBottomBar(Landroid/app/Activity;)V

    .line 162
    invoke-super {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onResume()V

    .line 163
    return-void
.end method

.method public bridge synthetic onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 76
    check-cast p1, Lorg/catrobat/catroid/common/ProjectData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onSettingsClick(Lorg/catrobat/catroid/common/ProjectData;Landroid/view/View;)V

    return-void
.end method

.method public onSettingsClick(Lorg/catrobat/catroid/common/ProjectData;Landroid/view/View;)V
    .locals 5
    .param p1, "item"    # Lorg/catrobat/catroid/common/ProjectData;
    .param p2, "view"    # Landroid/view/View;

    .line 489
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 490
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 491
    .local v1, "itemList":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f0e000b

    invoke-virtual {v2, v4, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 493
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;

    invoke-direct {v2, p0, v1, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Ljava/util/List;Lorg/catrobat/catroid/common/ProjectData;)V

    check-cast v2, Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 502
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0a0059

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "popupMenu.menu.findItem(R.id.backpack)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 503
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a0485

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.new_group)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 504
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a0486

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.new_scene)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 505
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a05b0

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.show_details)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 506
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 507
    return-void
.end method

.method protected packItems(Ljava/util/List;)V
    .locals 3
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;)V"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Projects cannot be backpacked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected prepareActionMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 351
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 352
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput v0, v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->selectionMode:I

    goto :goto_0

    .line 353
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 354
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const/4 v1, 0x1

    iput v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->selectionMode:I

    .line 355
    :cond_1
    :goto_0
    nop

    .line 356
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->prepareActionMode(I)V

    .line 357
    return-void
.end method

.method public bridge synthetic renameItem(Lorg/catrobat/catroid/common/Nameable;Ljava/lang/String;)V
    .locals 0

    .line 76
    check-cast p1, Lorg/catrobat/catroid/common/ProjectData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->renameItem(Lorg/catrobat/catroid/common/ProjectData;Ljava/lang/String;)V

    return-void
.end method

.method protected renameItem(Lorg/catrobat/catroid/common/ProjectData;Ljava/lang/String;)V
    .locals 8
    .param p1, "item"    # Lorg/catrobat/catroid/common/ProjectData;
    .param p2, "name"    # Ljava/lang/String;

    .line 430
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->finishActionMode()V

    .line 431
    if-eqz p1, :cond_2

    .line 432
    if-eqz p2, :cond_1

    .line 433
    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ProjectData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 435
    nop

    .line 436
    nop

    .line 435
    new-instance v2, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ProjectData;->getDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "item.directory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, p2}, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$renameItem$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$renameItem$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;->renameProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)V

    .line 438
    :cond_0
    return-void

    .line 432
    :cond_1
    return-void

    .line 431
    :cond_2
    return-void
.end method

.method protected switchToBackpack()V
    .locals 3

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Projects cannot be backpacked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
