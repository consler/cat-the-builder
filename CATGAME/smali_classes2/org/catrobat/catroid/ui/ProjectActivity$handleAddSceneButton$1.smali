.class final Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSceneButton$1;
.super Ljava/lang/Object;
.source "ProjectActivity.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ProjectActivity;->handleAddSceneButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "textInput",
        "",
        "onPositiveButtonClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $currentProject:Lorg/catrobat/catroid/content/Project;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/ProjectActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ProjectActivity;Lorg/catrobat/catroid/content/Project;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSceneButton$1;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSceneButton$1;->$currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 4
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "textInput"    # Ljava/lang/String;

    .line 363
    nop

    .line 364
    nop

    .line 365
    nop

    .line 366
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSceneButton$1;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    const v1, 0x7f120052

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ProjectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSceneButton$1;->$currentProject:Lorg/catrobat/catroid/content/Project;

    .line 364
    invoke-static {p2, v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->newSceneWithBackgroundSprite(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    .line 363
    nop

    .line 369
    .local v0, "scene":Lorg/catrobat/catroid/content/Scene;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSceneButton$1;->$currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Project;->addScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 370
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSceneButton$1;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/ProjectActivity;->access$getCurrentFragment$p(Lorg/catrobat/catroid/ui/ProjectActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/SceneListFragment;

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSceneButton$1;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/ProjectActivity;->access$getCurrentFragment$p(Lorg/catrobat/catroid/ui/ProjectActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type org.catrobat.catroid.ui.recyclerview.fragment.RecyclerViewFragment<*>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSceneButton$1;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    check-cast v2, Landroid/content/Context;

    const-class v3, Lorg/catrobat/catroid/ui/ProjectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    const-string v3, "fragmentPosition"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSceneButton$1;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/ProjectActivity;->startActivity(Landroid/content/Intent;)V

    .line 376
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSceneButton$1;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/ProjectActivity;->finish()V

    .line 377
    .end local v0    # "scene":Lorg/catrobat/catroid/content/Scene;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    nop

    .line 378
    return-void
.end method
