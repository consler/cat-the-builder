.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;
.super Landroidx/fragment/app/Fragment;
.source "ListSelectorFragment.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;,
        Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener<",
        "Lorg/catrobat/catroid/formulaeditor/UserData<",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListSelectorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListSelectorFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,290:1\n1819#2,2:291\n768#2,11:293\n*E\n*S KotlinDebug\n*F\n+ 1 ListSelectorFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment\n*L\n66#1,2:291\n95#1,11:293\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 <2\u00020\u00012\u00020\u00022\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00040\u0003:\u0002<=B\u0005\u00a2\u0006\u0002\u0010\u0005J\u001a\u0010\u000f\u001a\u00020\u00102\u0010\u0010\u0011\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00040\u000bH\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002J\u0006\u0010\u0014\u001a\u00020\u0010J\u0012\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0010H\u0002J\u0018\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J&\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u001c\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0017H\u0016J\u0014\u0010$\u001a\u00020\u00102\n\u0010%\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0016J\u001c\u0010&\u001a\u00020\u00102\n\u0010%\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020*2\u0006\u0010%\u001a\u00020+H\u0016J\u0010\u0010,\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010-\u001a\u00020\u0010H\u0016J\u0010\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u000200H\u0016J\u001e\u00101\u001a\u00020\u00102\n\u0010%\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0008\u00102\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u00103\u001a\u00020\u0010H\u0016J\u001e\u00104\u001a\u00020\u00102\n\u0010%\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0008\u00105\u001a\u0004\u0018\u000106H\u0002J\u001a\u00107\u001a\u00020\u00102\u0010\u0010\u0011\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00040\u000bH\u0002J\u001a\u00108\u001a\u00020\u00102\u0010\u0010\u0011\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00040\u000bH\u0002J\u0016\u00109\u001a\u00020\u00102\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0008\u0010;\u001a\u00020\u0010H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;",
        "Lorg/catrobat/catroid/formulaeditor/UserData;",
        "()V",
        "adapter",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;",
        "listSelectorInterface",
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;",
        "preSelection",
        "",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "deleteItems",
        "",
        "selectedItems",
        "handleContextualAction",
        "initializeAdapter",
        "notifyDataSetChanged",
        "onActivityCreated",
        "savedInstance",
        "Landroid/os/Bundle;",
        "onAdapterReady",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onCreateView",
        "Landroid/view/View;",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "onItemClick",
        "item",
        "onItemLongClick",
        "holder",
        "Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;",
        "onOptionsItemSelected",
        "",
        "Landroid/view/MenuItem;",
        "onPrepareOptionsMenu",
        "onResume",
        "onSelectionChanged",
        "selectedItemCnt",
        "",
        "onSettingsClick",
        "view",
        "onStop",
        "renameItem",
        "name",
        "",
        "showDeleteAlert",
        "showRenameDialog",
        "updateSelection",
        "userLists",
        "updateTitle",
        "Companion",
        "ListSelectorInterface",
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
.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

.field private listSelectorInterface:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;

