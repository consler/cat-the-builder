.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;
.super Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;
.source "SceneListFragment.kt"

# interfaces
.implements Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<",
        "Lorg/catrobat/catroid/content/Scene;",
        ">;",
        "Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneListFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,253:1\n25#2,3:254\n*E\n*S KotlinDebug\n*F\n+ 1 SceneListFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment\n*L\n53#1,3:254\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 +2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u0003:\u0001+B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\r\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H\u0014J\u0008\u0010\u0011\u001a\u00020\u000eH\u0002J\u0018\u0010\u0012\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H\u0014J\u0008\u0010\u0013\u001a\u00020\u0014H\u0015J\u0008\u0010\u0015\u001a\u00020\u0014H\u0014J\u0008\u0010\u0016\u001a\u00020\u0014H\u0014J\u0008\u0010\u0017\u001a\u00020\u000eH\u0014J\u0008\u0010\u0018\u001a\u00020\u0019H\u0014J\u0012\u0010\u001a\u001a\u00020\u000e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u0019H\u0016J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u000eH\u0016J\u001a\u0010\"\u001a\u00020\u000e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00022\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010%\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H\u0014J\u001a\u0010&\u001a\u00020\u000e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\'\u001a\u00020(H\u0014J\u0008\u0010)\u001a\u00020\u000eH\u0014J\u0008\u0010*\u001a\u00020\u000eH\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;",
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;",
        "Lorg/catrobat/catroid/content/Scene;",
        "Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;",
        "()V",
        "projectManager",
        "Lorg/catrobat/catroid/ProjectManager;",
        "getProjectManager",
        "()Lorg/catrobat/catroid/ProjectManager;",
        "projectManager$delegate",
        "Lkotlin/Lazy;",
        "sceneController",
        "Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;",
        "copyItems",
        "",
        "selectedItems",
        "",
        "createEmptySceneWithDefaultName",
        "deleteItems",
        "getDeleteAlertTitleId",
        "",
        "getRenameDialogHint",
        "getRenameDialogTitle",
        "initializeAdapter",
        "isBackpackEmpty",
        "",
        "onItemClick",
        "item",
        "onLoadFinished",
        "success",
        "onPrepareOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onResume",
        "onSettingsClick",
        "view",
        "Landroid/view/View;",
        "packItems",
        "renameItem",
        "name",
        "",
        "switchToBackpack",
        "switchToSpriteListFragment",
        "Companion",
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
.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final projectManager$delegate:Lkotlin/Lazy;

.field private final sceneController:Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment$Companion;

    .line 250
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneListFragment::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 49
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;-><init>()V

    .line 52
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->sceneController:Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;

    .line 53
    move-object v0, p0

    .line 254
    .local v0, "$this$inject$iv":Landroid/content/ComponentCallbacks;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 255
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 256
    .local v3, "$i$f$inject":I
    sget-object v4, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment$$special$$inlined$inject$1;

    invoke-direct {v5, v0, v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment$$special$$inlined$inject$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .end local v0    # "$this$inject$iv":Landroid/content/ComponentCallbacks;
    .end local v1    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "$i$f$inject":I
    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->projectManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final createEmptySceneWithDefaultName()V
    .locals 5

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->setShowProgressBar(Z)V

    .line 174
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 175
    .local v0, "currentProject":Lorg/catrobat/catroid/content/Project;
    new-instance v1, Lorg/catrobat/catroid/content/Scene;

    const v2, 0x7f12024f

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/catrobat/catroid/content/Scene;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)V

    .line 176
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    new-instance v2, Lorg/catrobat/catroid/content/Sprite;

    const v3, 0x7f120052

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, "backgroundSprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v3, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const-string v4, "backgroundSprite.look"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Look;->setZIndex(I)Z

    .line 178
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Scene;->addSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 179
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->hasScene()Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Project;->addScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 183
    :cond_0
    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->setShowProgressBar(Z)V

    .line 184
    return-void
.end method

.method private final getProjectManager()Lorg/catrobat/catroid/ProjectManager;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->projectManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ProjectManager;

    return-object v0
.end method

