.class public Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ScratchSearchResultsFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;,
        Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$OnQueryListener;,
        Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$ActionModeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/ActionMode$Callback;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener<",
        "Lorg/catrobat/catroid/common/ScratchProgramData;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONVERT:I = 0x1

.field private static final NONE:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private actionMode:Landroid/view/ActionMode;

.field private actionModeType:I

.field private adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

.field private conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

.field private dataFetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

.field private onQueryListener:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$OnQueryListener;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private searchTask:Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

.field private searchTaskDelegate:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;

.field private searchView:Landroid/widget/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 91
    new-instance v0, Lorg/catrobat/catroid/web/ServerCalls;

    sget-object v1, Lorg/catrobat/catroid/web/CatrobatWebClient;->INSTANCE:Lorg/catrobat/catroid/web/CatrobatWebClient;

    invoke-virtual {v1}, Lorg/catrobat/catroid/web/CatrobatWebClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/web/ServerCalls;-><init>(Lokhttp3/OkHttpClient;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->dataFetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

    .line 147
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$OnQueryListener;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$OnQueryListener;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->onQueryListener:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$OnQueryListener;

    .line 148
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->searchTaskDelegate:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionModeType:I

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->searchTaskDelegate:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->searchTask:Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    return-object v0
.end method

.method static synthetic access$102(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;)Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;
    .param p1, "x1"    # Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->searchTask:Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    return-object p1
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)Lorg/catrobat/catroid/web/ScratchDataFetcher;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->dataFetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

    return-object v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;
    .param p1, "x1"    # Ljava/util/List;

    .line 71
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->convertItems(Ljava/util/List;)V

    return-void
.end method

