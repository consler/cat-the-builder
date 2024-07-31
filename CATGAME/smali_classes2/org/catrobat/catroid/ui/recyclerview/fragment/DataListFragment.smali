.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;
.super Landroidx/fragment/app/Fragment;
.source "DataListFragment.kt"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$ActionModeType;,
        Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;,
        Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/ActionMode$Callback;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener<",
        "Lorg/catrobat/catroid/formulaeditor/UserData<",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataListFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,556:1\n1#2:557\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008!\u0018\u0000 m2\u00020\u00012\u00020\u00022\u00020\u00032\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0004:\u0003lmnB\u0005\u00a2\u0006\u0002\u0010\u0006J\u001a\u0010\u001f\u001a\u00020 2\u0010\u0010!\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\"H\u0002J\u001e\u0010#\u001a\u00020 2\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0002J\u0008\u0010\'\u001a\u00020 H\u0002J\u0008\u0010(\u001a\u00020 H\u0002J\u0006\u0010)\u001a\u00020 J\\\u0010*\u001a\u00020 2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\"2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002030.2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u0002030.H\u0002J\u0008\u00105\u001a\u00020 H\u0002J\u0006\u00106\u001a\u00020 J\u0018\u00107\u001a\u00020\u00172\u0006\u00108\u001a\u00020\u00082\u0006\u0010$\u001a\u000209H\u0016J\u0012\u0010:\u001a\u00020 2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0016J\u0008\u0010=\u001a\u00020 H\u0002J\u0018\u0010>\u001a\u00020\u00172\u0006\u00108\u001a\u00020\u00082\u0006\u0010?\u001a\u00020@H\u0016J\u0018\u0010A\u001a\u00020 2\u0006\u0010?\u001a\u00020@2\u0006\u0010B\u001a\u00020CH\u0016J&\u0010D\u001a\u0004\u0018\u00010E2\u0006\u0010B\u001a\u00020F2\u0008\u0010G\u001a\u0004\u0018\u00010H2\u0008\u0010I\u001a\u0004\u0018\u00010<H\u0016J\u0010\u0010J\u001a\u00020 2\u0006\u00108\u001a\u00020\u0008H\u0016J\u0014\u0010K\u001a\u00020 2\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0016J\u001c\u0010L\u001a\u00020 2\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010M\u001a\u00020NH\u0016J\u0010\u0010O\u001a\u00020\u00172\u0006\u0010$\u001a\u000209H\u0016J\u0008\u0010P\u001a\u00020 H\u0016J\u0018\u0010Q\u001a\u00020\u00172\u0006\u00108\u001a\u00020\u00082\u0006\u0010?\u001a\u00020@H\u0016J\u0010\u0010R\u001a\u00020 2\u0006\u0010?\u001a\u00020@H\u0016J\u0008\u0010S\u001a\u00020 H\u0016J\u0010\u0010T\u001a\u00020 2\u0006\u0010U\u001a\u00020\nH\u0016J\u001e\u0010V\u001a\u00020 2\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0008\u0010W\u001a\u0004\u0018\u00010EH\u0016J\u0008\u0010X\u001a\u00020 H\u0016J\u001e\u0010Y\u001a\u00020 2\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0008\u0010Z\u001a\u0004\u0018\u00010&H\u0002J\u0008\u0010[\u001a\u00020 H\u0002J\u0010\u0010\\\u001a\u00020 2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u000e\u0010]\u001a\u00020 2\u0006\u0010^\u001a\u00020\u0017J\u0016\u0010_\u001a\u00020 2\u000c\u0010`\u001a\u0008\u0012\u0004\u0012\u0002030.H\u0002J\u0016\u0010a\u001a\u00020 2\u000c\u0010`\u001a\u0008\u0012\u0004\u0012\u00020/0.H\u0002J\u0006\u0010b\u001a\u00020\u0017J\u001a\u0010c\u001a\u00020 2\u0010\u0010!\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\"H\u0002J\u001a\u0010d\u001a\u00020 2\u0010\u0010!\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\"H\u0002J\u001a\u0010e\u001a\u00020 2\u0010\u0010!\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\"H\u0002J\u001c\u0010f\u001a\u00020 2\u000c\u0010`\u001a\u0008\u0012\u0004\u0012\u0002030.2\u0006\u0010g\u001a\u00020\u0017J\u001c\u0010h\u001a\u00020 2\u000c\u0010`\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u0006\u0010g\u001a\u00020\u0017J\\\u0010i\u001a\u00020 2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\"2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002030.2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u0002030.H\u0002J\u0010\u0010j\u001a\u00020 2\u0006\u0010k\u001a\u00020\nH\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u0006\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006o"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/ActionMode$Callback;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;",
        "Lorg/catrobat/catroid/formulaeditor/UserData;",
        "()V",
        "actionMode",
        "Landroid/view/ActionMode;",
        "actionModeType",
        "",
        "getActionModeType$annotations",
        "getActionModeType",
        "()I",
        "setActionModeType",
        "(I)V",
        "adapter",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;",
        "emptyView",
        "Landroid/widget/TextView;",
        "formulaEditorDataInterface",
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;",
        "indexVariable",
        "",
        "observer",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "parentScriptBrick",
        "Lorg/catrobat/catroid/content/bricks/ScriptBrick;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "sortData",
        "deleteItems",
        "",
        "selectedItems",
        "",
        "editItem",
        "item",
        "value",
        "",
        "finishActionMode",
        "handleContextualAction",
        "indexAndSort",
        "initialIndexing",
        "userDefinedBrickInputs",
        "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
        "globalVars",
        "",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "localVars",
        "multiplayerVars",
        "globalLists",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "localLists",
        "initializeAdapter",
        "notifyDataSetChanged",
        "onActionItemClicked",
        "mode",
        "Landroid/view/MenuItem;",
        "onActivityCreated",
        "savedInstance",
        "Landroid/os/Bundle;",
        "onAdapterReady",
        "onCreateActionMode",
        "menu",
        "Landroid/view/Menu;",
        "onCreateOptionsMenu",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onCreateView",
        "Landroid/view/View;",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "onDestroyActionMode",
        "onItemClick",
        "onItemLongClick",
        "holder",
        "Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;",
        "onOptionsItemSelected",
        "onPause",
        "onPrepareActionMode",
        "onPrepareOptionsMenu",
        "onResume",
        "onSelectionChanged",
        "selectedItemCnt",
        "onSettingsClick",
        "view",
        "onStop",
        "renameItem",
        "name",
        "resetActionModeParameters",
        "setFormulaEditorDataInterface",
        "setShowEmptyView",
        "visible",
        "setUserListIndex",
        "data",
        "setUserVariableIndex",
        "shouldShowEmptyView",
        "showDeleteAlert",
        "showEditDialog",
        "showRenameDialog",
        "sortUserList",
        "sorted",
        "sortUserVariable",
        "sortVariableAndList",
        "startActionMode",
        "type",
        "ActionModeType",
        "Companion",
        "FormulaEditorDataInterface",
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
.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;

