.class public final Lorg/catrobat/catroid/ui/fragment/AddBrickFragmentKt;
.super Ljava/lang/Object;
.source "AddBrickFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "addBrickToScript",
        "",
        "brick",
        "Lorg/catrobat/catroid/content/bricks/Brick;",
        "activity",
        "Lorg/catrobat/catroid/ui/SpriteActivity;",
        "addBrickListener",
        "Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;",
        "parentFragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "tag",
        "",
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
.method public static final addBrickToScript(Lorg/catrobat/catroid/content/bricks/Brick;Lorg/catrobat/catroid/ui/SpriteActivity;Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 4
    .param p0, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;
    .param p1, "activity"    # Lorg/catrobat/catroid/ui/SpriteActivity;
    .param p2, "addBrickListener"    # Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;
    .param p3, "parentFragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p4, "tag"    # Ljava/lang/String;

    const-string v0, "brick"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentFragmentManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const-string v1, "ProjectManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    const-string v1, "ProjectManager.getInstance().currentProject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/cast/CastManager;->unsupportedBricks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f120310

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 153
    return-void

    .line 155
    :cond_0
    nop

    .line 156
    :try_start_0
    invoke-interface {p0}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    const-string v1, "brick.clone()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .local v0, "brickToAdd":Lorg/catrobat/catroid/content/bricks/Brick;
    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 158
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f1204e6

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/SnackbarUtil;->showHintSnackbar(Landroid/app/Activity;I)V

    .line 159
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "parentFragmentManager.beginTransaction()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .local v1, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    const-string v2, "brick_category_fragment"

    invoke-virtual {p3, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 161
    .local v2, "categoryFragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_2

    .line 162
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 163
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 165
    :cond_2
    invoke-virtual {p3, p4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 166
    .local v3, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_3

    .line 167
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 168
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 170
    :cond_3
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v0    # "brickToAdd":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v1    # "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    .end local v2    # "categoryFragment":Landroidx/fragment/app/Fragment;
    .end local v3    # "fragment":Landroidx/fragment/app/Fragment;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f1202cf

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 174
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    nop

    .line 175
    return-void
.end method