.field private preSelection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;

    .line 248
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListSelectorFragment::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$deleteItems(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;
    .param p1, "selectedItems"    # Ljava/util/List;

    .line 56
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->deleteItems(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getListSelectorInterface$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;)Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->listSelectorInterface:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;

    return-object v0
.end method

.method public static final synthetic access$getPreSelection$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->preSelection:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$renameItem(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;
    .param p1, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .param p2, "name"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->renameItem(Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setListSelectorInterface$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->listSelectorInterface:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;

    return-void
.end method

.method public static final synthetic access$setPreSelection$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;
    .param p1, "<set-?>"    # Ljava/util/List;

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->preSelection:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$showDeleteAlert(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;
    .param p1, "selectedItems"    # Ljava/util/List;

    .line 56
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->showDeleteAlert(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showRenameDialog(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;
    .param p1, "selectedItems"    # Ljava/util/List;

    .line 56
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->showRenameDialog(Ljava/util/List;)V

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

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 161
    .local v1, "item":Lorg/catrobat/catroid/formulaeditor/UserData;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->remove(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 160
    .end local v1    # "item":Lorg/catrobat/catroid/formulaeditor/UserData;
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const-string v1, "ProjectManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Project;->deselectElements(Ljava/util/List;)V

    .line 164
    nop

    .line 165
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 166
    const v2, 0x7f100011

    .line 167
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 168
    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 165
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private final handleContextualAction()V
    .locals 10

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 95
    .local v0, "selectedItems":Ljava/util/List;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->listSelectorInterface:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 293
    .local v3, "$i$f$filterIsInstance":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 302
    .local v6, "$i$f$filterIsInstanceTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    instance-of v9, v8, Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v9, :cond_0

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterIsInstanceTo":I
    check-cast v4, Ljava/util/List;

    .line 293
    nop

    .line 95
    .end local v2    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filterIsInstance":I
    invoke-interface {v1, v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;->onUserListSelected(Ljava/util/List;)V

    .line 96
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 97
    :cond_3
    return-void

    .line 94
    .end local v0    # "selectedItems":Ljava/util/List;
    :cond_4
    return-void
.end method

.method private final initializeAdapter()V
    .locals 10

    .line 139
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const-string v1, "ProjectManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    const-string v2, "ProjectManager.getInstance().currentProject"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v0

    .line 140
    .local v0, "globalLists":Ljava/util/List;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    const-string v2, "ProjectManager.getInstance().currentSprite"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v1

    .line 142
    .local v1, "localLists":Ljava/util/List;
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v3

    check-cast v5, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v3

    check-cast v6, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v3

    check-cast v7, Ljava/util/List;

    move-object v3, v2

    move-object v8, v0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    .line 143
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->showCheckBoxes(Z)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->onAdapterReady()V

    .line 145
    return-void
.end method

.method private final onAdapterReady()V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 152
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->preSelection:Ljava/util/List;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->updateSelection(Ljava/util/List;)V

    .line 153
    return-void
.end method

.method private final renameItem(Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V
    .locals 3
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

    .line 212
    invoke-interface {p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "previousName":Ljava/lang/String;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    const-string v2, "ProjectManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 214
    nop

    .line 215
    nop

    .line 216
    nop

    .line 213
    invoke-virtual {v1, v0, p2, p1}, Lorg/catrobat/catroid/content/Project;->updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 218
    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {p1, v1}, Lorg/catrobat/catroid/utils/UserDataUtil;->renameUserData(Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->updateDataSet()V

    .line 220
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

    .line 174
    nop

    .line 184
    nop

    .line 174
    nop

    .line 183
    nop

    .line 174
    nop

    .line 182
    nop

    .line 174
    nop

    .line 177
    nop

    .line 174
    nop

    .line 176
    nop

    .line 174
    nop

    .line 175
    nop

    .line 174
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    const v1, 0x7f12025a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 176
    const v1, 0x7f120259

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 177
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showDeleteAlert$1;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showDeleteAlert$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Ljava/util/List;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f120257

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    const v1, 0x7f1201b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 185
    return-void
.end method

.method public static final showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;->showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;)V

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

    .line 188
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 189
    .local v0, "item":Lorg/catrobat/catroid/formulaeditor/UserData;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .local v1, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    .line 191
    .local v2, "items":Ljava/util/List;
    nop

    .line 198
    nop

    .line 191
    nop

    .line 193
    nop

    .line 191
    nop

    .line 192
    nop

    .line 191
    const v3, 0x7f12022d

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v3

    .line 192
    invoke-interface {v0}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v3

    .line 194
    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    .line 195
    nop

    .line 194
    invoke-direct {v4, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    check-cast v4, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    .line 193
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v3

    .line 199
    const v4, 0x7f1205ff

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 200
    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showRenameDialog$1;

    invoke-direct {v5, p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showRenameDialog$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    check-cast v5, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;

    .line 198
    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 206
    nop

    .line 208
    nop

    .line 206
    nop

    .line 207
    nop

    .line 206
    const v3, 0x7f120704

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 207
    const v4, 0x7f1201b8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 208
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 209
    return-void
.end method

.method private final updateSelection(Ljava/util/List;)V
    .locals 9
    .param p1, "userLists"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->clearSelection()V

    .line 66
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 291
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/UserList;

    .local v4, "list":Lorg/catrobat/catroid/formulaeditor/UserList;
    const/4 v5, 0x0

    .line 67
    .local v5, "$i$a$-forEach-ListSelectorFragment$updateSelection$1":I
    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v6, :cond_1

    move-object v7, v4

    check-cast v7, Lorg/catrobat/catroid/formulaeditor/UserData;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->setSelection(Lorg/catrobat/catroid/formulaeditor/UserData;Z)V

    .line 68
    :cond_1
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "list":Lorg/catrobat/catroid/formulaeditor/UserList;
    .end local v5    # "$i$a$-forEach-ListSelectorFragment$updateSelection$1":I
    goto :goto_0

    .line 292
    :cond_2
    nop

    .line 70
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->updateTitle()V

    .line 71
    return-void
.end method

.method private final updateTitle()V
    .locals 8

    .line 223
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getSelectedItemCount()I

    move-result v0

    .local v0, "it":I
    const/4 v1, 0x0

    .line 224
    .local v1, "$i$a$-let-ListSelectorFragment$updateTitle$1":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 225
    const v4, 0x7f10001c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 224
    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    :cond_1
    nop

    .line 223
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-ListSelectorFragment$updateTitle$1":I
    nop

    .line 228
    :cond_2
    return-void
.end method


# virtual methods
.method public final notifyDataSetChanged()V
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->notifyDataSetChanged()V

    .line 157
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->initializeAdapter()V

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const/high16 v0, 0x7f0e0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    const v0, 0x7f0d0162

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0a056e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->setHasOptionsMenu(Z)V

    .line 108
    return-object v0
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->onItemClick(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 1
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

    .line 235
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->toggleSelection(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 236
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->updateTitle()V

    .line 237
    return-void
.end method

.method public bridge synthetic onItemLongClick(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    .line 56
    check-cast p1, Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->onItemLongClick(Lorg/catrobat/catroid/formulaeditor/UserData;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

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

    .line 240
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->onItemClick(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 241
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a031b

    if-eq v0, v1, :cond_5

    const v1, 0x7f0a0616

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getItemCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getSelectedItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->selectAll()V

    goto :goto_1

    .line 84
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->clearSelection()V

    .line 85
    :cond_4
    :goto_1
    nop

    .line 86
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->updateTitle()V

    goto :goto_2

    .line 88
    :cond_5
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->handleContextualAction()V

    .line 89
    :goto_2
    nop

    .line 90
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    .line 129
    .local v2, "index":I
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const-string v5, "menu.getItem(index)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 128
    nop

    .end local v2    # "index":I
    add-int/2addr v2, v3

    goto :goto_0

    .line 132
    :cond_0
    const v0, 0x7f0a0616

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.toggl\u2026lection).setEnabled(true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 133
    const v0, 0x7f0a031b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.confirm).setEnabled(true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 135
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 136
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 118
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->showBottomBar(Landroid/app/Activity;)V

    .line 119
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->hidePlayButton(Landroid/app/Activity;)V

    .line 120
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 0
    .param p1, "selectedItemCnt"    # I

    .line 231
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->updateTitle()V

    .line 232
    return-void
.end method

.method public bridge synthetic onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 56
    check-cast p1, Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->onSettingsClick(Lorg/catrobat/catroid/formulaeditor/UserData;Landroid/view/View;)V

    return-void
.end method

.method public onSettingsClick(Lorg/catrobat/catroid/formulaeditor/UserData;Landroid/view/View;)V
    .locals 6
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

    .line 273
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f120257

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.delete)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f120703

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.rename)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 274
    .local v0, "elementList":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 275
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, "element":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .end local v4    # "element":Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_0
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$onSettingsClick$1;

    invoke-direct {v2, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$onSettingsClick$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    check-cast v2, Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 287
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 288
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 124
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->hideBottomBar(Landroid/app/Activity;)V

    .line 125
    return-void
.end method
