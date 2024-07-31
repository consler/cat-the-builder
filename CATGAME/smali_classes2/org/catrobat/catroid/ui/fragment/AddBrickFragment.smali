.class public final Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;
.super Landroidx/fragment/app/ListFragment;
.source "AddBrickFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;,
        Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddBrickFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddBrickFragment.kt\norg/catrobat/catroid/ui/fragment/AddBrickFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0002\'(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u001e\u001a\u00020\u0010H\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u0010H\u0016J\u0008\u0010$\u001a\u00020\u0010H\u0016J\u0008\u0010%\u001a\u00020 H\u0002J\u0008\u0010&\u001a\u00020\u0010H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006)"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;",
        "Landroidx/fragment/app/ListFragment;",
        "()V",
        "adapter",
        "Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;",
        "addBrickListener",
        "Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;",
        "previousActionBarTitle",
        "",
        "projectManager",
        "Lorg/catrobat/catroid/ProjectManager;",
        "getProjectManager",
        "()Lorg/catrobat/catroid/ProjectManager;",
        "projectManager$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "menuInflater",
        "Landroid/view/MenuInflater;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onOptionsItemSelected",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onResume",
        "onStart",
        "onlyBeginnerBricks",
        "setupSelectedBrickCategory",
        "Companion",
        "OnAddBrickListener",
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
.field public static final ADD_BRICK_FRAGMENT_TAG:Ljava/lang/String;

.field private static final BUNDLE_ARGUMENTS_SELECTED_CATEGORY:Ljava/lang/String; = "selected_category"

.field public static final Companion:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;

.field private static listIndexToFocus:I


# instance fields
.field private adapter:Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

.field private addBrickListener:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

.field private previousActionBarTitle:Ljava/lang/CharSequence;

.field private final projectManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->Companion:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;

    .line 129
    const-class v0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->ADD_BRICK_FRAGMENT_TAG:Ljava/lang/String;

    .line 131
    const/4 v0, -0x1

    sput v0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->listIndexToFocus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    .line 55
    const-class v0, Lorg/catrobat/catroid/ProjectManager;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2, v1}, Lorg/koin/java/KoinJavaComponent;->inject$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->projectManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;)Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->adapter:Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    return-object v0
.end method

.method public static final synthetic access$getAddBrickListener$p(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;)Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->addBrickListener:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    return-object v0
.end method

.method public static final synthetic access$setAdapter$p(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->adapter:Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    return-void
.end method

.method public static final synthetic access$setAddBrickListener$p(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->addBrickListener:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    return-void
.end method

.method private final getProjectManager()Lorg/catrobat/catroid/ProjectManager;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->projectManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ProjectManager;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->Companion:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;->newInstance(Ljava/lang/String;Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    move-result-object v0

    return-object v0
.end method

.method private final onlyBeginnerBricks()Z
    .locals 3

    .line 54
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "accessibility_beginner_bricks"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final setupSelectedBrickCategory()V
    .locals 10

    .line 66
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 67
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    .line 68
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    const-string v3, "projectManager.currentlyEditedScene"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    .line 69
    .local v2, "backgroundSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v5, "selected_category"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 70
    .local v3, "selectedCategory":Ljava/lang/String;
    :goto_0
    nop

    .line 71
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->onlyBeginnerBricks()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lorg/catrobat/catroid/ui/fragment/CategoryBeginnerBricksFactory;

    invoke-direct {v5}, Lorg/catrobat/catroid/ui/fragment/CategoryBeginnerBricksFactory;-><init>()V

    check-cast v5, Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;

    goto :goto_1

    .line 72
    :cond_1
    new-instance v5, Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;

    invoke-direct {v5}, Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;-><init>()V

    .line 70
    :goto_1
    nop

    .line 74
    .local v5, "categoryBricksFactory":Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;
    if-eqz v3, :cond_2

    move-object v6, v3

    .line 177
    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 74
    .local v7, "$i$a$-let-AddBrickFragment$setupSelectedBrickCategory$brickList$1":I
    if-eqz v0, :cond_2

    move-object v4, v0

    .local v4, "it1":Landroid/content/Context;
    const/4 v8, 0x0

    .line 75
    .local v8, "$i$a$-let-AddBrickFragment$setupSelectedBrickCategory$brickList$1$1":I
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 76
    nop

    .line 75
    invoke-virtual {v5, v6, v9, v4}, Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;->getBricks(Ljava/lang/String;ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 74
    .end local v4    # "it1":Landroid/content/Context;
    .end local v8    # "$i$a$-let-AddBrickFragment$setupSelectedBrickCategory$brickList$1$1":I
    nop

    .line 79
    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-let-AddBrickFragment$setupSelectedBrickCategory$brickList$1":I
    .local v4, "brickList":Ljava/util/List;
    :cond_2
    new-instance v6, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    invoke-direct {v6, v4}, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;-><init>(Ljava/util/List;)V

    iput-object v6, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->adapter:Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    .line 80
    check-cast v6, Landroid/widget/ListAdapter;

    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->setHasOptionsMenu(Z)V

    .line 86
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 90
    const v0, 0x7f0a031a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.comment_in_out)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const v0, 0x7f0d015c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->previousActionBarTitle:Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v2, :cond_2

    move-object v1, v3

    :cond_2
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "selected_category"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    :cond_4
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->setupSelectedBrickCategory()V

    .line 62
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 94
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    :cond_1
    move-object v0, v2

    .line 95
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 96
    .local v1, "isRestoringPreviouslyDestroyedActivity":Z
    :goto_0
    if-nez v1, :cond_3

    .line 97
    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->previousActionBarTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    :cond_3
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onDestroy()V

    .line 100
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0597

    if-ne v0, v1, :cond_2

    .line 145
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->addBrickListener:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    if-eqz v0, :cond_1

    check-cast v0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "selected_category"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;->onCategorySelected(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.catroid.ui.fragment.BrickCategoryFragment.OnCategorySelectedListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onResume()V

    .line 104
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->setupSelectedBrickCategory()V

    .line 105
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f1204e2

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->showHintSnackbar(Landroid/app/Activity;I)V

    .line 106
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 109
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onStart()V

    .line 110
    sget v0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->listIndexToFocus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v2, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->listIndexToFocus:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 112
    sput v1, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->listIndexToFocus:I

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const-string v1, "listView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$onStart$1;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$onStart$1;-><init>(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;)V

    check-cast v1, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    return-void
.end method