.method private final switchToSpriteListFragment()V
    .locals 4

    .line 67
    nop

    .line 69
    nop

    .line 67
    nop

    .line 68
    nop

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 68
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    invoke-direct {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$Companion;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a03b7

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 70
    return-void
.end method


# virtual methods
.method protected copyItems(Ljava/util/List;)V
    .locals 7
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/content/Scene;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->setShowProgressBar(Z)V

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "copiedItemCnt":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Scene;

    .line 122
    .local v3, "item":Lorg/catrobat/catroid/content/Scene;
    nop

    .line 123
    :try_start_0
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->sceneController:Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->copy(Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Project;)Lorg/catrobat/catroid/content/Scene;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :catch_0
    move-exception v4

    .line 126
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->TAG:Ljava/lang/String;

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v3    # "item":Lorg/catrobat/catroid/content/Scene;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 121
    goto :goto_0

    .line 129
    :cond_0
    if-lez v1, :cond_1

    .line 130
    nop

    .line 131
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 132
    const v4, 0x7f100006

    .line 133
    new-array v0, v0, [Ljava/lang/Object;

    .line 134
    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 131
    invoke-virtual {v3, v4, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v2, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->finishActionMode()V

    .line 139
    return-void
.end method

.method protected deleteItems(Ljava/util/List;)V
    .locals 7
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/content/Scene;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->setShowProgressBar(Z)V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Scene;

    .line 147
    .local v2, "item":Lorg/catrobat/catroid/content/Scene;
    nop

    .line 148
    :try_start_0
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->sceneController:Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->delete(Lorg/catrobat/catroid/content/Scene;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 149
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->TAG:Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 152
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->remove(Ljava/lang/Object;)Z

    .line 146
    .end local v2    # "item":Lorg/catrobat/catroid/content/Scene;
    goto :goto_0

    .line 154
    :cond_0
    nop

    .line 155
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 156
    const v3, 0x7f100015

    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 158
    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 155
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v1, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->finishActionMode()V

    .line 162
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const-string v1, "adapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->createEmptySceneWithDefaultName()V

    .line 165
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 166
    .local v0, "currentProject":Lorg/catrobat/catroid/content/Project;
    const-string v1, "currentProject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 167
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyEditedScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 168
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->switchToSpriteListFragment()V

    .line 170
    :cond_2
    return-void
.end method

.method protected getDeleteAlertTitleId()I
    .locals 1

    .line 142
    const v0, 0x7f10000d

    return v0
.end method

.method protected getRenameDialogHint()I
    .locals 1

    .line 188
    const v0, 0x7f12071a

    return v0
.end method

.method protected getRenameDialogTitle()I
    .locals 1

    .line 186
    const v0, 0x7f120708

    return v0
.end method

.method protected initializeAdapter()V
    .locals 2

    .line 79
    const-string v0, "showDetailsSceneList"

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    const-string v1, "projectManager.currentProject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "items":Ljava/util/List;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/SceneAdapter;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SceneAdapter;-><init>(Ljava/util/List;)V

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 82
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->onAdapterReady()V

    .line 83
    return-void
.end method

.method protected isBackpackEmpty()Z
    .locals 2

    .line 110
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v0

    const-string v1, "BackpackListManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getScenes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->onItemClick(Lorg/catrobat/catroid/content/Scene;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Lorg/catrobat/catroid/common/Nameable;)V
    .locals 0

    .line 49
    check-cast p1, Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->onItemClick(Lorg/catrobat/catroid/content/Scene;)V

    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/content/Scene;)V
    .locals 4
    .param p1, "item"    # Lorg/catrobat/catroid/content/Scene;

    .line 205
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->actionModeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 206
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/common/Nameable;

    invoke-super {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onItemClick(Lorg/catrobat/catroid/common/Nameable;)V

    .line 207
    return-void

    .line 209
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->actionModeType:I

    if-nez v0, :cond_1

    .line 210
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyEditedScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 211
    nop

    .line 214
    nop

    .line 211
    nop

    .line 213
    nop

    .line 211
    nop

    .line 212
    nop

    .line 211
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 212
    const v1, 0x7f0a03b7

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;-><init>()V

    check-cast v2, Landroidx/fragment/app/Fragment;

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$Companion;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 213
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$Companion;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 216
    :cond_1
    return-void
.end method

.method public onLoadFinished(Z)V
    .locals 3
    .param p1, "success"    # Z

    .line 242
    if-nez p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f1202ea

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 244
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const-string v1, "adapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    const-string v2, "projectManager.currentProject"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->setItems(Ljava/util/List;)V

    .line 247
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 74
    const v0, 0x7f0a0485

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.new_group)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 75
    const v0, 0x7f0a0486

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.new_scene)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 56
    invoke-super {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onResume()V

    .line 57
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 58
    .local v0, "currentProject":Lorg/catrobat/catroid/content/Project;
    const-string v1, "currentProject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 59
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyEditedScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 60
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->switchToSpriteListFragment()V

    .line 62
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyEditedScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 63
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    return-void

    .line 63
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 49
    check-cast p1, Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->onSettingsClick(Lorg/catrobat/catroid/content/Scene;Landroid/view/View;)V

    return-void
.end method

.method public onSettingsClick(Lorg/catrobat/catroid/content/Scene;Landroid/view/View;)V
    .locals 5
    .param p1, "item"    # Lorg/catrobat/catroid/content/Scene;
    .param p2, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 220
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 221
    .local v1, "itemList":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f0e000b

    invoke-virtual {v2, v4, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 223
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment$onSettingsClick$1;

    invoke-direct {v2, p0, v1, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment$onSettingsClick$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;Ljava/util/List;Lorg/catrobat/catroid/content/Scene;)V

    check-cast v2, Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 233
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0a0059

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f12060a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 234
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0a0485

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "popupMenu.menu.findItem(R.id.new_group)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 235
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a0486

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.new_scene)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 236
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a05b0

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.show_details)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 237
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a0555

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.project_options)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 238
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 239
    return-void
.end method

.method protected packItems(Ljava/util/List;)V
    .locals 7
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/content/Scene;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->setShowProgressBar(Z)V

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "packedItemCnt":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Scene;

    .line 89
    .local v3, "item":Lorg/catrobat/catroid/content/Scene;
    nop

    .line 90
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v4

    const-string v5, "BackpackListManager.getInstance()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getScenes()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->sceneController:Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;

    invoke-virtual {v5, v3}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->pack(Lorg/catrobat/catroid/content/Scene;)Lorg/catrobat/catroid/content/Scene;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->saveBackpack()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :catch_0
    move-exception v4

    .line 94
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->TAG:Ljava/lang/String;

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v3    # "item":Lorg/catrobat/catroid/content/Scene;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 88
    goto :goto_0

    .line 97
    :cond_0
    if-lez v1, :cond_1

    .line 98
    nop

    .line 99
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 100
    const v4, 0x7f100020

    .line 101
    new-array v0, v0, [Ljava/lang/Object;

    .line 102
    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 99
    invoke-virtual {v3, v4, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v2, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->switchToBackpack()V

    .line 107
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->finishActionMode()V

    .line 108
    return-void
.end method

.method public bridge synthetic renameItem(Lorg/catrobat/catroid/common/Nameable;Ljava/lang/String;)V
    .locals 0

    .line 49
    check-cast p1, Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->renameItem(Lorg/catrobat/catroid/content/Scene;Ljava/lang/String;)V

    return-void
.end method

.method protected renameItem(Lorg/catrobat/catroid/content/Scene;Ljava/lang/String;)V
    .locals 4
    .param p1, "item"    # Lorg/catrobat/catroid/content/Scene;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->sceneController:Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->rename(Lorg/catrobat/catroid/content/Scene;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 194
    .local v0, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    .line 195
    const-string v1, "currentProject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext().applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectLoaderKt;->loadProject(Ljava/io/File;Landroid/content/Context;)Z

    .line 196
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->initializeAdapter()V

    .end local v0    # "currentProject":Lorg/catrobat/catroid/content/Project;
    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f120304

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 199
    :cond_2
    :goto_1
    nop

    .line 201
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->finishActionMode()V

    .line 202
    return-void
.end method

.method protected switchToBackpack()V
    .locals 3

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fragmentPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
