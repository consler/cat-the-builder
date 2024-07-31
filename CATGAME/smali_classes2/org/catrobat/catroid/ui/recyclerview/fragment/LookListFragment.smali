.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;
.super Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;
.source "LookListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<",
        "Lorg/catrobat/catroid/common/LookData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLookListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LookListFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,265:1\n25#2,3:266\n*E\n*S KotlinDebug\n*F\n+ 1 LookListFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment\n*L\n55#1,3:266\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 .2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001.B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\r\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u0013\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H\u0014J\u0008\u0010\u0014\u001a\u00020\u000eH\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0015J\u0008\u0010\u0017\u001a\u00020\u0016H\u0014J\u0008\u0010\u0018\u001a\u00020\u0016H\u0014J\u0008\u0010\u0019\u001a\u00020\u000eH\u0014J\u0008\u0010\u001a\u001a\u00020\u001bH\u0014J\"\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00162\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0008\u0010!\u001a\u00020\u000eH\u0016J\u0012\u0010\"\u001a\u00020\u000e2\u0008\u0010#\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020\u000eH\u0016J\u001c\u0010(\u001a\u00020\u000e2\u0008\u0010#\u001a\u0004\u0018\u00010\u00022\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0018\u0010+\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H\u0014J\u0008\u0010,\u001a\u00020\u000eH\u0014J\u0006\u0010-\u001a\u00020\u001bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006/"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;",
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;",
        "Lorg/catrobat/catroid/common/LookData;",
        "()V",
        "currentItem",
        "lookController",
        "Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;",
        "projectManager",
        "Lorg/catrobat/catroid/ProjectManager;",
        "getProjectManager",
        "()Lorg/catrobat/catroid/ProjectManager;",
        "projectManager$delegate",
        "Lkotlin/Lazy;",
        "copyItems",
        "",
        "selectedItems",
        "",
        "deleteItem",
        "lookData",
        "deleteItems",
        "disposeItem",
        "getDeleteAlertTitleId",
        "",
        "getRenameDialogHint",
        "getRenameDialogTitle",
        "initializeAdapter",
        "isBackpackEmpty",
        "",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onDestroy",
        "onItemClick",
        "item",
        "onPrepareOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onResume",
        "onSettingsClick",
        "view",
        "Landroid/view/View;",
        "packItems",
        "switchToBackpack",
        "undo",
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
.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment$Companion;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private currentItem:Lorg/catrobat/catroid/common/LookData;

.field private final lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

