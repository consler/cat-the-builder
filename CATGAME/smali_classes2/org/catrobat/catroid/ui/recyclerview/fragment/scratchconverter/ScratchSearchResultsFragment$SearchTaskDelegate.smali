.class Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;
.super Ljava/lang/Object;
.source "ScratchSearchResultsFragment.java"

# interfaces
.implements Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchTaskDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    .line 111
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearPendingSearch()V
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->access$100(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->access$100(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->cancel(Z)Z

    .line 131
    :cond_0
    return-void
.end method

.method public onPostExecute(Lorg/catrobat/catroid/common/ScratchSearchResult;)V
    .locals 2
    .param p1, "result"    # Lorg/catrobat/catroid/common/ScratchSearchResult;

    .line 139
    if-nez p1, :cond_0

    .line 140
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120721

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ScratchSearchResult;->getProgramDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->access$300(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ScratchSearchResult;->getProgramDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->setItems(Ljava/util/List;)V

    .line 144
    :cond_1
    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .line 135
    return-void
.end method

.method startSearch(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->clearPendingSearch()V

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    new-instance v1, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    invoke-direct {v1}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;-><init>()V

    .line 117
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->setDelegate(Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;)Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    .line 118
    invoke-static {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->access$200(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)Lorg/catrobat/catroid/web/ScratchDataFetcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->setFetcher(Lorg/catrobat/catroid/web/ScratchDataFetcher;)Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->access$102(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;)Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    .line 120
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 121
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->access$100(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$SearchTaskDelegate;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->access$100(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;)Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    :goto_0
    return-void
.end method
