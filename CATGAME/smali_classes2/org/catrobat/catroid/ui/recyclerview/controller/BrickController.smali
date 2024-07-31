.class public final Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;
.super Ljava/lang/Object;
.source "BrickController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Ljava/util/List;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 6
    .param p2, "parent"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;",
            "Lorg/catrobat/catroid/content/Sprite;",
            ")V"
        }
    .end annotation

    .line 44
    .local p1, "bricksToCopy":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 45
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1}, Lorg/catrobat/catroid/content/bricks/Brick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    .line 47
    .local v2, "script":Lorg/catrobat/catroid/content/Script;
    instance-of v3, v1, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-eqz v3, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Script;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 50
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v4, Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v3    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_1
    goto :goto_2

    .line 55
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lorg/catrobat/catroid/content/bricks/Brick;->getParent()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    invoke-interface {v1}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    :cond_1
    goto :goto_2

    .line 58
    :catch_1
    move-exception v3

    .line 59
    .restart local v3    # "e":Ljava/lang/CloneNotSupportedException;
    sget-object v4, Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v2    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v3    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_2
    goto :goto_0

    .line 63
    :cond_2
    return-void
.end method

.method public delete(Ljava/util/List;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 4
    .param p2, "parent"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;",
            "Lorg/catrobat/catroid/content/Sprite;",
            ")V"
        }
    .end annotation

    .line 66
    .local p1, "bricksToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 67
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1}, Lorg/catrobat/catroid/content/bricks/Brick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    .line 68
    .local v2, "script":Lorg/catrobat/catroid/content/Script;
    instance-of v3, v1, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    if-eqz v3, :cond_0

    .line 69
    move-object v3, v1

    check-cast v3, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->getUserDefinedBrick()Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    move-result-object v3

    .line 70
    .local v3, "userDefinedBrick":Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
    invoke-virtual {p2, v3}, Lorg/catrobat/catroid/content/Sprite;->removeUserDefinedBrick(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V

    .line 73
    .end local v3    # "userDefinedBrick":Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
    :cond_0
    instance-of v3, v1, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-eqz v3, :cond_1

    .line 74
    invoke-virtual {p2, v2}, Lorg/catrobat/catroid/content/Sprite;->removeScript(Lorg/catrobat/catroid/content/Script;)Z

    goto :goto_1

    .line 76
    :cond_1
    invoke-interface {v1}, Lorg/catrobat/catroid/content/bricks/Brick;->getParent()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/content/Script;->removeBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 80
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v2    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_2
    :goto_1
    goto :goto_0

    .line 81
    :cond_3
    return-void
.end method