.field private final projectManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment$Companion;

    .line 59
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 51
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;-><init>()V

    .line 52
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    .line 55
    move-object v0, p0

    .line 266
    .local v0, "$this$inject$iv":Landroid/content/ComponentCallbacks;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 267
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 268
    .local v3, "$i$f$inject":I
    sget-object v4, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment$$special$$inlined$inject$1;

    invoke-direct {v5, v0, v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment$$special$$inlined$inject$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .end local v0    # "$this$inject$iv":Landroid/content/ComponentCallbacks;
    .end local v1    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "$i$f$inject":I
    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->projectManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final disposeItem()V
    .locals 1

    .line 143
    sget-object v0, Lorg/catrobat/catroid/common/Constants;->TEMP_LOOK_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lorg/catrobat/catroid/common/Constants;->TEMP_LOOK_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 145
    const/4 v0, 0x0

    check-cast v0, Lorg/catrobat/catroid/common/LookData;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->currentItem:Lorg/catrobat/catroid/common/LookData;

    .line 147
    :cond_0
    return-void
.end method

.method private final getProjectManager()Lorg/catrobat/catroid/ProjectManager;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->projectManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ProjectManager;

    return-object v0
.end method


# virtual methods
.method protected copyItems(Ljava/util/List;)V
    .locals 9
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/common/LookData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->setShowProgressBar(Z)V

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "copiedItemCnt":I
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    .line 120
    .local v2, "currentScene":Lorg/catrobat/catroid/content/Scene;
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    .line 122
    .local v3, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/common/LookData;

    .line 123
    .local v5, "item":Lorg/catrobat/catroid/common/LookData;
    nop

    .line 124
    :try_start_0
    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-object v7, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    invoke-virtual {v7, v5, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->copy(Lorg/catrobat/catroid/common/LookData;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/LookData;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :catch_0
    move-exception v6

    .line 127
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->TAG:Ljava/lang/String;

    move-object v8, v6

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v5    # "item":Lorg/catrobat/catroid/common/LookData;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 122
    goto :goto_0

    .line 130
    :cond_0
    if-lez v1, :cond_1

    .line 131
    nop

    .line 132
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 133
    const v6, 0x7f100004

    .line 134
    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    .line 132
    invoke-virtual {v5, v6, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v4, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->finishActionMode()V

    .line 140
    return-void
.end method

.method public final deleteItem(Lorg/catrobat/catroid/common/LookData;)V
    .locals 1
    .param p1, "lookData"    # Lorg/catrobat/catroid/common/LookData;

    .line 213
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->deleteItems(Ljava/util/List;)V

    .line 214
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
            "Lorg/catrobat/catroid/common/LookData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->setShowProgressBar(Z)V

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/common/LookData;

    .line 166
    .local v2, "item":Lorg/catrobat/catroid/common/LookData;
    nop

    .line 167
    :try_start_0
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->delete(Lorg/catrobat/catroid/common/LookData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->TAG:Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 171
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->remove(Ljava/lang/Object;)Z

    .line 165
    .end local v2    # "item":Lorg/catrobat/catroid/common/LookData;
    goto :goto_0

    .line 173
    :cond_0
    nop

    .line 174
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 175
    const v3, 0x7f100012

    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 177
    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 174
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v1, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->finishActionMode()V

    .line 181
    return-void
.end method

.method protected getDeleteAlertTitleId()I
    .locals 1

    .line 161
    const v0, 0x7f10000a

    return v0
.end method

.method protected getRenameDialogHint()I
    .locals 1

    .line 185
    const v0, 0x7f120539

    return v0
.end method

.method protected getRenameDialogTitle()I
    .locals 1

    .line 183
    const v0, 0x7f120705

    return v0
.end method

.method protected initializeAdapter()V
    .locals 3

    .line 63
    const-string v0, "showDetailsLookList"

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    const-string v1, "projectManager.currentSprite"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "items":Ljava/util/List;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/LookAdapter;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/LookAdapter;-><init>(Ljava/util/List;)V

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 66
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f1204b6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->onAdapterReady()V

    .line 68
    return-void
.end method

.method protected isBackpackEmpty()Z
    .locals 2

    .line 108
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v0

    const-string v1, "BackpackListManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedLooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 188
    invoke-super {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 189
    const/16 v0, 0x7e4

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    .line 191
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    if-eqz v1, :cond_0

    .line 192
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 195
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 150
    invoke-super {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onDestroy()V

    .line 151
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->disposeItem()V

    .line 152
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    .line 153
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    if-eqz v1, :cond_0

    .line 154
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 155
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->checkForChange()V

    .line 156
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->showUndo(Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->onItemClick(Lorg/catrobat/catroid/common/LookData;)V

    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/common/LookData;)V
    .locals 5
    .param p1, "item"    # Lorg/catrobat/catroid/common/LookData;

    .line 217
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->actionModeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 218
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/common/Nameable;

    invoke-super {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onItemClick(Lorg/catrobat/catroid/common/Nameable;)V

    .line 219
    return-void

    .line 221
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->actionModeType:I

    if-eqz v0, :cond_1

    .line 222
    return-void

    .line 224
    :cond_1
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->currentItem:Lorg/catrobat/catroid/common/LookData;

    .line 225
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->invalidateThumbnailBitmap()V

    .line 226
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->clearCollisionInformation()V

    .line 227
    :cond_3
    nop

    .line 228
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->currentItem:Lorg/catrobat/catroid/common/LookData;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    sget-object v2, Lorg/catrobat/catroid/common/Constants;->TEMP_LOOK_FILE:Ljava/io/File;

    invoke-static {v1, v2}, Lorg/catrobat/catroid/io/StorageOperations;->copyFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->TAG:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 232
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string v4, "org.catrobat.paintroid.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 234
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v3, "org.catrobat.extra.PAINTROID_PICTURE_PATH"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 237
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const/16 v0, 0x7e4

    invoke-virtual {p0, v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 239
    return-void
.end method

.method public bridge synthetic onItemClick(Lorg/catrobat/catroid/common/Nameable;)V
    .locals 0

    .line 51
    check-cast p1, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->onItemClick(Lorg/catrobat/catroid/common/LookData;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 72
    const v0, 0x7f0a02e9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.catblocks_reorder_scripts)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 73
    const v0, 0x7f0a02e7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.catblocks)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 74
    const v0, 0x7f0a0388

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.find)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 78
    invoke-super {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onResume()V

    .line 79
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f1204e4

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->showHintSnackbar(Landroid/app/Activity;I)V

    .line 80
    return-void
.end method

.method public bridge synthetic onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 51
    check-cast p1, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->onSettingsClick(Lorg/catrobat/catroid/common/LookData;Landroid/view/View;)V

    return-void
.end method

.method public onSettingsClick(Lorg/catrobat/catroid/common/LookData;Landroid/view/View;)V
    .locals 5
    .param p1, "item"    # Lorg/catrobat/catroid/common/LookData;
    .param p2, "view"    # Landroid/view/View;

    .line 242
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 243
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 244
    .local v1, "itemList":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f0e000b

    invoke-virtual {v2, v4, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 246
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment$onSettingsClick$1;

    invoke-direct {v2, p0, v1, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment$onSettingsClick$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;Ljava/util/List;Lorg/catrobat/catroid/common/LookData;)V

    check-cast v2, Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 257
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0a0059

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f12060a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 258
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0a0485

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "popupMenu.menu.findItem(R.id.new_group)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 259
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a0486

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.new_scene)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 260
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a05b0

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.show_details)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 261
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a0555

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.project_options)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 262
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 263
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
            "Lorg/catrobat/catroid/common/LookData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->setShowProgressBar(Z)V

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "packedItemCnt":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/LookData;

    .line 86
    .local v3, "item":Lorg/catrobat/catroid/common/LookData;
    nop

    .line 87
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v4

    const-string v5, "BackpackListManager.getInstance()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedLooks()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    invoke-virtual {v5, v3}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->pack(Lorg/catrobat/catroid/common/LookData;)Lorg/catrobat/catroid/common/LookData;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->saveBackpack()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :catch_0
    move-exception v4

    .line 91
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->TAG:Ljava/lang/String;

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v3    # "item":Lorg/catrobat/catroid/common/LookData;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 85
    goto :goto_0

    .line 94
    :cond_0
    if-lez v1, :cond_1

    .line 95
    nop

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 97
    const v4, 0x7f10001f

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 96
    invoke-virtual {v3, v4, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v2, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->switchToBackpack()V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->finishActionMode()V

    .line 105
    return-void
.end method

.method protected switchToBackpack()V
    .locals 3

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fragmentPosition"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public final undo()Z
    .locals 5

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->currentItem:Lorg/catrobat/catroid/common/LookData;

    if-eqz v0, :cond_0

    .local v0, "it":Lorg/catrobat/catroid/common/LookData;
    const/4 v1, 0x0

    .line 199
    .local v1, "$i$a$-let-LookListFragment$undo$1":I
    nop

    .line 200
    :try_start_0
    sget-object v2, Lorg/catrobat/catroid/common/Constants;->TEMP_LOOK_FILE:Ljava/io/File;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/catrobat/catroid/io/StorageOperations;->copyFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->TAG:Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 204
    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->invalidateThumbnailBitmap()V

    .line 205
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 206
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->disposeItem()V

    .line 207
    const/4 v2, 0x1

    return v2

    .line 209
    .end local v0    # "it":Lorg/catrobat/catroid/common/LookData;
    .end local v1    # "$i$a$-let-LookListFragment$undo$1":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
