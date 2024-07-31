.class public Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;
.super Landroid/os/AsyncTask;
.source "GatherCollisionInformationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask$OnPolygonLoadedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private listener:Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask$OnPolygonLoadedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask$OnPolygonLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask$OnPolygonLoadedListener;

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;->listener:Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask$OnPolygonLoadedListener;

    .line 40
    return-void
.end method

.method private getCollisionInformation()V
    .locals 7

    .line 56
    sget-object v0, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;->TAG:Ljava/lang/String;

    const-string v1, "Waiting for all calculation threads to finish..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 58
    .local v1, "s":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/LookData;

    .line 59
    .local v3, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v3}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v4

    iget-object v4, v4, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygonCalculationThread:Ljava/lang/Thread;

    if-nez v4, :cond_0

    .line 60
    goto :goto_1

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v4

    iget-object v4, v4, Lorg/catrobat/catroid/sensing/CollisionInformation;->collisionPolygonCalculationThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_2

    .line 64
    :catch_0
    move-exception v4

    .line 65
    .local v4, "e":Ljava/lang/InterruptedException;
    sget-object v5, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;->TAG:Ljava/lang/String;

    const-string v6, "Thread got interrupted"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v3    # "lookData":Lorg/catrobat/catroid/common/LookData;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_2
    goto :goto_1

    .line 68
    .end local v1    # "s":Lorg/catrobat/catroid/content/Sprite;
    :cond_1
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 71
    .restart local v1    # "s":Lorg/catrobat/catroid/content/Sprite;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Sprite;->hasCollision(Lorg/catrobat/catroid/content/Scene;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/LookData;

    .line 73
    .local v3, "l":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v3}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/sensing/CollisionInformation;->loadCollisionPolygon()V

    .line 74
    .end local v3    # "l":Lorg/catrobat/catroid/common/LookData;
    goto :goto_4

    .line 76
    .end local v1    # "s":Lorg/catrobat/catroid/content/Sprite;
    :cond_3
    goto :goto_3

    .line 77
    :cond_4
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .line 44
    invoke-direct {p0}, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;->getCollisionInformation()V

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 50
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 51
    sget-object v0, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;->TAG:Ljava/lang/String;

    const-string v1, "Finished task"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;->listener:Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask$OnPolygonLoadedListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask$OnPolygonLoadedListener;->onFinished()V

    .line 53
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/sensing/GatherCollisionInformationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
