.class public abstract Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "BackpackRecyclerViewFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$ActionModeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/ActionMode$Callback;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final DELETE:I = 0x2

.field protected static final NONE:I = 0x0

.field protected static final UNPACK:I = 0x1


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

.field public hasDetails:Z

.field protected parentView:Landroid/view/View;

.field protected recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected sharedPreferenceDetailsKey:Ljava/lang/String;

.field protected touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->hasDetails:Z

    .line 79
    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionModeType:I

    return-void
.end method

.method private handleContextualAction()V
    .locals 2

    .line 128
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 130
    return-void

    .line 133
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionModeType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->showDeleteAlert(Ljava/util/List;)V

    .line 139
    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->unpackItems(Ljava/util/List;)V

    .line 136
    nop

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionModeType not set Correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startActionMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 232
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120039

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    goto :goto_0

    .line 235
    :cond_0
    iput p1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionModeType:I

    .line 236
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    .line 238
    :goto_0
    return-void
.end method


# virtual methods
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
    .locals 1

    .line 255
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->clearSelection()V

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->setShowProgressBar(Z)V

    .line 258
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionModeType:I

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 261
    :cond_0
    return-void
.end method

.method protected abstract getDeleteAlertTitleId()I
.end method

.method protected abstract getItemName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract initializeAdapter()V
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 111
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a031b

    if-eq v0, v1, :cond_0

    .line 116
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->handleContextualAction()V

    .line 114
    nop

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .line 163
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->initializeAdapter()V

    .line 165
    return-void
.end method

.method public onAdapterReady()V
    .locals 4

    .line 168
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 169
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 168
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    .line 169
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    .line 171
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 173
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 174
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 175
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v3, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showRipples:Z

    .line 176
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 178
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;)V

    .line 179
    .local v0, "callback":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 180
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 181
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 84
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionModeType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    const v0, 0x7f120038

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    goto :goto_0

    .line 86
    :cond_1
    const v0, 0x7f12003d

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    nop

    .line 95
    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v3, 0x7f0e0000

    invoke-virtual {v0, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v2, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showCheckBoxes:Z

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showSettings:Z

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showRipples:Z

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 101
    return v2

    .line 92
    :cond_2
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 155
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    const v0, 0x7f0d0162

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->parentView:Landroid/view/View;

    .line 156
    const v1, 0x7f0a056e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->setHasOptionsMenu(Z)V

    .line 158
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->parentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 123
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->resetActionModeParameters()V

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->clearSelection()V

    .line 125
    return-void
.end method

.method public onItemClick(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 280
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionModeType:I

    if-eqz v0, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f1207aa

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f120257

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 284
    .local v0, "items":[Ljava/lang/CharSequence;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getItemName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;

    invoke-direct {v2, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;-><init>(Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 299
    return-void
.end method

.method public onItemLongClick(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0
    .param p2, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;",
            ")V"
        }
    .end annotation

    .line 308
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->onItemClick(Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 210
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0337

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a05b0

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0627

    if-eq v0, v1, :cond_0

    .line 226
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 212
    :cond_0
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->startActionMode(I)V

    .line 213
    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    .line 219
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v3, v3, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    .line 221
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 224
    goto :goto_0

    .line 215
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->startActionMode(I)V

    .line 216
    nop

    .line 228
    :goto_0
    return v2
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 106
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 197
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 198
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->hasDetails:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 200
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 199
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    const/4 v3, 0x0

    .line 200
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    .line 202
    const v0, 0x7f0a05b0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v1, v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1204e1

    goto :goto_0

    :cond_0
    const v1, 0x7f12073c

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 206
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 185
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 186
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 187
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 4
    .param p1, "selectedItemCnt"    # I

    .line 242
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionModeType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const-string v2, " "

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120038

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 248
    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f12003d

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    nop

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionModeType not set Correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 313
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->onItemClick(Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 191
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 192
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->finishActionMode()V

    .line 193
    return-void
.end method

.method protected resetActionModeParameters()V
    .locals 2

    .line 146
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionModeType:I

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->actionMode:Landroid/view/ActionMode;

    .line 148
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-boolean v0, v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showCheckBoxes:Z

    .line 149
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showSettings:Z

    .line 150
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const/4 v1, 0x2

    iput v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->selectionMode:I

    .line 151
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 302
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->parentView:Landroid/view/View;

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

    .line 303
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 304
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

    .line 264
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<TT;>;"
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->getDeleteAlertTitleId()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 266
    const v1, 0x7f12026b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$1;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;Ljava/util/List;)V

    .line 267
    const v2, 0x7f120257

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 273
    const v1, 0x7f1201b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 276
    return-void
.end method

.method protected abstract unpackItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method
