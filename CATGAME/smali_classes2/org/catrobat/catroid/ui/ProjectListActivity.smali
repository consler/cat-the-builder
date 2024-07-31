.class public final Lorg/catrobat/catroid/ui/ProjectListActivity;
.super Lorg/catrobat/catroid/ui/BaseCastActivity;
.source "ProjectListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/ProjectListActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\u0006H\u0016J\u0012\u0010\r\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/ProjectListActivity;",
        "Lorg/catrobat/catroid/ui/BaseCastActivity;",
        "()V",
        "binding",
        "Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;",
        "handleAddButton",
        "",
        "view",
        "Landroid/view/View;",
        "loadFragment",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
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
.field public static final Companion:Lorg/catrobat/catroid/ui/ProjectListActivity$Companion;

.field public static final IMPORT_LOCAL_INTENT:Ljava/lang/String; = "merge"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/ProjectListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/ProjectListActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/ProjectListActivity;->Companion:Lorg/catrobat/catroid/ui/ProjectListActivity$Companion;

    .line 94
    const-class v0, Lorg/catrobat/catroid/ui/ProjectListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProjectListActivity::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/ui/ProjectListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseCastActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lorg/catrobat/catroid/ui/ProjectListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final loadFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 67
    nop

    .line 69
    nop

    .line 67
    nop

    .line 68
    nop

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 68
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03b7

    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 70
    return-void
.end method


# virtual methods
.method public final handleAddButton(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 88
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;-><init>()V

    .line 89
    .local v0, "dialog":Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 82
    :cond_0
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseCastActivity;->onBackPressed()V

    .line 83
    :goto_0
    nop

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseCastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;

    move-result-object v0

    const-string v1, "ActivityRecyclerBinding.inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectListActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;

    .line 41
    const-string v1, "binding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->setContentView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectListActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;->toolbar:Lorg/catrobat/catroid/databinding/ToolbarBinding;

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ToolbarBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "$this$apply":Landroidx/appcompat/app/ActionBar;
    const/4 v1, 0x0

    .line 44
    .local v1, "$i$a$-apply-ProjectListActivity$onCreate$1":I
    const v2, 0x7f1206e6

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 45
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 46
    nop

    .line 43
    .end local v0    # "$this$apply":Landroidx/appcompat/app/ActionBar;
    .end local v1    # "$i$a$-apply-ProjectListActivity$onCreate$1":I
    nop

    .line 48
    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->hidePlayButton(Landroid/app/Activity;)V

    .line 50
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;-><init>()V

    .line 51
    .local v0, "projectListFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "merge"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/BottomBar;->hideAddButton(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_3

    const v2, 0x7f12050a

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 55
    :cond_3
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    .local v1, "$this$apply":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 56
    .local v2, "$i$a$-apply-ProjectListActivity$onCreate$2":I
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 57
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v3, "data":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    const-string v5, "intent"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    .end local v3    # "data":Landroid/os/Bundle;
    :cond_4
    nop

    .line 55
    .end local v1    # "$this$apply":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-ProjectListActivity$onCreate$2":I
    nop

    .line 63
    :cond_5
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/ProjectListActivity;->loadFragment(Landroidx/fragment/app/Fragment;)V

    .line 64
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 74
    const v0, 0x7f0a041f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.merge)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 75
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseCastActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
