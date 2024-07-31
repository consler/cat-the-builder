.class public Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;
.super Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;
.source "BackpackSpriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<",
        "Lorg/catrobat/catroid/content/Sprite;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;-><init>()V

    .line 49
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    return-void
.end method


# virtual methods
.method protected deleteItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->setShowProgressBar(Z)V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 96
    .local v2, "item":Lorg/catrobat/catroid/content/Sprite;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->delete(Lorg/catrobat/catroid/content/Sprite;)V

    .line 97
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->remove(Ljava/lang/Object;)Z

    .line 98
    .end local v2    # "item":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100018

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 99
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->saveBackpack()V

    .line 104
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->finishActionMode()V

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 108
    :cond_1
    return-void
.end method

.method protected getDeleteAlertTitleId()I
    .locals 1

    .line 89
    const v0, 0x7f100010

    return v0
.end method

.method protected bridge synthetic getItemName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 45
    check-cast p1, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->getItemName(Lorg/catrobat/catroid/content/Sprite;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getItemName(Lorg/catrobat/catroid/content/Sprite;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lorg/catrobat/catroid/content/Sprite;

    .line 112
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeAdapter()V
    .locals 2

    .line 53
    const-string v0, "showDetailsSpriteList"

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->hasDetails:Z

    .line 55
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getSprites()Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 57
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->onAdapterReady()V

    .line 58
    return-void
.end method

.method protected unpackItems(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->setShowProgressBar(Z)V

    .line 63
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 64
    .local v1, "dstProject":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    .line 65
    .local v2, "dstScene":Lorg/catrobat/catroid/content/Scene;
    const/4 v3, 0x0

    .line 67
    .local v3, "unpackedItemCnt":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Sprite;

    .line 69
    .local v5, "item":Lorg/catrobat/catroid/content/Sprite;
    :try_start_0
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-virtual {v7, v5, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->unpack(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Scene;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_1

    .line 71
    :catch_0
    move-exception v6

    .line 72
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->TAG:Ljava/lang/String;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v5    # "item":Lorg/catrobat/catroid/content/Sprite;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 76
    :cond_0
    if-lez v3, :cond_1

    .line 77
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10002c

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    .line 77
    invoke-virtual {v5, v6, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 83
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->finishActionMode()V

    .line 84
    return-void
.end method