.method private convertItems(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ScratchProgramData;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-interface {v0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->getNumberOfJobsInProgress()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    .line 319
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100019

    new-array v3, v3, [Ljava/lang/Object;

    .line 322
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    .line 319
    invoke-virtual {v4, v5, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    .line 328
    .local v0, "counter":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 329
    .local v4, "item":Lorg/catrobat/catroid/common/ScratchProgramData;
    invoke-static {v4}, Lorg/catrobat/catroid/utils/Utils;->isDeprecatedScratchProgram(Lorg/catrobat/catroid/common/ScratchProgramData;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 330
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v5

    .line 331
    .local v5, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f1202d0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 332
    invoke-virtual {v4}, Lorg/catrobat/catroid/common/ScratchProgramData;->getTitle()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {}, Lorg/catrobat/catroid/utils/Utils;->getScratchSecondReleasePublishedDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 331
    invoke-virtual {p0, v7, v8}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    goto :goto_0

    .line 335
    .end local v5    # "dateFormat":Ljava/text/DateFormat;
    :cond_1
    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-virtual {v4}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->isJobInProgress(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 336
    goto :goto_0

    .line 339
    :cond_2
    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-virtual {v4}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v7

    invoke-virtual {v4}, Lorg/catrobat/catroid/common/ScratchProgramData;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lorg/catrobat/catroid/common/ScratchProgramData;->getImage()Lcom/google/android/gms/common/images/WebImage;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->convertProgram(JLjava/lang/String;Lcom/google/android/gms/common/images/WebImage;Z)V

    .line 340
    nop

    .end local v4    # "item":Lorg/catrobat/catroid/common/ScratchProgramData;
    add-int/lit8 v0, v0, 0x1

    .line 341
    goto :goto_0

    .line 343
    :cond_3
    if-lez v0, :cond_4

    .line 344
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100023

    new-array v3, v3, [Ljava/lang/Object;

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    .line 344
    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 350
    :cond_4
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->finishActionMode()V

    .line 351
    return-void
.end method

.method private finishActionMode()V
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->clearSelection()V

    .line 312
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionModeType:I

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 315
    :cond_0
    return-void
.end method

.method private handleContextualAction()V
    .locals 2

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 200
    return-void

    .line 203
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionModeType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->convertItems(Ljava/util/List;)V

    .line 206
    nop

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionModeType not set Correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetActionModeParameters()V
    .locals 2

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionModeType:I

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionMode:Landroid/view/ActionMode;

    .line 215
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    iput-boolean v0, v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->showCheckBoxes:Z

    .line 216
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    const/4 v1, 0x2

    iput v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->selectionMode:I

    .line 217
    return-void
.end method

.method private startActionMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 300
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120039

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 302
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->resetActionModeParameters()V

    goto :goto_0

    .line 304
    :cond_0
    iput p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionModeType:I

    .line 305
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionMode:Landroid/view/ActionMode;

    .line 307
    :goto_0
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 181
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a031b

    if-eq v0, v1, :cond_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 183
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->handleContextualAction()V

    .line 184
    nop

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .line 230
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 232
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    .line 233
    nop

    .line 234
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 233
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 234
    const-string v2, "showDetailsScratchProjects"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->showDetails:Z

    .line 235
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 237
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 238
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 239
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    iput-boolean v3, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->showRipples:Z

    .line 241
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->searchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->onQueryListener:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$OnQueryListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 242
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 159
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionModeType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    const v0, 0x7f120036

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    nop

    .line 167
    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v2, 0x7f0e0000

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 169
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->showCheckBoxes:Z

    .line 170
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->notifyDataSetChanged()V

    .line 171
    return v1

    .line 164
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 265
    const v0, 0x7f0e000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 266
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 221
    const v0, 0x7f0d0167

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a056e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 223
    const v1, 0x7f0a05a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->searchView:Landroid/widget/SearchView;

    .line 224
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->setHasOptionsMenu(Z)V

    .line 225
    return-object v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 193
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->resetActionModeParameters()V

    .line 194
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->clearSelection()V

    .line 195
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->onItemClick(Lorg/catrobat/catroid/common/ScratchProgramData;)V

    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/common/ScratchProgramData;)V
    .locals 3
    .param p1, "item"    # Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 367
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionModeType:I

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->setConversionManager(Lorg/catrobat/catroid/scratchconverter/ConversionManager;)V

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "scratchProgramData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    .line 373
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemLongClick(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    .line 71
    check-cast p1, Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->onItemLongClick(Lorg/catrobat/catroid/common/ScratchProgramData;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    return-void
.end method

.method public onItemLongClick(Lorg/catrobat/catroid/common/ScratchProgramData;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0
    .param p1, "item"    # Lorg/catrobat/catroid/common/ScratchProgramData;
    .param p2, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    .line 377
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 281
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0324

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a05b0

    if-eq v0, v1, :cond_0

    .line 294
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    iget-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->showDetails:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->showDetails:Z

    .line 287
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    iget-boolean v1, v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->showDetails:Z

    .line 289
    const-string v3, "showDetailsScratchProjects"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->notifyDataSetChanged()V

    .line 292
    goto :goto_0

    .line 283
    :cond_1
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->startActionMode(I)V

    .line 284
    nop

    .line 296
    :goto_0
    return v2
.end method

.method public onPause()V
    .locals 1

    .line 253
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 254
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    .line 255
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 270
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 271
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    .line 272
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 271
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 272
    const-string v2, "showDetailsScratchProjects"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->showDetails:Z

    .line 274
    const v0, 0x7f0a05b0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    iget-boolean v1, v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->showDetails:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1204e1

    goto :goto_0

    :cond_0
    const v1, 0x7f12073c

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 277
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 246
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 247
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->searchView:Landroid/widget/SearchView;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ViewUtils;->showKeyboard(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->searchTaskDelegate:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->startSearch(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 3
    .param p1, "selectedItemCnt"    # I

    .line 355
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionModeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->actionMode:Landroid/view/ActionMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f120036

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 358
    nop

    .line 363
    return-void

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionModeType not set correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 71
    check-cast p1, Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->onSettingsClick(Lorg/catrobat/catroid/common/ScratchProgramData;Landroid/view/View;)V

    return-void
.end method

.method public onSettingsClick(Lorg/catrobat/catroid/common/ScratchProgramData;Landroid/view/View;)V
    .locals 3
    .param p1, "item"    # Lorg/catrobat/catroid/common/ScratchProgramData;
    .param p2, "view"    # Landroid/view/View;

    .line 381
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 383
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f120223

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 384
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$1;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;Lorg/catrobat/catroid/common/ScratchProgramData;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 394
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 395
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 259
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 260
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->searchTaskDelegate:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->clearPendingSearch()V

    .line 261
    return-void
.end method

.method public setConversionManager(Lorg/catrobat/catroid/scratchconverter/ConversionManager;)V
    .locals 0
    .param p1, "conversionManager"    # Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    .line 154
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    .line 155
    return-void
.end method
