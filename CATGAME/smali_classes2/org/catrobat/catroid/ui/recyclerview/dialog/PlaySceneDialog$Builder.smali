.class public Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "PlaySceneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    .line 48
    .local v0, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    .line 49
    .local v1, "currentScene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    .line 51
    .local v2, "defaultScene":Lorg/catrobat/catroid/content/Scene;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 52
    const v4, 0x7f120640

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 53
    const v4, 0x7f12063f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 56
    .local v3, "dialogOptions":[Ljava/lang/String;
    const v4, 0x7f120641

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyPlayingScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 59
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ProjectManager;->setStartScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 61
    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;Lorg/catrobat/catroid/ProjectManager;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Scene;)V

    invoke-virtual {p0, v3, v8, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/PlaySceneDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 78
    return-void
.end method
