.class public final Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;
.super Ljava/lang/Object;
.source "SpriteActivityOnTabSelectedListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002\u001a\u0016\u0010\u0004\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u001a\u000c\u0010\t\u001a\u00020\u0008*\u0004\u0018\u00010\u0003\u001a\u000c\u0010\n\u001a\u00020\u0001*\u0004\u0018\u00010\u0003\u001a\u0012\u0010\u000b\u001a\u00020\u0005*\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008\u001a\u000c\u0010\u000e\u001a\u00020\u0005*\u0004\u0018\u00010\u0006\u001a\u0018\u0010\u000f\u001a\u00020\u0005*\u0004\u0018\u00010\u000c2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002\u001a\u0014\u0010\u0010\u001a\u00020\u0005*\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "unableToSelectNewFragmentFromCurrent",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "addTabLayout",
        "",
        "Landroid/app/Activity;",
        "selectedTabPosition",
        "",
        "getTabPositionInSpriteActivity",
        "isFragmentWithTablayout",
        "loadFragment",
        "Lorg/catrobat/catroid/ui/SpriteActivity;",
        "fragmentPosition",
        "removeTabLayout",
        "setTabSelection",
        "showScripts",
        "fragmentTransaction",
        "Landroidx/fragment/app/FragmentTransaction;",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final addTabLayout(Landroid/app/Activity;I)V
    .locals 5
    .param p0, "$this$addTabLayout"    # Landroid/app/Activity;
    .param p1, "selectedTabPosition"    # I

    .line 70
    instance-of v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;

    if-eqz v0, :cond_2

    .line 71
    move-object v0, p0

    check-cast v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d017c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "tabLayoutView":Landroid/view/View;
    const v1, 0x7f0a0048

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 73
    .local v1, "gv":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 74
    :cond_0
    const v2, 0x7f0a05e9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    .line 75
    .local v2, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 76
    :cond_1
    if-eqz v2, :cond_2

    new-instance v3, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListener;

    new-instance v4, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt$addTabLayout$1;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt$addTabLayout$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListener;-><init>(Lkotlin/reflect/KFunction;)V

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 78
    .end local v0    # "tabLayoutView":Landroid/view/View;
    .end local v1    # "gv":Landroid/view/ViewGroup;
    .end local v2    # "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    :cond_2
    return-void
.end method

.method public static final getTabPositionInSpriteActivity(Landroidx/fragment/app/Fragment;)I
    .locals 2
    .param p0, "$this$getTabPositionInSpriteActivity"    # Landroidx/fragment/app/Fragment;

    .line 123
    nop

    .line 124
    instance-of v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    instance-of v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    instance-of v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SoundListFragment;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 127
    :cond_2
    nop

    .line 123
    :goto_0
    nop

    .line 128
    return v1
.end method

.method public static final isFragmentWithTablayout(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0, "$this$isFragmentWithTablayout"    # Landroidx/fragment/app/Fragment;

    .line 121
    instance-of v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SoundListFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final loadFragment(Lorg/catrobat/catroid/ui/SpriteActivity;I)V
    .locals 5
    .param p0, "$this$loadFragment"    # Lorg/catrobat/catroid/ui/SpriteActivity;
    .param p1, "fragmentPosition"    # I

    const-string v0, "$this$loadFragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "supportFragmentManager.beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .local v0, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->unableToSelectNewFragmentFromCurrent(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->setTabSelection(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/fragment/app/Fragment;)V

    .line 84
    return-void

    .line 87
    :cond_0
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const-string v2, "fragmentTransaction.repl\u2026istFragment.TAG\n        )"

    const v3, 0x7f0a03b7

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 94
    nop

    .line 95
    nop

    .line 96
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/SoundListFragment;

    invoke-direct {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SoundListFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 97
    sget-object v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/SoundListFragment;->TAG:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v3, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid fragmentPosition in Activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 89
    :cond_2
    nop

    .line 90
    nop

    .line 91
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;

    invoke-direct {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 92
    sget-object v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->TAG:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v3, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-static {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->showScripts(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/fragment/app/FragmentTransaction;)V

    .line 100
    :goto_0
    nop

    .line 102
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 103
    return-void
.end method

.method public static final removeTabLayout(Landroid/app/Activity;)V
    .locals 2
    .param p0, "$this$removeTabLayout"    # Landroid/app/Activity;

    .line 61
    instance-of v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;

    if-eqz v0, :cond_0

    .line 62
    const v0, 0x7f0a05e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "tabLayout":Landroid/view/View;
    const v1, 0x7f0a0048

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 64
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    .end local v0    # "tabLayout":Landroid/view/View;
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private static final setTabSelection(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p0, "$this$setTabSelection"    # Lorg/catrobat/catroid/ui/SpriteActivity;
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 134
    if-eqz p0, :cond_0

    const v0, 0x7f0a05e9

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    .local v0, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->getTabPositionInSpriteActivity(Landroidx/fragment/app/Fragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 136
    :cond_1
    return-void
.end method

.method private static final showScripts(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 3
    .param p0, "$this$showScripts"    # Lorg/catrobat/catroid/ui/SpriteActivity;
    .param p1, "fragmentTransaction"    # Landroidx/fragment/app/FragmentTransaction;

    .line 106
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->useCatBlocks(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0a03b7

    if-nez v0, :cond_0

    .line 107
    nop

    .line 108
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 109
    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    .line 107
    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 112
    :cond_0
    nop

    .line 113
    nop

    .line 114
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;-><init>(Ljava/util/UUID;)V

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 115
    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$Companion;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 117
    :goto_0
    nop

    .line 118
    return-void
.end method

.method private static final unableToSelectNewFragmentFromCurrent(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 131
    instance-of v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->isCurrentlyMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
