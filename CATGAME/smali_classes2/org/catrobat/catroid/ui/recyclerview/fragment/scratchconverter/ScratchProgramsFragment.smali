.class public Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ScratchProgramsFragment.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;
.implements Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/Job;",
        ">;",
        "Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private finishedJobsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;

.field private finishedJobsLayout:Landroid/widget/LinearLayout;

.field private finishedJobsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private parent:Landroid/view/View;

.field private runningJobsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;

.field private runningJobsLayout:Landroid/widget/LinearLayout;

.field private runningJobsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeAdapters(Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;)V
    .locals 0
    .param p1, "runningJobsAdapter"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;
    .param p2, "finishedJobsAdapter"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;

    .line 70
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->runningJobsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;

    .line 71
    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->finishedJobsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;

    .line 73
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 74
    invoke-virtual {p2, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 75
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 90
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->runningJobsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->runningJobsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->finishedJobsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->finishedJobsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 79
    const v0, 0x7f0d0166

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->parent:Landroid/view/View;

    .line 81
    const v1, 0x7f0a054b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->runningJobsLayout:Landroid/widget/LinearLayout;

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->parent:Landroid/view/View;

    const v1, 0x7f0a054a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->finishedJobsLayout:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->parent:Landroid/view/View;

    const v1, 0x7f0a0570

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->runningJobsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->parent:Landroid/view/View;

    const v1, 0x7f0a056f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->finishedJobsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->parent:Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->onItemClick(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 6
    .param p1, "item"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 109
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FAILED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1202d2

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 111
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getDownloadState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    const/4 v2, 0x0

    const v3, 0x7f1201f5

    const v4, 0x7f1207d1

    if-ne v0, v1, :cond_1

    .line 115
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1202d1

    .line 117
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 121
    return-void

    .line 124
    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getDownloadState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->NOT_READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getDownloadState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->CANCELED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    .line 135
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v0, "projectDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f1202d4

    .line 140
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 144
    return-void

    .line 147
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->setShowProgressBar(Z)V

    .line 149
    new-instance v1, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 150
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->setListener(Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;)Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->loadProjectAsync()V

    .line 152
    return-void

    .line 125
    .end local v0    # "projectDir":Ljava/io/File;
    :cond_4
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1202d5

    .line 127
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 131
    return-void
.end method

.method public bridge synthetic onItemLongClick(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    .line 53
    check-cast p1, Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->onItemLongClick(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    return-void
.end method

.method public onItemLongClick(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0
    .param p1, "item"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    .line 174
    return-void
.end method

.method public onJobListChanged()V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->runningJobsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;->notifyDataSetChanged()V

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->finishedJobsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public onLoadFinished(Z)V
    .locals 4
    .param p1, "success"    # Z

    .line 162
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 163
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lorg/catrobat/catroid/ui/ProjectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "fragmentPosition"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->startActivity(Landroid/content/Intent;)V

    .line 166
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->setShowProgressBar(Z)V

    .line 168
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1202ea

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 170
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->setShowProgressBar(Z)V

    .line 99
    return-void
.end method

.method public bridge synthetic onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 53
    check-cast p1, Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->onSettingsClick(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Landroid/view/View;)V

    return-void
.end method

.method public onSettingsClick(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "view"    # Landroid/view/View;

    .line 178
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 155
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->parent:Landroid/view/View;

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

    .line 156
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->runningJobsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->finishedJobsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    return-void
.end method
