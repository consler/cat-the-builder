.class Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;
.super Ljava/lang/Object;
.source "PlaySceneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;

.field final synthetic val$currentScene:Lorg/catrobat/catroid/content/Scene;

.field final synthetic val$defaultScene:Lorg/catrobat/catroid/content/Scene;

.field final synthetic val$projectManager:Lorg/catrobat/catroid/ProjectManager;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;Lorg/catrobat/catroid/ProjectManager;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Scene;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;

    .line 61
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->val$projectManager:Lorg/catrobat/catroid/ProjectManager;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->val$defaultScene:Lorg/catrobat/catroid/content/Scene;

    iput-object p4, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->val$currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 64
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->val$projectManager:Lorg/catrobat/catroid/ProjectManager;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->val$currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyPlayingScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->val$projectManager:Lorg/catrobat/catroid/ProjectManager;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->val$currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->setStartScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 72
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->val$projectManager:Lorg/catrobat/catroid/ProjectManager;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->val$defaultScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyPlayingScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->val$projectManager:Lorg/catrobat/catroid/ProjectManager;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;->val$defaultScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->setStartScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 68
    nop

    .line 76
    :goto_0
    return-void
.end method
