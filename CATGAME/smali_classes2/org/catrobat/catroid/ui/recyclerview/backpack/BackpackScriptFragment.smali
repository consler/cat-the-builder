.class public Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;
.super Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;
.source "BackpackScriptFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private scriptController:Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;-><init>()V

    .line 46
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->scriptController:Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    return-void
.end method


# virtual methods
.method protected deleteItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->setShowProgressBar(Z)V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, "item":Ljava/lang/String;
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->removeItemFromScriptBackPack(Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->remove(Ljava/lang/Object;)Z

    .line 100
    .end local v2    # "item":Ljava/lang/String;
    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100016

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
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->finishActionMode()V

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 110
    :cond_1
    return-void
.end method

.method protected getDeleteAlertTitleId()I
    .locals 1

    .line 91
    const v0, 0x7f10000e

    return v0
.end method

.method protected bridge synthetic getItemName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->getItemName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getItemName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    .line 114
    return-object p1
.end method

.method protected initializeAdapter()V
    .locals 2

    .line 50
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedScriptGroups()Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScriptAdapter;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScriptAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 52
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->onAdapterReady()V

    .line 53
    return-void
.end method

.method protected unpackItems(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->setShowProgressBar(Z)V

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "unpackedItemCnt":I
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    .line 61
    .local v2, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 62
    .local v4, "item":Ljava/lang/String;
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedUserDefinedBricks()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 63
    .local v5, "userDefinedBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;>;"
    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v2, v5}, Lorg/catrobat/catroid/content/Sprite;->addClonesOfUserDefinedBrickList(Ljava/util/List;)V

    .line 67
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedScripts()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 68
    .local v6, "scripts":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Script;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/content/Script;

    .line 70
    .local v8, "script":Lorg/catrobat/catroid/content/Script;
    :try_start_0
    iget-object v9, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->scriptController:Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    invoke-virtual {v9, v8, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;->unpack(Lorg/catrobat/catroid/content/Script;Lorg/catrobat/catroid/content/Sprite;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_2

    .line 72
    :catch_0
    move-exception v9

    .line 73
    .local v9, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v10, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->TAG:Ljava/lang/String;

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v8    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v9    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_2
    goto :goto_1

    .line 76
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "userDefinedBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;>;"
    .end local v6    # "scripts":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Script;>;"
    :cond_1
    goto :goto_0

    .line 78
    :cond_2
    if-lez v1, :cond_3

    .line 79
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10002a

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 79
    invoke-virtual {v4, v5, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 85
    :cond_3
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->finishActionMode()V

    .line 86
    return-void
.end method
