.class public Lorg/catrobat/catroid/ui/fragment/CategoryBeginnerBricksFactory;
.super Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;
.source "CategoryBeginnerBricksFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected setupControlCategoryList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "controlBrickList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/WaitBrick;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/WaitBrick;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lorg/catrobat/catroid/content/bricks/CloneBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/CloneBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lorg/catrobat/catroid/content/bricks/DeleteThisCloneBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/DeleteThisCloneBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lorg/catrobat/catroid/content/bricks/WhenClonedBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/WhenClonedBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-object v0
.end method

.method protected setupDataCategoryList(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBackgroundSprite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "dataBrickList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ShowTextBrick;

    const/16 v2, 0x64

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/ShowTextBrick;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lorg/catrobat/catroid/content/bricks/HideTextBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/HideTextBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-object v0
.end method

.method protected setupEventCategoryList(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBackgroundSprite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "eventBrickList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/WhenStartedBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/WhenStartedBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 83
    .local v1, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getBroadcastMessageContainer()Lorg/catrobat/catroid/common/BroadcastMessageContainer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->getBroadcastMessages()Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "broadcastMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v3, 0x7f12007a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "broadcastMessage":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 86
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    .line 88
    :cond_0
    new-instance v4, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;

    new-instance v5, Lorg/catrobat/catroid/content/BroadcastScript;

    invoke-direct {v5, v3}, Lorg/catrobat/catroid/content/BroadcastScript;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;-><init>(Lorg/catrobat/catroid/content/BroadcastScript;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v4, Lorg/catrobat/catroid/content/bricks/BroadcastBrick;

    invoke-direct {v4, v3}, Lorg/catrobat/catroid/content/bricks/BroadcastBrick;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method protected setupLooksCategoryList(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBackgroundSprite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "looksBrickList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    if-nez p2, :cond_0

    .line 134
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetLookBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/content/bricks/NextLookBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/NextLookBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lorg/catrobat/catroid/content/bricks/PreviousLookBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/PreviousLookBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetSizeToBrick;

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/SetSizeToBrick;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ChangeSizeByNBrick;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/ChangeSizeByNBrick;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lorg/catrobat/catroid/content/bricks/HideBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/HideBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ShowBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/ShowBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lorg/catrobat/catroid/content/bricks/AskBrick;

    const v2, 0x7f12006a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/AskBrick;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    if-nez p2, :cond_1

    .line 144
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SayBubbleBrick;

    const v2, 0x7f120122

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/catrobat/catroid/content/bricks/SayBubbleBrick;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SayForBubbleBrick;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/SayForBubbleBrick;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;

    const v2, 0x7f120164

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetColorBrick;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/SetColorBrick;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ChangeColorByNBrick;

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/ChangeColorByNBrick;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-object v0
.end method

.method protected setupMotionCategoryList(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBackgroundSprite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "motionBrickList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    const/16 v2, 0x64

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lorg/catrobat/catroid/content/bricks/GoToBrick;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lorg/catrobat/catroid/content/bricks/GoToBrick;-><init>(Lorg/catrobat/catroid/content/Sprite;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    if-nez p2, :cond_0

    .line 110
    new-instance v1, Lorg/catrobat/catroid/content/bricks/IfOnEdgeBounceBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/IfOnEdgeBounceBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/content/bricks/MoveNStepsBrick;

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct {v1, v4, v5}, Lorg/catrobat/catroid/content/bricks/MoveNStepsBrick;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lorg/catrobat/catroid/content/bricks/TurnLeftBrick;

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-direct {v1, v4, v5}, Lorg/catrobat/catroid/content/bricks/TurnLeftBrick;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lorg/catrobat/catroid/content/bricks/TurnRightBrick;

    invoke-direct {v1, v4, v5}, Lorg/catrobat/catroid/content/bricks/TurnRightBrick;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lorg/catrobat/catroid/content/bricks/GlideToBrick;

    const/16 v4, 0x3e8

    invoke-direct {v1, v2, v3, v4}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object v0
.end method

.method protected setupSoundCategoryList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "soundBrickList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lorg/catrobat/catroid/content/bricks/StopAllSoundsBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/StopAllSoundsBrick;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SpeakBrick;

    const v2, 0x7f120151

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/SpeakBrick;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object v0
.end method
