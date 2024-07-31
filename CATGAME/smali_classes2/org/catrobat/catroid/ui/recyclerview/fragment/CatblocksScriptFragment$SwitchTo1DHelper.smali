.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;
.super Ljava/lang/Object;
.source "CatblocksScriptFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SwitchTo1DHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u0011\u0008\u0016\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u000f\u001a\u00020\rH\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;",
        "Ljava/lang/Runnable;",
        "Landroid/webkit/ValueCallback;",
        "",
        "brickToFocus",
        "Lorg/catrobat/catroid/content/bricks/Brick;",
        "(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;Lorg/catrobat/catroid/content/bricks/Brick;)V",
        "(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)V",
        "getBrickToFocus",
        "()Lorg/catrobat/catroid/content/bricks/Brick;",
        "setBrickToFocus",
        "(Lorg/catrobat/catroid/content/bricks/Brick;)V",
        "onReceiveValue",
        "",
        "strBrickToFocusId",
        "run",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private brickToFocus:Lorg/catrobat/catroid/content/bricks/Brick;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;
    .param p2, "brickToFocus"    # Lorg/catrobat/catroid/content/bricks/Brick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ")V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)V

    .line 141
    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;->brickToFocus:Lorg/catrobat/catroid/content/bricks/Brick;

    return-void
.end method


# virtual methods
.method public final getBrickToFocus()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;->brickToFocus:Lorg/catrobat/catroid/content/bricks/Brick;

    return-object v0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "strBrickToFocusId"    # Ljava/lang/String;

    .line 164
    if-eqz p1, :cond_1

    .line 165
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x22

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "strBrickId":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 167
    nop

    .line 168
    :try_start_0
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 169
    .local v0, "brickId":Ljava/util/UUID;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/content/Sprite;->findBrickInSprite(Ljava/util/UUID;)Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;->brickToFocus:Lorg/catrobat/catroid/content/bricks/Brick;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "brickId":Ljava/util/UUID;
    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 172
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    .end local v1    # "strBrickId":Ljava/lang/String;
    :cond_1
    :goto_1
    nop

    .line 175
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    :cond_2
    return-void
.end method

.method public run()V
    .locals 5

    .line 145
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setUseCatBlocks(Landroid/content/Context;Z)V

    .line 147
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;->brickToFocus:Lorg/catrobat/catroid/content/bricks/Brick;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;-><init>()V

    goto :goto_1

    .line 149
    :cond_0
    instance-of v1, v0, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-eqz v1, :cond_2

    .line 150
    if-eqz v0, :cond_1

    check-cast v0, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/ScriptBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->newInstance(Lorg/catrobat/catroid/content/Script;)Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.catroid.content.bricks.ScriptBrick"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->newInstance(Lorg/catrobat/catroid/content/bricks/Brick;)Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    move-result-object v0

    .line 149
    :goto_0
    const-string v1, "if (brickToFocus is Scri\u2026ickToFocus)\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    :goto_1
    nop

    .line 155
    .local v0, "scriptFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "parentFragmentManager.beginTransaction()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .local v1, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    nop

    .line 157
    const v2, 0x7f0a03b7

    move-object v3, v0

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 158
    sget-object v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    .line 156
    invoke-virtual {v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 160
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 161
    return-void
.end method

.method public final setBrickToFocus(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 138
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;->brickToFocus:Lorg/catrobat/catroid/content/bricks/Brick;

    return-void
.end method
