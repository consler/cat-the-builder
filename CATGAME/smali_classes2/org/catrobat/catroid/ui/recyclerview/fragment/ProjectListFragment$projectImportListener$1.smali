.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;
.super Ljava/lang/Object;
.source "ProjectListFragment.kt"

# interfaces
.implements Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "org/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1",
        "Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;",
        "onImportFinished",
        "",
        "success",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImportFinished(Z)V
    .locals 7
    .param p1, "success"    # Z

    .line 135
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->access$setHasImportTaskFinished$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Z)V

    .line 136
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    iget-object v2, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-boolean v2, v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    invoke-static {v0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->access$setAdapterItems(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Z)V

    .line 137
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->access$getHasImportTaskFinished$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->access$getHasUnzipAndImportTaskFinished$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    nop

    .line 139
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 141
    const v4, 0x7f10001b

    .line 142
    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-static {v5}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->access$getFilesForImportTask$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 143
    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-static {v6}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->access$getFilesForImportTask$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    .line 140
    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->access$getFilesForImportTask$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 148
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1202e4

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 149
    :cond_3
    :goto_2
    nop

    .line 150
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$projectImportListener$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setShowProgressBar(Z)V

    .line 151
    return-void
.end method
