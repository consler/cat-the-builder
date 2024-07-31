.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;
.super Landroidx/fragment/app/Fragment;
.source "CatblocksScriptFragment.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;
.implements Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;,
        Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;,
        Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$BrickInfoHolder;,
        Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 %2\u00020\u00012\u00020\u00022\u00020\u0003:\u0004$%&\'B\u000f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0006\u0010\u000f\u001a\u00020\u000cJ\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\nH\u0003J\u0012\u0010\u0012\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020#H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;",
        "Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;",
        "brickAtTopID",
        "Ljava/util/UUID;",
        "(Ljava/util/UUID;)V",
        "projectManager",
        "Lorg/catrobat/catroid/ProjectManager;",
        "webview",
        "Landroid/webkit/WebView;",
        "addBrick",
        "",
        "brick",
        "Lorg/catrobat/catroid/content/bricks/Brick;",
        "handleAddButton",
        "initWebView",
        "catblocksWebView",
        "onCategorySelected",
        "category",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onOptionsItemSelected",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onPrepareOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "BrickInfoHolder",
        "Companion",
        "JSInterface",
        "SwitchTo1DHelper",
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
.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final brickAtTopID:Ljava/util/UUID;

.field private final projectManager:Lorg/catrobat/catroid/ProjectManager;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$Companion;

    .line 68
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CatblocksScriptFragment::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 3
    .param p1, "brickAtTopID"    # Ljava/util/UUID;

    .line 61
    nop

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->brickAtTopID:Ljava/util/UUID;

    .line 71
    const-class v0, Lorg/catrobat/catroid/ProjectManager;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2, v1}, Lorg/koin/java/KoinJavaComponent;->inject$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ProjectManager;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    return-void
.end method

.method public static final synthetic access$getBrickAtTopID$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Ljava/util/UUID;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->brickAtTopID:Ljava/util/UUID;

    return-object v0
.end method

