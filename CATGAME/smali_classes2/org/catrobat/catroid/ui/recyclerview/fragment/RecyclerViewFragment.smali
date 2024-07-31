.class public abstract Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "RecyclerViewFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment$ActionModeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/catrobat/catroid/common/Nameable;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/ActionMode$Callback;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final BACKPACK:I = 0x1

.field protected static final COPY:I = 0x2

.field protected static final DELETE:I = 0x3

.field protected static final IMPORT_LOCAL:I = 0x6

.field protected static final MERGE:I = 0x5

.field protected static final NONE:I = 0x0

.field protected static final RENAME:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected actionMode:Landroid/view/ActionMode;

.field protected actionModeType:I

.field protected adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected emptyView:Landroid/widget/TextView;

.field protected observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field protected parentView:Landroid/view/View;

.field protected recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected sharedPreferenceDetailsKey:Ljava/lang/String;

.field protected touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field protected uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    .line 97
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    .line 100
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionModeType:I

    return-void
.end method

.method private handleContextualAction()V
    .locals 2

    .line 202
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 204
    return-void

    .line 207
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionModeType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->showMergeDialog(Ljava/util/List;)V

    .line 221
    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->showDeleteAlert(Ljava/util/List;)V

    .line 216
    goto :goto_0

    .line 212
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->copyItems(Ljava/util/List;)V

    .line 213
    goto :goto_0

    .line 209
    :cond_4
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->packItems(Ljava/util/List;)V

    .line 210
    nop

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionModeType not set correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onRename(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 150
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const/4 v1, 0x0

    iput v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->selectionMode:I

    .line 151
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showSettings:Z

    .line 152
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showRipples:Z

    .line 153
    const v0, 0x7f0a031b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 154
    const v0, 0x7f0a049c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 155
    const v0, 0x7f0a0616

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    instance-of v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->setBackgroundVisible(I)V

    .line 159
    move-object v0, p0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->isSingleVisibleSprite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->showRenameDialog(Lorg/catrobat/catroid/common/Nameable;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItemCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 163
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->showRenameDialog(Lorg/catrobat/catroid/common/Nameable;)V

    .line 166
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 167
    return-void
.end method

.method private startActionMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 366
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    iput p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionModeType:I

    .line 371
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    .line 372
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->hideBottomBar(Landroid/app/Activity;)V

    goto :goto_1

    .line 367
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120039

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 368
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->resetActionModeParameters()V

    .line 374
    :goto_1
    return-void
.end method


# virtual methods
.method protected abstract copyItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected abstract deleteItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected finishActionMode()V
    .locals 2

    .line 415
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->clearSelection()V

    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->setShowProgressBar(Z)V

    .line 417
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionModeType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 420
    :cond_0
    return-void
.end method

.method protected abstract getDeleteAlertTitleId()I
.end method

.method protected abstract getRenameDialogHint()I
.end method

.method protected abstract getRenameDialogTitle()I
.end method

.method protected abstract initializeAdapter()V
.end method

.method protected abstract isBackpackEmpty()Z
.end method

.method public synthetic lambda$showBackpackModeChooser$0$RecyclerViewFragment(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 454
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->switchToBackpack()V

    goto :goto_0

    .line 456
    :cond_1
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->startActionMode(I)V

    .line 457
    nop

    .line 461
    :goto_0
    return-void
.end method

.method public synthetic lambda$showDeleteAlert$1$RecyclerViewFragment(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "selectedItems"    # Ljava/util/List;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "id"    # I

    .line 478
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->deleteItems(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$showMergeDialog$4$RecyclerViewFragment(Ljava/util/List;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedItems"    # Ljava/util/List;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "textInput"    # Ljava/lang/String;

    .line 516
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-virtual {p0, p1, p3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->mergeProjects(Ljava/util/List;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public synthetic lambda$showRenameDialog$2$RecyclerViewFragment(Lorg/catrobat/catroid/common/Nameable;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedItem"    # Lorg/catrobat/catroid/common/Nameable;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "textInput"    # Ljava/lang/String;

    .line 491
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-virtual {p0, p1, p3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->renameItem(Lorg/catrobat/catroid/common/Nameable;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showRenameDialog$3$RecyclerViewFragment(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 496
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    instance-of v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->setBackgroundVisible(I)V

    .line 499
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->finishActionMode()V

    .line 502
    :cond_1
    return-void
.end method

.method protected mergeProjects(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "mergeProjectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 539
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    .local p1, "selectedProjects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12055c

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;I)V

    .line 540
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->finishActionMode()V

    .line 541
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 446
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 447
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 177
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a031b

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0616

    if-eq v0, v1, :cond_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->toggleSelection()V

    .line 183
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->updateSelectionToggle(Landroid/view/Menu;)V

    .line 184
    goto :goto_0

    .line 179
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->handleContextualAction()V

    .line 180
    nop

    .line 188
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .line 249
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 250
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->initializeAdapter()V

    .line 254
    return-void
.end method

.method public onAdapterReady()V
    .locals 4

    .line 257
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    .line 258
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    .line 259
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 261
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    const-string v2, "sortProjectsList"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    .line 264
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 265
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 267
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;)V

    .line 268
    .local v0, "callback":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 269
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 271
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->setShowProgressBar(Z)V

    .line 272
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 118
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 120
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionModeType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput v2, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->selectionMode:I

    .line 136
    const v0, 0x7f12003a

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 137
    goto :goto_0

    .line 131
    :pswitch_1
    const v0, 0x7f12003c

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onRename(Landroid/view/Menu;)V

    .line 133
    return v2

    .line 128
    :pswitch_2
    const v0, 0x7f120038

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    goto :goto_0

    .line 125
    :pswitch_3
    const v0, 0x7f120037

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    goto :goto_0

    .line 122
    :pswitch_4
    const v0, 0x7f120035

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    goto :goto_0

    .line 140
    :pswitch_5
    return v1

    .line 142
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showSettings:Z

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showRipples:Z

    .line 144
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v2, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showCheckBoxes:Z

    .line 145
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 146
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 239
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    const v0, 0x7f0d0162

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->parentView:Landroid/view/View;

    .line 240
    const v1, 0x7f0a056e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 241
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->parentView:Landroid/view/View;

    const v1, 0x7f0a036f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->emptyView:Landroid/widget/TextView;

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->setShowProgressBar(Z)V

    .line 243
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->setHasOptionsMenu(Z)V

    .line 244
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->parentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 193
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->resetActionModeParameters()V

    .line 194
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->clearSelection()V

    .line 195
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->showBottomBar(Landroid/app/Activity;)V

    .line 196
    instance-of v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->setBackgroundVisible(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 69
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    check-cast p1, Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onItemClick(Lorg/catrobat/catroid/common/Nameable;)V

    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/common/Nameable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 433
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    .local p1, "item":Lorg/catrobat/catroid/common/Nameable;, "TT;"
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionModeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 434
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->showRenameDialog(Lorg/catrobat/catroid/common/Nameable;)V

    .line 436
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemLongClick(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    .line 69
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    check-cast p1, Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onItemLongClick(Lorg/catrobat/catroid/common/Nameable;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    return-void
.end method

.method public onItemLongClick(Lorg/catrobat/catroid/common/Nameable;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 1
    .param p2, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;",
            ")V"
        }
    .end annotation

    .line 440
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    .local p1, "item":Lorg/catrobat/catroid/common/Nameable;, "TT;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 441
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 321
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 346
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 338
    :sswitch_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v2, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    xor-int/2addr v2, v1

    iput-boolean v2, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    .line 339
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v3, v3, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    .line 341
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 343
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 344
    goto :goto_0

    .line 332
    :sswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->prepareActionMode(I)V

    .line 333
    goto :goto_0

    .line 335
    :sswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->prepareActionMode(I)V

    .line 336
    goto :goto_0

    .line 329
    :sswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->prepareActionMode(I)V

    .line 330
    goto :goto_0

    .line 326
    :sswitch_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->prepareActionMode(I)V

    .line 327
    goto :goto_0

    .line 323
    :sswitch_5
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->prepareActionMode(I)V

    .line 324
    nop

    .line 348
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f0a0059 -> :sswitch_5
        0x7f0a0327 -> :sswitch_4
        0x7f0a0337 -> :sswitch_3
        0x7f0a041f -> :sswitch_2
        0x7f0a0577 -> :sswitch_1
        0x7f0a05b0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .line 287
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 289
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "exception":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->TAG:Ljava/lang/String;

    const-string v2, "Observer was not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 171
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->updateSelectionToggle(Landroid/view/Menu;)V

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 303
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 304
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 307
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    if-eqz v1, :cond_1

    .line 308
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    const/4 v4, 0x0

    .line 309
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    .line 311
    const v1, 0x7f0a05b0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 312
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v2, v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    if-eqz v2, :cond_0

    const v2, 0x7f1204e1

    goto :goto_0

    :cond_0
    const v2, 0x7f12073c

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 317
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 276
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 278
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->loadBackpack()V

    .line 280
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 281
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 282
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->shouldShowEmptyView()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->setShowEmptyView(Z)V

    .line 283
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 4
    .param p1, "selectedItemCnt"    # I

    .line 378
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->updateSelectionToggle(Landroid/view/Menu;)V

    .line 379
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionModeType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const-string v2, " "

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f12003a

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 391
    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120038

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 388
    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120037

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 385
    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120035

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    nop

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionModeType not set Correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStop()V
    .locals 0

    .line 297
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 298
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->finishActionMode()V

    .line 299
    return-void
.end method

.method protected abstract packItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected prepareActionMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 352
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 353
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->isBackpackEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->startActionMode(I)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->switchToBackpack()V

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->showBackpackModeChooser()V

    goto :goto_0

    .line 361
    :cond_2
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->startActionMode(I)V

    .line 363
    :goto_0
    return-void
.end method

.method protected renameItem(Lorg/catrobat/catroid/common/Nameable;Ljava/lang/String;)V
    .locals 0
    .param p2, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 534
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    .local p1, "item":Lorg/catrobat/catroid/common/Nameable;, "TT;"
    invoke-interface {p1, p2}, Lorg/catrobat/catroid/common/Nameable;->setName(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->finishActionMode()V

    .line 536
    return-void
.end method

.method protected resetActionModeParameters()V
    .locals 2

    .line 229
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionModeType:I

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    .line 231
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v0, v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showCheckBoxes:Z

    .line 232
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showSettings:Z

    .line 233
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showRipples:Z

    .line 234
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const/4 v1, 0x2

    iput v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->selectionMode:I

    .line 235
    return-void
.end method

.method setShowEmptyView(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 428
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->emptyView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 423
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->parentView:Landroid/view/View;

    const v1, 0x7f0a054c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 425
    return-void
.end method

.method shouldShowEmptyView()Z
    .locals 1

    .line 110
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected showBackpackModeChooser()V
    .locals 3

    .line 450
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f12060a

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1207aa

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 451
    .local v0, "items":[Ljava/lang/CharSequence;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    const v2, 0x7f120056

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$QwBvNprrHw1pA-Hz6cDAHArsfOE;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$QwBvNprrHw1pA-Hz6cDAHArsfOE;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;)V

    .line 453
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 463
    return-void
.end method

.method protected showDeleteAlert(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 475
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 476
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getDeleteAlertTitleId()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 477
    const v1, 0x7f12026b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$Q5zKqEEqd1ruJZg5CgjafLXyU2E;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$Q5zKqEEqd1ruJZg5CgjafLXyU2E;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;Ljava/util/List;)V

    .line 478
    const v2, 0x7f120257

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 479
    const v1, 0x7f1201b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 480
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 482
    return-void
.end method

.method protected showMergeDialog(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 507
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 508
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f12003b

    invoke-static {v0, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    goto :goto_0

    .line 510
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 512
    .local v0, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    const v2, 0x7f1206e7

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher;

    invoke-direct {v3}, Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher;-><init>()V

    .line 513
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    const v3, 0x7f1205ff

    .line 514
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$8dn5dANAscU8jZ0NegK0YO5cg_U;

    invoke-direct {v4, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$8dn5dANAscU8jZ0NegK0YO5cg_U;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;Ljava/util/List;)V

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 519
    const v2, 0x7f1205a9

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1201b8

    const/4 v4, 0x0

    .line 520
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 521
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 524
    .end local v0    # "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    :goto_0
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->setShowProgressBar(Z)V

    .line 525
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->finishActionMode()V

    .line 526
    return-void
.end method

.method protected showRenameDialog(Lorg/catrobat/catroid/common/Nameable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 487
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    .local p1, "selectedItem":Lorg/catrobat/catroid/common/Nameable;, "TT;"
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    .local v0, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getRenameDialogHint()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v1

    .line 489
    invoke-interface {p1}, Lorg/catrobat/catroid/common/Nameable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 490
    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v1

    .line 491
    const v2, 0x7f1205ff

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$bavsB-9LeMYbBeiTQvU3yuiflPg;

    invoke-direct {v3, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$bavsB-9LeMYbBeiTQvU3yuiflPg;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;Lorg/catrobat/catroid/common/Nameable;)V

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 493
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->getRenameDialogTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 494
    const v2, 0x7f1201b8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$L5qM1ffiIxgfkJHKd8G6AfYrlBM;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$L5qM1ffiIxgfkJHKd8G6AfYrlBM;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;)V

    .line 495
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 503
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 504
    return-void
.end method

.method protected abstract switchToBackpack()V
.end method

.method protected updateSelectionToggle(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 401
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget v0, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->selectionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 402
    const v0, 0x7f0a0616

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 403
    .local v0, "selectionToggle":Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 404
    const v2, 0x7f0a049c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getSelectableItemCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 407
    const v1, 0x7f12025f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 409
    :cond_0
    const v1, 0x7f120726

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 412
    .end local v0    # "selectionToggle":Landroid/view/MenuItem;
    :cond_1
    :goto_0
    return-void
.end method
