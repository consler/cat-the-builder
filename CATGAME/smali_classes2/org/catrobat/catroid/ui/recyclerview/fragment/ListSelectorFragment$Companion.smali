.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;
.super Ljava/lang/Object;
.source "ListSelectorFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "showFragment",
        "",
        "context",
        "Landroid/content/Context;",
        "selectorBrick",
        "Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 247
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selectorBrick"    # Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectorBrick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-static {p1}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromContextWrapper(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "UiUtils.getActivityFromC\u2026rapper(context) ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    nop

    .line 255
    nop

    .line 254
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 255
    invoke-static {}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    .line 254
    nop

    .line 257
    .local v1, "listSelectorFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;
    if-nez v1, :cond_0

    .line 258
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;-><init>()V

    move-object v1, v2

    .line 260
    move-object v2, p2

    check-cast v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;

    invoke-static {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->access$setListSelectorInterface$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;)V

    .line 262
    nop

    .line 265
    nop

    .line 262
    nop

    .line 264
    nop

    .line 262
    nop

    .line 263
    nop

    .line 262
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 263
    const v3, 0x7f0a03b7

    move-object v4, v1

    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-static {}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 264
    invoke-static {}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 268
    :cond_0
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->getUserLists()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->access$setPreSelection$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Ljava/util/List;)V

    .line 269
    return-void

    .line 252
    .end local v0    # "activity":Landroidx/appcompat/app/AppCompatActivity;
    .end local v1    # "listSelectorFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;
    :cond_1
    return-void
.end method