.method public static final synthetic access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final initWebView(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "catblocksWebView"    # Landroid/webkit/WebView;

    .line 111
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "catblocksWebView.settings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 113
    nop

    .line 114
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 117
    nop

    .line 120
    nop

    .line 117
    nop

    .line 119
    nop

    .line 117
    nop

    .line 118
    nop

    .line 117
    new-instance v0, Landroidx/webkit/WebViewAssetLoader$Builder;

    invoke-direct {v0}, Landroidx/webkit/WebViewAssetLoader$Builder;-><init>()V

    .line 118
    new-instance v1, Landroidx/webkit/WebViewAssetLoader$AssetsPathHandler;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/webkit/WebViewAssetLoader$AssetsPathHandler;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/webkit/WebViewAssetLoader$PathHandler;

    const-string v2, "/assets/"

    invoke-virtual {v0, v2, v1}, Landroidx/webkit/WebViewAssetLoader$Builder;->addPathHandler(Ljava/lang/String;Landroidx/webkit/WebViewAssetLoader$PathHandler;)Landroidx/webkit/WebViewAssetLoader$Builder;

    move-result-object v0

    .line 119
    new-instance v1, Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/webkit/WebViewAssetLoader$PathHandler;

    const-string v2, "/res/"

    invoke-virtual {v0, v2, v1}, Landroidx/webkit/WebViewAssetLoader$Builder;->addPathHandler(Ljava/lang/String;Landroidx/webkit/WebViewAssetLoader$PathHandler;)Landroidx/webkit/WebViewAssetLoader$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroidx/webkit/WebViewAssetLoader$Builder;->build()Landroidx/webkit/WebViewAssetLoader;

    move-result-object v0

    const-string v1, "WebViewAssetLoader.Build\u2026()))\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    nop

    .line 122
    .local v0, "assetLoader":Landroidx/webkit/WebViewAssetLoader;
    nop

    .line 123
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)V

    .line 122
    const-string v2, "Android"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$initWebView$1;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$initWebView$1;-><init>(Landroidx/webkit/WebViewAssetLoader;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 134
    const-string v1, "https://appassets.androidplatform.net/assets/catblocks/index.html"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 135
    return-void
.end method


# virtual methods
.method public addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 6
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 390
    if-nez p1, :cond_0

    .line 391
    return-void

    .line 394
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v0, "addedBricks":Ljava/util/ArrayList;
    instance-of v1, p1, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    const-string v2, "projectManager.currentSprite"

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/ScriptBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    nop

    .line 399
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$BrickInfoHolder;

    .line 400
    move-object v2, p1

    check-cast v2, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/ScriptBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    const-string v3, "brick.script"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Script;->getScriptId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "brick.script.scriptId.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    move-object v3, p1

    check-cast v3, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    invoke-interface {v3}, Lorg/catrobat/catroid/content/bricks/ScriptBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "brick.script.javaClass.simpleName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$BrickInfoHolder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    :cond_1
    new-instance v1, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;-><init>()V

    .line 406
    .local v1, "emptyBrick":Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    const-string v4, "emptyBrick.script"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    nop

    .line 410
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$BrickInfoHolder;

    .line 411
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Script;->getScriptId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "emptyBrick.script.scriptId.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "emptyBrick.script.javaClass.simpleName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    invoke-direct {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$BrickInfoHolder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$BrickInfoHolder;

    invoke-interface {p1}, Lorg/catrobat/catroid/content/bricks/Brick;->getBrickID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "brick.brickID.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "brick.javaClass.simpleName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$BrickInfoHolder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .end local v1    # "emptyBrick":Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;
    :goto_0
    nop

    .line 419
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "addedBricksString":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->webview:Landroid/webkit/WebView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:CatBlocks.addBricks("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 421
    return-void
.end method

.method public final handleAddButton()V
    .locals 5

    .line 358
    new-instance v0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;-><init>()V

    .line 359
    .local v0, "brickCategoryFragment":Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;
    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->setOnCategorySelectedListener(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;)V

    .line 361
    nop

    .line 368
    nop

    .line 361
    nop

    .line 367
    nop

    .line 361
    nop

    .line 362
    nop

    .line 361
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 363
    nop

    .line 364
    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 365
    nop

    .line 362
    const v3, 0x7f0a03b7

    const-string v4, "brick_category_fragment"

    invoke-virtual {v1, v3, v2, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 367
    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 369
    return-void
.end method

.method public onCategorySelected(Ljava/lang/String;)V
    .locals 5
    .param p1, "category"    # Ljava/lang/String;

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "addListFragment":Landroidx/fragment/app/ListFragment;
    const-string v1, ""

    .line 375
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1201e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    move-object v2, p0

    check-cast v2, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->newInstance(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;

    move-result-object v2

    const-string v3, "UserDefinedBrickListFragment.newInstance(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Landroidx/fragment/app/ListFragment;

    .line 377
    sget-object v1, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->USER_DEFINED_BRICK_LIST_FRAGMENT_TAG:Ljava/lang/String;

    goto :goto_0

    .line 379
    :cond_0
    sget-object v2, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->Companion:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;

    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    invoke-virtual {v2, p1, v3}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;->newInstance(Ljava/lang/String;Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroidx/fragment/app/ListFragment;

    .line 380
    sget-object v1, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->ADD_BRICK_FRAGMENT_TAG:Ljava/lang/String;

    .line 381
    :goto_0
    nop

    .line 383
    nop

    .line 386
    nop

    .line 383
    nop

    .line 385
    nop

    .line 383
    nop

    .line 384
    nop

    .line 383
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 384
    const v3, 0x7f0a03b7

    move-object v4, v0

    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3, v4, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 385
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 386
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 387
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->showBottomBar(Landroid/app/Activity;)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->setHasOptionsMenu(Z)V

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0160

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a02e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 104
    .local v1, "webView":Landroid/webkit/WebView;
    const-string v2, "webView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->initWebView(Landroid/webkit/WebView;)V

    .line 105
    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->webview:Landroid/webkit/WebView;

    .line 106
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a02e7

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->webview:Landroid/webkit/WebView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)V

    check-cast v1, Landroid/webkit/ValueCallback;

    .line 84
    const-string v2, "javascript:CatBlocks.getBrickAtTopOfScreen();"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 86
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a02e9

    if-ne v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->webview:Landroid/webkit/WebView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const-string v2, "javascript:CatBlocks.reorderCurrentScripts();"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 89
    :cond_1
    nop

    .line 90
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 75
    const v0, 0x7f0a0059

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.backpack)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 76
    const v0, 0x7f0a0327

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.copy)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 77
    const v0, 0x7f0a0337

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.delete)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 78
    const v0, 0x7f0a0577

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.rename)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 79
    const v0, 0x7f0a05b0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.show_details)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 80
    return-void
.end method