.field private static final DELETE:I = 0x1

.field private static final NONE:I = 0x0

.field public static final PARENT_SCRIPT_BRICK_BUNDLE_ARGUMENT:Ljava/lang/String; = "parent_script_brick"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private actionMode:Landroid/view/ActionMode;

.field private actionModeType:I

.field private adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

.field private emptyView:Landroid/widget/TextView;

.field private formulaEditorDataInterface:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;

.field private indexVariable:Z

.field private observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private parentScriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private sortData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;

    .line 507
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataListFragment::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 116
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$observer$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$observer$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public static final synthetic access$deleteItems(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;
    .param p1, "selectedItems"    # Ljava/util/List;

    .line 66
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->deleteItems(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$editItem(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;
    .param p1, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .param p2, "value"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->editItem(Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$renameItem(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;
    .param p1, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .param p2, "name"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->renameItem(Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$showDeleteAlert(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;
    .param p1, "selectedItems"    # Ljava/util/List;

    .line 66
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->showDeleteAlert(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showEditDialog(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;
    .param p1, "selectedItems"    # Ljava/util/List;

    .line 66
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->showEditDialog(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showRenameDialog(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;
    .param p1, "selectedItems"    # Ljava/util/List;

    .line 66
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->showRenameDialog(Ljava/util/List;)V

    return-void
.end method

.method private final deleteItems(Ljava/util/List;)V
    .locals 7
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;>;)V"
        }
    .end annotation

    .line 422
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->finishActionMode()V

    .line 423
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 424
    .local v1, "item":Lorg/catrobat/catroid/formulaeditor/UserData;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->remove(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 423
    .end local v1    # "item":Lorg/catrobat/catroid/formulaeditor/UserData;
    :cond_0
    goto :goto_0

    .line 426
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const-string v1, "ProjectManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Project;->deselectElements(Ljava/util/List;)V

    .line 427
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100011

    .line 428
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 427
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private final editItem(Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V
    .locals 1
    .param p1, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 475
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;

    invoke-virtual {v0, p2, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;->updateUserVariableValue(Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 476
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->updateDataSet()V

    .line 477
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->finishActionMode()V

    .line 478
    return-void
.end method

.method private final finishActionMode()V
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->clearSelection()V

    .line 404
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionModeType:I

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 407
    :cond_1
    return-void
.end method

.method public static synthetic getActionModeType$annotations()V
    .locals 0

    return-void
.end method

.method private final handleContextualAction()V
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionModeType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    const-string v1, "adapter!!.selectedItems"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->showDeleteAlert(Ljava/util/List;)V

    .line 136
    :goto_0
    nop

    .line 137
    return-void

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionModeType not set Correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 130
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 131
    :cond_4
    return-void
.end method

.method private final initialIndexing(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "userDefinedBrickInputs"    # Ljava/util/List;
    .param p2, "globalVars"    # Ljava/util/List;
    .param p3, "localVars"    # Ljava/util/List;
    .param p4, "multiplayerVars"    # Ljava/util/List;
    .param p5, "globalLists"    # Ljava/util/List;
    .param p6, "localLists"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)V"
        }
    .end annotation

    .line 312
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 313
    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    .line 314
    .local v0, "counter":I
    .local v2, "userDefinedBrickInput":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    invoke-virtual {v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getInitialIndex()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 315
    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->setInitialIndex(I)V

    .line 313
    :cond_0
    nop

    .end local v0    # "counter":I
    .end local v2    # "userDefinedBrickInput":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->setUserVariableIndex(Ljava/util/List;)V

    .line 320
    invoke-direct {p0, p3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->setUserVariableIndex(Ljava/util/List;)V

    .line 321
    invoke-direct {p0, p4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->setUserVariableIndex(Ljava/util/List;)V

    .line 322
    invoke-direct {p0, p5}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->setUserListIndex(Ljava/util/List;)V

    .line 323
    invoke-direct {p0, p6}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->setUserListIndex(Ljava/util/List;)V

    .line 324
    return-void
.end method

.method private final initializeAdapter()V
    .locals 17

    .line 185
    move-object/from16 v0, p0

    .line 186
    nop

    .line 185
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "parent_script_brick"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 186
    :goto_0
    nop

    .line 557
    .local v1, "it":Ljava/io/Serializable;
    const/4 v2, 0x0

    .line 186
    .local v2, "$i$a$-let-DataListFragment$initializeAdapter$1":I
    move-object v3, v1

    check-cast v3, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    iput-object v3, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->parentScriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 188
    .end local v1    # "it":Ljava/io/Serializable;
    .end local v2    # "$i$a$-let-DataListFragment$initializeAdapter$1":I
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    const-string v2, "ProjectManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 189
    .local v1, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    .line 191
    .local v2, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, "userDefinedBrickInputs":Ljava/util/List;
    iget-object v4, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->parentScriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    instance-of v5, v4, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    if-eqz v5, :cond_2

    .line 193
    nop

    .line 194
    if-eqz v4, :cond_1

    check-cast v4, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->getUserDefinedBrick()Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    move-result-object v4

    const-string v5, "(parentScriptBrick as Us\u2026erBrick).userDefinedBrick"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getUserDefinedBrickInputs()Ljava/util/List;

    move-result-object v4

    const-string v5, "(parentScriptBrick as Us\u2026ck.userDefinedBrickInputs"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type org.catrobat.catroid.content.bricks.UserDefinedReceiverBrick"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 196
    :cond_2
    :goto_1
    const-string v4, "currentProject"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v4

    .line 197
    .local v4, "globalVars":Ljava/util/List;
    const-string v5, "currentSprite"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v5

    .line 198
    .local v5, "localVars":Ljava/util/List;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v13

    .line 199
    .local v13, "multiplayerVars":Ljava/util/List;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v14

    .line 200
    .local v14, "globalLists":Ljava/util/List;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v15

    .line 202
    .local v15, "localLists":Ljava/util/List;
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->indexAndSort()V

    .line 203
    new-instance v12, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    .line 204
    nop

    .line 205
    nop

    .line 203
    move-object v6, v12

    move-object v7, v3

    move-object v8, v13

    move-object v9, v4

    move-object v10, v5

    move-object v11, v14

    move-object/from16 v16, v1

    move-object v1, v12

    .end local v1    # "currentProject":Lorg/catrobat/catroid/content/Project;
    .local v16, "currentProject":Lorg/catrobat/catroid/content/Project;
    move-object v12, v15

    invoke-direct/range {v6 .. v12}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    .line 207
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->hasObservers()Z

    move-result v1

    if-nez v1, :cond_3

    .line 208
    iget-object v1, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v1, :cond_3

    iget-object v6, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, v6}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 210
    :cond_3
    iget-object v1, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->emptyView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const v6, 0x7f1204b5

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 211
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->onAdapterReady()V

    .line 212
    return-void
.end method

.method private final onAdapterReady()V
    .locals 2

    .line 347
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 349
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 350
    :cond_2
    return-void
.end method

.method private final renameItem(Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 448
    invoke-interface {p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "previousName":Ljava/lang/String;
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;

    invoke-virtual {v1, v0, p2, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;->updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 450
    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {p1, v1}, Lorg/catrobat/catroid/utils/UserDataUtil;->renameUserData(Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->indexAndSort()V

    .line 452
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->finishActionMode()V

    .line 453
    instance-of v1, p1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->formulaEditorDataInterface:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;->onVariableRenamed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 456
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->formulaEditorDataInterface:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;->onListRenamed(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_2
    :goto_1
    nop

    .line 458
    return-void
.end method

.method private final resetActionModeParameters()V
    .locals 2

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionModeType:I

    .line 141
    const/4 v1, 0x0

    check-cast v1, Landroid/view/ActionMode;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionMode:Landroid/view/ActionMode;

    .line 142
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->showCheckBoxes(Z)V

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->allowMultiSelection:Z

    .line 144
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->showAddButton(Landroid/app/Activity;)V

    .line 145
    return-void
.end method

.method private final setUserListIndex(Ljava/util/List;)V
    .locals 5
    .param p1, "data"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)V"
        }
    .end annotation

    .line 337
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 338
    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 339
    .local v0, "counter":I
    .local v2, "localList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->getInitialIndex()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 340
    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->setInitialIndex(I)V

    .line 338
    :cond_0
    nop

    .end local v0    # "counter":I
    .end local v2    # "localList":Lorg/catrobat/catroid/formulaeditor/UserList;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_1
    return-void
.end method

.method private final setUserVariableIndex(Ljava/util/List;)V
    .locals 5
    .param p1, "data"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;)V"
        }
    .end annotation

    .line 327
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 328
    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 329
    .local v0, "counter":I
    .local v2, "localList":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getInitialIndex()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 330
    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setInitialIndex(I)V

    .line 328
    :cond_0
    nop

    .end local v0    # "counter":I
    .end local v2    # "localList":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    return-void
.end method

.method private final showDeleteAlert(Ljava/util/List;)V
    .locals 3
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;>;)V"
        }
    .end annotation

    .line 410
    nop

    .line 418
    nop

    .line 410
    nop

    .line 417
    nop

    .line 410
    nop

    .line 416
    nop

    .line 410
    nop

    .line 413
    nop

    .line 410
    nop

    .line 412
    nop

    .line 410
    nop

    .line 411
    nop

    .line 410
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    const v1, 0x7f12025a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 412
    const v1, 0x7f120259

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 413
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$showDeleteAlert$1;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$showDeleteAlert$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Ljava/util/List;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f120257

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 416
    const v1, 0x7f1201b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 417
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 419
    return-void
.end method

.method private final showEditDialog(Ljava/util/List;)V
    .locals 5
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;>;)V"
        }
    .end annotation

    .line 461
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 462
    .local v0, "item":Lorg/catrobat/catroid/formulaeditor/UserData;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 464
    .local v1, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    nop

    .line 466
    nop

    .line 464
    nop

    .line 465
    nop

    .line 464
    const v2, 0x7f12022e

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    .line 465
    invoke-interface {v0}, Lorg/catrobat/catroid/formulaeditor/UserData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    .line 466
    const v3, 0x7f120712

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$showEditDialog$1;

    invoke-direct {v4, p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$showEditDialog$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    check-cast v4, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 469
    nop

    .line 471
    nop

    .line 469
    nop

    .line 470
    nop

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Edit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 470
    const v3, 0x7f1201b8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 471
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 472
    return-void
.end method

.method private final showRenameDialog(Ljava/util/List;)V
    .locals 6
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;>;)V"
        }
    .end annotation

    .line 432
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 433
    .local v0, "item":Lorg/catrobat/catroid/formulaeditor/UserData;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    .local v1, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    .line 436
    .local v2, "items":Ljava/util/List;
    nop

    .line 439
    nop

    .line 436
    nop

    .line 438
    nop

    .line 436
    nop

    .line 437
    nop

    .line 436
    const v3, 0x7f12022d

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v3

    .line 437
    invoke-interface {v0}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v3

    .line 438
    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    invoke-direct {v4, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    check-cast v4, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v3

    .line 439
    const v4, 0x7f1205ff

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$showRenameDialog$1;

    invoke-direct {v5, p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$showRenameDialog$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    check-cast v5, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 442
    nop

    .line 444
    nop

    .line 442
    nop

    .line 443
    nop

    .line 442
    const v3, 0x7f120704

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 443
    const v4, 0x7f1201b8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 444
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 445
    return-void
.end method

.method private final sortVariableAndList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "userDefinedBrickInputs"    # Ljava/util/List;
    .param p2, "globalVars"    # Ljava/util/List;
    .param p3, "localVars"    # Ljava/util/List;
    .param p4, "multiplayerVars"    # Ljava/util/List;
    .param p5, "globalLists"    # Ljava/util/List;
    .param p6, "localLists"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)V"
        }
    .end annotation

    .line 257
    nop

    .line 258
    nop

    .line 257
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 258
    const-string v1, "sortVariableList"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortData:Z

    .line 260
    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortVariableAndList$1;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortVariableAndList$1;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 266
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortVariableAndList$2;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortVariableAndList$2;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 270
    :goto_0
    nop

    .line 272
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortData:Z

    invoke-virtual {p0, p4, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortUserVariable(Ljava/util/List;Z)V

    .line 273
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortData:Z

    invoke-virtual {p0, p2, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortUserVariable(Ljava/util/List;Z)V

    .line 274
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortData:Z

    invoke-virtual {p0, p3, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortUserVariable(Ljava/util/List;Z)V

    .line 275
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortData:Z

    invoke-virtual {p0, p5, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortUserList(Ljava/util/List;Z)V

    .line 276
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortData:Z

    invoke-virtual {p0, p6, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortUserList(Ljava/util/List;Z)V

    .line 277
    return-void
.end method

.method private final startActionMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 393
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->hideAddButton(Landroid/app/Activity;)V

    .line 394
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iput p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionModeType:I

    .line 398
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 395
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f120039

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 399
    :goto_1
    nop

    .line 400
    return-void
.end method

.method public static final updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;->updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    return-void
.end method

.method public static final updateUserVariableValue(Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;->updateUserVariableValue(Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    return-void
.end method


# virtual methods
.method public final getActionModeType()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionModeType:I

    return v0
.end method

.method public final indexAndSort()V
    .locals 22

    .line 215
    move-object/from16 v7, p0

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const-string v1, "ProjectManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v8

    .line 216
    .local v8, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v9

    .line 218
    .local v9, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, "userDefinedBrickInputs":Ljava/util/List;
    iget-object v1, v7, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->parentScriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    if-eqz v2, :cond_1

    .line 220
    nop

    .line 221
    if-eqz v1, :cond_0

    check-cast v1, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->getUserDefinedBrick()Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    move-result-object v1

    const-string v2, "(parentScriptBrick as Us\u2026erBrick).userDefinedBrick"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getUserDefinedBrickInputs()Ljava/util/List;

    move-result-object v1

    const-string v2, "(parentScriptBrick as Us\u2026ck.userDefinedBrickInputs"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    move-object v10, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type org.catrobat.catroid.content.bricks.UserDefinedReceiverBrick"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_1
    move-object v10, v0

    .line 224
    .end local v0    # "userDefinedBrickInputs":Ljava/util/List;
    .local v10, "userDefinedBrickInputs":Ljava/util/List;
    :goto_0
    const-string v0, "currentProject"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v11

    .line 225
    .local v11, "globalVars":Ljava/util/List;
    const-string v0, "currentSprite"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v12

    .line 226
    .local v12, "localVars":Ljava/util/List;
    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v13

    .line 227
    .local v13, "multiplayerVars":Ljava/util/List;
    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v14

    .line 228
    .local v14, "globalLists":Ljava/util/List;
    invoke-virtual {v9}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v15

    .line 230
    .local v15, "localLists":Ljava/util/List;
    nop

    .line 231
    nop

    .line 230
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 231
    const/4 v1, 0x0

    const-string v6, "variableIndexing"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->indexVariable:Z

    .line 233
    const-string v5, "localLists"

    const-string v4, "globalLists"

    const-string v3, "multiplayerVars"

    const-string v2, "localVars"

    const-string v1, "globalVars"

    if-nez v0, :cond_2

    .line 234
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v16, v8

    move-object v8, v1

    .end local v8    # "currentProject":Lorg/catrobat/catroid/content/Project;
    .local v16, "currentProject":Lorg/catrobat/catroid/content/Project;
    move-object v1, v10

    move-object/from16 v17, v9

    move-object v9, v2

    .end local v9    # "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    .local v17, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    move-object v2, v11

    move-object/from16 v18, v10

    move-object v10, v3

    .end local v10    # "userDefinedBrickInputs":Ljava/util/List;
    .local v18, "userDefinedBrickInputs":Ljava/util/List;
    move-object v3, v12

    move-object/from16 v19, v4

    move-object v4, v13

    move-object/from16 v20, v5

    move-object v5, v14

    move-object/from16 v21, v14

    move-object v14, v6

    .end local v14    # "globalLists":Ljava/util/List;
    .local v21, "globalLists":Ljava/util/List;
    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->initialIndexing(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->indexVariable:Z

    .line 237
    nop

    .line 240
    nop

    .line 237
    nop

    .line 239
    nop

    .line 237
    nop

    .line 238
    nop

    .line 237
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    iget-boolean v1, v7, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->indexVariable:Z

    invoke-interface {v0, v14, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 233
    .end local v16    # "currentProject":Lorg/catrobat/catroid/content/Project;
    .end local v17    # "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v18    # "userDefinedBrickInputs":Ljava/util/List;
    .end local v21    # "globalLists":Ljava/util/List;
    .restart local v8    # "currentProject":Lorg/catrobat/catroid/content/Project;
    .restart local v9    # "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    .restart local v10    # "userDefinedBrickInputs":Ljava/util/List;
    .restart local v14    # "globalLists":Ljava/util/List;
    :cond_2
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v21, v14

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    .line 243
    .end local v8    # "currentProject":Lorg/catrobat/catroid/content/Project;
    .end local v9    # "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v10    # "userDefinedBrickInputs":Ljava/util/List;
    .end local v14    # "globalLists":Ljava/util/List;
    .restart local v16    # "currentProject":Lorg/catrobat/catroid/content/Project;
    .restart local v17    # "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    .restart local v18    # "userDefinedBrickInputs":Ljava/util/List;
    .restart local v21    # "globalLists":Ljava/util/List;
    :goto_1
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, v19

    move-object/from16 v8, v21

    .end local v21    # "globalLists":Ljava/util/List;
    .local v8, "globalLists":Ljava/util/List;
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v8

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortVariableAndList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 245
    iget-object v0, v7, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->notifyDataSetChanged()V

    .line 246
    :cond_3
    return-void
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->notifyDataSetChanged()V

    .line 359
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a031b

    if-eq v0, v1, :cond_0

    .line 105
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->handleContextualAction()V

    .line 106
    nop

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .line 156
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->initializeAdapter()V

    .line 158
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionModeType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    const v0, 0x7f120038

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    nop

    .line 93
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 94
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0e0000

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 95
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->showCheckBoxes(Z)V

    .line 96
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->updateDataSet()V

    .line 97
    :cond_2
    return v1

    .line 91
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 354
    const v0, 0x7f0e0010

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 355
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    const v0, 0x7f0d0162

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0a056e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 150
    const v1, 0x7f0a036f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->emptyView:Landroid/widget/TextView;

    .line 151
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->setHasOptionsMenu(Z)V

    .line 152
    return-object v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->resetActionModeParameters()V

    .line 125
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->clearSelection()V

    .line 126
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->onItemClick(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 2
    .param p1, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionModeType:I

    if-nez v0, :cond_2

    .line 488
    nop

    .line 489
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->FORMULA_EDITOR_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 488
    nop

    .line 490
    .local v0, "formulaEditorFragment":Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->setChosenUserDataItem(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 491
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 493
    .end local v0    # "formulaEditorFragment":Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    :cond_2
    return-void
.end method

.method public bridge synthetic onItemLongClick(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    .line 66
    check-cast p1, Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->onItemLongClick(Lorg/catrobat/catroid/formulaeditor/UserData;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    return-void
.end method

.method public onItemLongClick(Lorg/catrobat/catroid/formulaeditor/UserData;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 1
    .param p1, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .param p2, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;",
            "Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;",
            ")V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "holder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->onItemClick(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 497
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0337

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a05c5

    if-eq v0, v1, :cond_0

    .line 387
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 380
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortData:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortData:Z

    .line 381
    nop

    .line 384
    nop

    .line 381
    nop

    .line 383
    nop

    .line 381
    nop

    .line 382
    nop

    .line 381
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 383
    iget-boolean v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortData:Z

    const-string v3, "sortVariableList"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 385
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->indexAndSort()V

    goto :goto_0

    .line 378
    :cond_1
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->startActionMode(I)V

    .line 388
    :goto_0
    nop

    .line 389
    return v2
.end method

.method public onPause()V
    .locals 2

    .line 172
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 173
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->hasObservers()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 176
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 363
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    .line 364
    .local v2, "index":I
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const-string v5, "menu.getItem(index)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 363
    nop

    .end local v2    # "index":I
    add-int/2addr v2, v3

    goto :goto_0

    .line 366
    :cond_0
    const v0, 0x7f0a0337

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.delete)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 368
    nop

    .line 369
    nop

    .line 368
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 369
    const-string v2, "sortVariableList"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortData:Z

    .line 370
    nop

    .line 372
    nop

    .line 370
    nop

    .line 371
    nop

    .line 372
    nop

    .line 370
    const v0, 0x7f0a05c5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 371
    iget-boolean v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortData:Z

    if-eqz v1, :cond_1

    const v1, 0x7f1207a8

    goto :goto_1

    :cond_1
    const v1, 0x7f12074c

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.sort)\u2026_sort else R.string.sort)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 161
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 162
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->initializeAdapter()V

    .line 163
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f120350

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->notifyDataSetChanged()V

    .line 165
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->shouldShowEmptyView()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->setShowEmptyView(Z)V

    .line 167
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->showBottomBar(Landroid/app/Activity;)V

    .line 168
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->hidePlayButton(Landroid/app/Activity;)V

    .line 169
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 3
    .param p1, "selectedItemCnt"    # I

    .line 481
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionModeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 482
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f120038

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 484
    :cond_0
    return-void
.end method

.method public bridge synthetic onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 66
    check-cast p1, Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->onSettingsClick(Lorg/catrobat/catroid/formulaeditor/UserData;Landroid/view/View;)V

    return-void
.end method

.method public onSettingsClick(Lorg/catrobat/catroid/formulaeditor/UserData;Landroid/view/View;)V
    .locals 8
    .param p1, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    instance-of v0, p1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    if-eqz v0, :cond_0

    .line 525
    return-void

    .line 526
    :cond_0
    instance-of v0, p1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const-string v1, "getString(R.string.rename)"

    const v2, 0x7f120703

    const-string v3, "getString(R.string.delete)"

    const v4, 0x7f120257

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    .line 527
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    aput-object v4, v0, v7

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    aput-object v2, v0, v6

    .line 528
    const v1, 0x7f1202c9

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.edit)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v5

    .line 527
    nop

    .line 530
    .local v0, "elementList":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 531
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    array-length v2, v0

    :goto_0
    if-ge v7, v2, :cond_1

    aget-object v3, v0, v7

    .local v3, "element":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .end local v3    # "element":Ljava/lang/CharSequence;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 532
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;

    invoke-direct {v2, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    check-cast v2, Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 540
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .end local v0    # "elementList":[Ljava/lang/CharSequence;
    .end local v1    # "popupMenu":Landroid/widget/PopupMenu;
    goto :goto_2

    .line 542
    :cond_2
    new-array v0, v5, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    aput-object v4, v0, v7

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    aput-object v2, v0, v6

    .line 543
    .restart local v0    # "elementList":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 544
    .restart local v1    # "popupMenu":Landroid/widget/PopupMenu;
    array-length v2, v0

    :goto_1
    if-ge v7, v2, :cond_3

    aget-object v3, v0, v7

    .restart local v3    # "element":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .end local v3    # "element":Ljava/lang/CharSequence;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 545
    :cond_3
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$2;

    invoke-direct {v2, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$2;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    check-cast v2, Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 552
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 553
    .end local v0    # "elementList":[Ljava/lang/CharSequence;
    .end local v1    # "popupMenu":Landroid/widget/PopupMenu;
    :goto_2
    nop

    .line 554
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 180
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->finishActionMode()V

    .line 181
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->hideBottomBar(Landroid/app/Activity;)V

    .line 182
    return-void
.end method

.method public final setActionModeType(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 83
    iput p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->actionModeType:I

    return-void
.end method

.method public final setFormulaEditorDataInterface(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;)V
    .locals 0
    .param p1, "formulaEditorDataInterface"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;

    .line 85
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->formulaEditorDataInterface:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;

    .line 86
    return-void
.end method

.method public final setShowEmptyView(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 113
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->emptyView:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public final shouldShowEmptyView()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final sortUserList(Ljava/util/List;Z)V
    .locals 1
    .param p1, "data"    # Ljava/util/List;
    .param p2, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    if-eqz p2, :cond_0

    .line 293
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserList$1;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserList$1;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 297
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserList$2;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserList$2;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 300
    :goto_0
    nop

    .line 301
    return-void
.end method

.method public final sortUserVariable(Ljava/util/List;Z)V
    .locals 1
    .param p1, "data"    # Ljava/util/List;
    .param p2, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    if-eqz p2, :cond_0

    .line 281
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserVariable$1;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserVariable$1;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 285
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserVariable$2;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserVariable$2;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 288
    :goto_0
    nop

    .line 289
    return-void
.end method
