.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;
.super Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;
.source "SpriteListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$MultiViewTouchHelperCallback;,
        Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<",
        "Lorg/catrobat/catroid/content/Sprite;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpriteListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpriteListFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,384:1\n25#2,3:385\n*E\n*S KotlinDebug\n*F\n+ 1 SpriteListFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment\n*L\n73#1,3:385\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 92\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u00029:B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u0013\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\u00112\u000e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0017H\u0014J\u0018\u0010\u0018\u001a\u00020\u00112\u000e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0017H\u0014J\u0008\u0010\u0019\u001a\u00020\u001aH\u0015J\u0008\u0010\u001b\u001a\u00020\u001aH\u0014J\u0008\u0010\u001c\u001a\u00020\u001aH\u0014J\u0008\u0010\u001d\u001a\u00020\u0011H\u0014J\u0008\u0010\u001e\u001a\u00020\u0006H\u0014J\"\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u001a2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010$\u001a\u00020\u0011H\u0016J\u0012\u0010%\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010&\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020*H\u0016J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020-H\u0016J\u0008\u0010.\u001a\u00020\u0011H\u0016J\u001a\u0010/\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u00100\u001a\u000201H\u0016J\u0018\u00102\u001a\u00020\u00112\u000e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0017H\u0014J\u001a\u00103\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u00104\u001a\u000205H\u0014J\u0008\u00106\u001a\u00020\u0006H\u0016J\u0008\u00107\u001a\u00020\u0011H\u0002J\u0008\u00108\u001a\u00020\u0011H\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;",
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;",
        "Lorg/catrobat/catroid/content/Sprite;",
        "()V",
        "currentSprite",
        "isSingleVisibleSprite",
        "",
        "()Z",
        "projectManager",
        "Lorg/catrobat/catroid/ProjectManager;",
        "getProjectManager",
        "()Lorg/catrobat/catroid/ProjectManager;",
        "projectManager$delegate",
        "Lkotlin/Lazy;",
        "spriteController",
        "Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;",
        "addFromLibrary",
        "",
        "selectedItem",
        "addFromLocalProject",
        "item",
        "copyItems",
        "selectedItems",
        "",
        "deleteItems",
        "getDeleteAlertTitleId",
        "",
        "getRenameDialogHint",
        "getRenameDialogTitle",
        "initializeAdapter",
        "isBackpackEmpty",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAdapterReady",
        "onItemClick",
        "onItemLongClick",
        "holder",
        "Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;",
        "onOptionsItemSelected",
        "Landroid/view/MenuItem;",
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
        "shouldShowEmptyView",
        "showNewGroupDialog",
        "switchToBackpack",
        "Companion",
        "MultiViewTouchHelperCallback",
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
.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$Companion;

.field public static final IMPORT_OBJECT_REQUEST_CODE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentSprite:Lorg/catrobat/catroid/content/Sprite;

.field private final projectManager$delegate:Lkotlin/Lazy;

