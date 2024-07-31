.class public Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;
.super Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;
.source "BackpackSceneFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<",
        "Lorg/catrobat/catroid/content/Scene;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private sceneController:Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;-><init>()V

    .line 48
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->sceneController:Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;

    return-void
.end method


# virtual methods
.method protected deleteItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Scene;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Scene;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->setShowProgressBar(Z)V

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Scene;

    .line 95
    .local v2, "item":Lorg/catrobat/catroid/content/Scene;
    :try_start_0
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->sceneController:Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->delete(Lorg/catrobat/catroid/content/Scene;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_1

    .line 96
    :catch_0
    move-exception v3

    .line 97
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->remove(Ljava/lang/Object;)Z

    .line 100
    .end local v2    # "item":Lorg/catrobat/catroid/content/Scene;
    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100015

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 101
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->saveBackpack()V

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->finishActionMode()V

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 110
    :cond_1
    return-void
.end method

.method protected getDeleteAlertTitleId()I
    .locals 1

    .line 87
    const v0, 0x7f10000d

    return v0
.end method

.method protected bridge synthetic getItemName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 44
    check-cast p1, Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->getItemName(Lorg/catrobat/catroid/content/Scene;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getItemName(Lorg/catrobat/catroid/content/Scene;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lorg/catrobat/catroid/content/Scene;

    .line 114
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeAdapter()V
    .locals 2

    .line 52
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getScenes()Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Scene;>;"
    const-string v1, "showDetailsSceneList"

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->hasDetails:Z

    .line 55
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/SceneAdapter;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SceneAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->onAdapterReady()V

    .line 57
    return-void
.end method

.method protected unpackItems(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Scene;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Scene;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->setShowProgressBar(Z)V

    .line 62
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 63
    .local v1, "destinationProject":Lorg/catrobat/catroid/content/Project;
    const/4 v2, 0x0

    .line 65
    .local v2, "unpackedItemCnt":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/Scene;

    .line 67
    .local v4, "item":Lorg/catrobat/catroid/content/Scene;
    :try_start_0
    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->sceneController:Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;

    invoke-virtual {v5, v4, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->unpack(Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Project;)Lorg/catrobat/catroid/content/Scene;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/catrobat/catroid/content/Project;->addScene(Lorg/catrobat/catroid/content/Scene;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 71
    goto :goto_1

    .line 69
    :catch_0
    move-exception v5

    .line 70
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v4    # "item":Lorg/catrobat/catroid/content/Scene;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 74
    :cond_0
    if-lez v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100029

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 75
    invoke-virtual {v4, v5, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 81
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->finishActionMode()V

    .line 82
    return-void
.end method