.field private final spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$Companion;

    .line 380
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpriteListFragment::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 71
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;-><init>()V

    .line 72
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    .line 73
    move-object v0, p0

    .line 385
    .local v0, "$this$inject$iv":Landroid/content/ComponentCallbacks;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 386
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 387
    .local v3, "$i$f$inject":I
    sget-object v4, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$$special$$inlined$inject$1;

    invoke-direct {v5, v0, v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$$special$$inlined$inject$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .end local v0    # "$this$inject$iv":Landroid/content/ComponentCallbacks;
    .end local v1    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "$i$f$inject":I
    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->projectManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$addFromLibrary(Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;
    .param p1, "selectedItem"    # Lorg/catrobat/catroid/content/Sprite;

    .line 71
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->addFromLibrary(Lorg/catrobat/catroid/content/Sprite;)V

    return-void
.end method

.method public static final synthetic access$addFromLocalProject(Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;
    .param p1, "item"    # Lorg/catrobat/catroid/content/Sprite;

    .line 71
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->addFromLocalProject(Lorg/catrobat/catroid/content/Sprite;)V

    return-void
.end method

.method public static final synthetic access$getSpriteController$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;)Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final addFromLibrary(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 3
    .param p1, "selectedItem"    # Lorg/catrobat/catroid/content/Sprite;

    .line 294
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    const-string v2, "https://share.catrob.at/pocketcode/media-library/objects"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 298
    return-void
.end method

.method private final addFromLocalProject(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 3
    .param p1, "item"    # Lorg/catrobat/catroid/content/Sprite;

    .line 301
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 302
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/ProjectListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 304
    nop

    .line 305
    const v1, 0x7f12050c

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    const-string v2, "merge"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    return-void
.end method

.method private final getProjectManager()Lorg/catrobat/catroid/ProjectManager;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->projectManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ProjectManager;

    return-object v0
.end method

.method private final showNewGroupDialog()V
    .locals 6

    .line 144
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v1}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    .line 146
    .local v1, "uniqueNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    nop

    .line 154
    nop

    .line 146
    nop

    .line 148
    nop

    .line 146
    nop

    .line 147
    nop

    .line 146
    const v2, 0x7f12075e

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    .line 147
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const-string v5, "adapter"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    check-cast v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    .line 149
    nop

    .line 150
    const v3, 0x7f12023f

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v4

    .line 149
    invoke-virtual {v1, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    .line 154
    const v3, 0x7f1205ff

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$showNewGroupDialog$1;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$showNewGroupDialog$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;)V

    check-cast v4, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 157
    nop

    .line 159
    nop

    .line 157
    nop

    .line 158
    nop

    .line 157
    const v2, 0x7f1205a7

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 158
    const v3, 0x7f1201b8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 160
    return-void
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
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->setShowProgressBar(Z)V

    .line 205
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 206
    .local v1, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    .line 207
    .local v2, "currentScene":Lorg/catrobat/catroid/content/Scene;
    const/4 v3, 0x0

    .line 208
    .local v3, "copiedItemCnt":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Sprite;

    .line 209
    .local v5, "item":Lorg/catrobat/catroid/content/Sprite;
    nop

    .line 210
    :try_start_0
    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iget-object v7, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-virtual {v7, v5, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->copy(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Scene;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 212
    :catch_0
    move-exception v6

    .line 213
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->TAG:Ljava/lang/String;

    move-object v8, v6

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v5    # "item":Lorg/catrobat/catroid/content/Sprite;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 208
    goto :goto_0

    .line 216
    :cond_0
    if-lez v3, :cond_1

    .line 217
    nop

    .line 218
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 219
    const v6, 0x7f100008

    .line 220
    new-array v0, v0, [Ljava/lang/Object;

    .line 221
    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    .line 218
    invoke-virtual {v5, v6, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v4, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->finishActionMode()V

    .line 226
    return-void
.end method

.method protected deleteItems(Ljava/util/List;)V
    .locals 9
    .param p1, "selectedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->setShowProgressBar(Z)V

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 234
    .local v2, "item":Lorg/catrobat/catroid/content/Sprite;
    instance-of v3, v2, Lorg/catrobat/catroid/content/GroupSprite;

    if-eqz v3, :cond_1

    .line 235
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/content/GroupSprite;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/GroupSprite;->getGroupItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/GroupItemSprite;

    .line 236
    .local v4, "sprite":Lorg/catrobat/catroid/content/GroupItemSprite;
    invoke-virtual {v4, v0}, Lorg/catrobat/catroid/content/GroupItemSprite;->setConvertToSprite(Z)V

    .line 237
    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    move-object v6, v4

    check-cast v6, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->convert(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    .line 238
    .local v5, "convertedSprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const-string v7, "adapter"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v6

    iget-object v8, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v6, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 235
    .end local v4    # "sprite":Lorg/catrobat/catroid/content/GroupItemSprite;
    .end local v5    # "convertedSprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_1

    .line 240
    :cond_0
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 242
    :cond_1
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->delete(Lorg/catrobat/catroid/content/Sprite;)V

    .line 243
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->remove(Ljava/lang/Object;)Z

    .line 233
    .end local v2    # "item":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 245
    :cond_2
    nop

    .line 246
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 247
    const v3, 0x7f100018

    .line 248
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 249
    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 246
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v1, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->finishActionMode()V

    .line 253
    return-void
.end method

.method protected getDeleteAlertTitleId()I
    .locals 1

    .line 229
    const v0, 0x7f100010

    return v0
.end method

.method protected getRenameDialogHint()I
    .locals 1

    .line 311
    const v0, 0x7f12075f

    return v0
.end method

.method protected getRenameDialogTitle()I
    .locals 1

    .line 309
    const v0, 0x7f12070a

    return v0
.end method

.method protected initializeAdapter()V
    .locals 3

    .line 163
    const-string v0, "showDetailsSpriteList"

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    const-string v1, "projectManager.currentlyEditedScene"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, "items":Ljava/util/List;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;-><init>(Ljava/util/List;)V

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 166
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f1204ba

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->onAdapterReady()V

    .line 168
    return-void
.end method

.method protected isBackpackEmpty()Z
    .locals 2

    .line 195
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v0

    const-string v1, "BackpackListManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getSprites()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isSingleVisibleSprite()Z
    .locals 4

    .line 377
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const-string v1, "adapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/content/GroupSprite;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 256
    invoke-super {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 257
    if-nez p1, :cond_7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 258
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const-string v2, "merge"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v1, :cond_0

    .line 259
    new-instance v3, Ljava/io/File;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 261
    :cond_0
    new-instance v2, Ljava/io/File;

    if-eqz p3, :cond_1

    const-string v3, "media_file_path"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 258
    :goto_1
    nop

    .line 264
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v3

    .line 265
    .local v3, "currentScene":Lorg/catrobat/catroid/content/Scene;
    const/4 v4, 0x0

    .line 266
    .local v4, "resolvedName":Ljava/lang/String;
    nop

    .line 267
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "requireActivity()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/catrobat/catroid/io/StorageOperations;->resolveFileName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 266
    nop

    .line 268
    .local v5, "resolvedFileName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 269
    .local v7, "lookFileName":Ljava/lang/String;
    nop

    .line 270
    if-eqz v5, :cond_3

    invoke-static {v5}, Lorg/catrobat/catroid/io/StorageOperations;->getSanitizedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "image"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 269
    :cond_3
    :goto_2
    nop

    .line 271
    .local v1, "useDefaultSpriteName":Z
    if-eqz v1, :cond_4

    .line 272
    const v8, 0x7f120251

    invoke-virtual {p0, v8}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.default_sprite_name)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v8

    .line 273
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".catrobat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 275
    :cond_4
    const-string v8, "resolvedFileName"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v5

    .line 276
    :goto_3
    nop

    .line 277
    new-instance v8, Lorg/catrobat/catroid/merge/ImportProjectHelper;

    .line 278
    nop

    .line 279
    const-string v9, "currentScene"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/app/Activity;

    .line 277
    invoke-direct {v8, v7, v3, v9}, Lorg/catrobat/catroid/merge/ImportProjectHelper;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;Landroid/app/Activity;)V

    move-object v6, v8

    .line 282
    .local v6, "importProjectHelper":Lorg/catrobat/catroid/merge/ImportProjectHelper;
    invoke-virtual {v6}, Lorg/catrobat/catroid/merge/ImportProjectHelper;->checkForConflicts()Z

    move-result v8

    if-nez v8, :cond_5

    .line 283
    return-void

    .line 285
    :cond_5
    iget-object v8, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v8, :cond_6

    .line 286
    invoke-virtual {v6, v8}, Lorg/catrobat/catroid/merge/ImportProjectHelper;->addObjectDataToNewSprite(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/Sprite;

    goto :goto_4

    .line 288
    :cond_6
    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/merge/ImportProjectHelper;->rejectImportDialog(Ljava/util/ArrayList;)V

    .line 289
    .end local v1    # "useDefaultSpriteName":Z
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "currentScene":Lorg/catrobat/catroid/content/Scene;
    .end local v4    # "resolvedName":Ljava/lang/String;
    .end local v5    # "resolvedFileName":Ljava/lang/String;
    .end local v6    # "importProjectHelper":Lorg/catrobat/catroid/merge/ImportProjectHelper;
    .end local v7    # "lookFileName":Ljava/lang/String;
    :cond_7
    :goto_4
    nop

    .line 291
    return-void
.end method

.method public onAdapterReady()V
    .locals 3

    .line 124
    invoke-super {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onAdapterReady()V

    .line 125
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$MultiViewTouchHelperCallback;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$MultiViewTouchHelperCallback;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;)V

    check-cast v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 126
    .local v0, "callback":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 127
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 128
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->onItemClick(Lorg/catrobat/catroid/content/Sprite;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Lorg/catrobat/catroid/common/Nameable;)V
    .locals 0

    .line 71
    check-cast p1, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->onItemClick(Lorg/catrobat/catroid/content/Sprite;)V

    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 3
    .param p1, "item"    # Lorg/catrobat/catroid/content/Sprite;

    .line 319
    instance-of v0, p1, Lorg/catrobat/catroid/content/GroupSprite;

    if-eqz v0, :cond_0

    .line 320
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/GroupSprite;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/content/GroupSprite;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/GroupSprite;->isCollapsed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/GroupSprite;->setCollapsed(Z)V

    .line 321
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 323
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->actionModeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 324
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/common/Nameable;

    invoke-super {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onItemClick(Lorg/catrobat/catroid/common/Nameable;)V

    .line 325
    return-void

    .line 327
    :cond_1
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->actionModeType:I

    if-nez v0, :cond_2

    .line 328
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ProjectManager;->setCurrentSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 331
    nop

    .line 332
    const/4 v1, 0x0

    .line 330
    const-string v2, "fragmentPosition"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->startActivity(Landroid/content/Intent;)V

    .line 336
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    nop

    .line 337
    return-void
.end method

.method public bridge synthetic onItemLongClick(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    .line 71
    check-cast p1, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->onItemLongClick(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    return-void
.end method

.method public bridge synthetic onItemLongClick(Lorg/catrobat/catroid/common/Nameable;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    .line 71
    check-cast p1, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->onItemLongClick(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    return-void
.end method

.method public onItemLongClick(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 1
    .param p1, "item"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    const-string v0, "holder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/common/Nameable;

    invoke-super {p0, v0, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onItemLongClick(Lorg/catrobat/catroid/common/Nameable;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    .line 341
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0485

    if-eq v0, v1, :cond_0

    .line 138
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->showNewGroupDialog()V

    .line 139
    :goto_0
    nop

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 132
    const v0, 0x7f0a0485

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.new_group)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 133
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 108
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->initializeAdapter()V

    .line 109
    invoke-super {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onResume()V

    .line 110
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f1204e5

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->showHintSnackbar(Landroid/app/Activity;I)V

    .line 111
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 112
    .local v0, "currentProject":Lorg/catrobat/catroid/content/Project;
    const-string v1, "currentProject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 113
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currentProject.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    .line 116
    .local v1, "currentScene":Lorg/catrobat/catroid/content/Scene;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "currentScene"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 112
    .end local v1    # "currentScene":Lorg/catrobat/catroid/content/Scene;
    :goto_0
    nop

    .line 118
    .local v1, "title":Ljava/lang/String;
    nop

    .line 119
    nop

    .line 118
    nop

    .line 119
    nop

    .line 118
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 119
    const/4 v3, 0x0

    const-string v4, "variableIndexing"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    return-void

    .line 120
    :cond_2
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 71
    check-cast p1, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->onSettingsClick(Lorg/catrobat/catroid/content/Sprite;Landroid/view/View;)V

    return-void
.end method

.method public onSettingsClick(Lorg/catrobat/catroid/content/Sprite;Landroid/view/View;)V
    .locals 8
    .param p1, "item"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 345
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 346
    .local v1, "itemList":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f0e000b

    invoke-virtual {v2, v4, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 348
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$onSettingsClick$1;

    invoke-direct {v2, p0, v1, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$onSettingsClick$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;Ljava/util/List;Lorg/catrobat/catroid/content/Sprite;)V

    check-cast v2, Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 360
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0a0485

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "popupMenu.menu.findItem(R.id.new_group)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 361
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a0486

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.new_scene)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 362
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a05b0

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.show_details)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 363
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a0555

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v4, "popupMenu.menu.findItem(R.id.project_options)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 364
    instance-of v2, p1, Lorg/catrobat/catroid/content/GroupSprite;

    const/4 v4, 0x1

    const-string v5, "popupMenu.menu.findItem(R.id.from_library)"

    const v6, 0x7f0a03bd

    const v7, 0x7f0a0059

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v7, "popupMenu.menu.findItem(R.id.backpack)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 366
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v7, 0x7f0a0327

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v7, "popupMenu.menu.findItem(R.id.copy)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f12060a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 370
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 371
    :goto_0
    nop

    .line 372
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0a03be

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "popupMenu.menu.findItem(R.id.from_local)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 373
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 374
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
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->setShowProgressBar(Z)V

    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "packedItemCnt":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 174
    .local v3, "item":Lorg/catrobat/catroid/content/Sprite;
    nop

    .line 175
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v4

    const-string v5, "BackpackListManager.getInstance()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getSprites()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-virtual {v5, v3}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->pack(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->saveBackpack()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    :catch_0
    move-exception v4

    .line 179
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->TAG:Ljava/lang/String;

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v3    # "item":Lorg/catrobat/catroid/content/Sprite;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 173
    goto :goto_0

    .line 182
    :cond_0
    if-lez v1, :cond_1

    .line 183
    nop

    .line 184
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 185
    const v4, 0x7f100022

    .line 186
    new-array v0, v0, [Ljava/lang/Object;

    .line 187
    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 184
    invoke-virtual {v3, v4, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v2, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->switchToBackpack()V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->finishActionMode()V

    .line 193
    return-void
.end method

.method public bridge synthetic renameItem(Lorg/catrobat/catroid/common/Nameable;Ljava/lang/String;)V
    .locals 0

    .line 71
    check-cast p1, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->renameItem(Lorg/catrobat/catroid/content/Sprite;Ljava/lang/String;)V

    return-void
.end method

.method protected renameItem(Lorg/catrobat/catroid/content/Sprite;Ljava/lang/String;)V
    .locals 1
    .param p1, "item"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/catrobat/catroid/content/Sprite;->rename(Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->finishActionMode()V

    .line 316
    return-void
.end method

.method public shouldShowEmptyView()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const-string v1, "adapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected switchToBackpack()V
    .locals 3

    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fragmentPosition"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->startActivity(Landroid/content/Intent;)V

    .line 201
    return-void
.end method
