.class public final Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;
.super Ljava/lang/Object;
.source "RecentBrickListManager.java"


# static fields
.field private static final INSTANCE:Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;


# instance fields
.field private final nonBackgroundSpriteClasses:[Ljava/lang/Class;

.field public final recentBrickListDirectory:Ljava/io/File;

.field public final recentBricksFile:Ljava/io/File;

.field private recentBricksHolder:Lorg/catrobat/catroid/common/RecentBricksHolder;

.field private final recentBricksSerializer:Lorg/catrobat/catroid/io/RecentBrickListSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->INSTANCE:Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/catrobat/catroid/content/bricks/IfOnEdgeBounceBrick;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/catrobat/catroid/content/bricks/ComeToFrontBrick;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetLookBrick;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetLookByIndexBrick;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lorg/catrobat/catroid/content/bricks/SayBubbleBrick;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lorg/catrobat/catroid/content/bricks/SayForBubbleBrick;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lorg/catrobat/catroid/content/bricks/LookRequestBrick;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lorg/catrobat/catroid/content/bricks/PenDownBrick;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lorg/catrobat/catroid/content/bricks/PenUpBrick;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetPenSizeBrick;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lorg/catrobat/catroid/content/bricks/StampBrick;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->nonBackgroundSpriteClasses:[Ljava/lang/Class;

    .line 64
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    const-string v2, "recent_bricks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBrickListDirectory:Ljava/io/File;

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBrickListDirectory:Ljava/io/File;

    const-string v2, "recent_bricks.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksFile:Ljava/io/File;

    .line 68
    new-instance v0, Lorg/catrobat/catroid/common/RecentBricksHolder;

    invoke-direct {v0}, Lorg/catrobat/catroid/common/RecentBricksHolder;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksHolder:Lorg/catrobat/catroid/common/RecentBricksHolder;

    .line 70
    new-instance v0, Lorg/catrobat/catroid/io/RecentBrickListSerializer;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/io/RecentBrickListSerializer;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksSerializer:Lorg/catrobat/catroid/io/RecentBrickListSerializer;

    .line 78
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->createRecentbrickDirectories()V

    .line 79
    return-void
.end method

.method private createRecentbrickDirectories()V
    .locals 1

    .line 82
    sget-object v0, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 83
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBrickListDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 84
    return-void
.end method

.method public static getInstance()Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;
    .locals 1

    .line 74
    sget-object v0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->INSTANCE:Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;

    return-object v0
.end method


# virtual methods
.method public addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 3
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksHolder:Lorg/catrobat/catroid/common/RecentBricksHolder;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/common/RecentBricksHolder;->find(Lorg/catrobat/catroid/content/bricks/Brick;)I

    move-result v0

    .line 112
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 113
    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksHolder:Lorg/catrobat/catroid/common/RecentBricksHolder;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/common/RecentBricksHolder;->remove(I)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksHolder:Lorg/catrobat/catroid/common/RecentBricksHolder;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/RecentBricksHolder;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 115
    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksHolder:Lorg/catrobat/catroid/common/RecentBricksHolder;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/RecentBricksHolder;->remove()V

    .line 117
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksHolder:Lorg/catrobat/catroid/common/RecentBricksHolder;

    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/common/RecentBricksHolder;->insert(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 118
    return-void
.end method

.method public getRecentBricks(Z)Ljava/util/List;
    .locals 5
    .param p1, "isBackgroundSprite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksHolder:Lorg/catrobat/catroid/common/RecentBricksHolder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/RecentBricksHolder;->getRecentBricks()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "recentBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    if-eqz p1, :cond_2

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 100
    .local v3, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->isNotBackgroundSpriteBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v3    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 105
    :cond_2
    move-object v1, v0

    .line 107
    :goto_1
    return-object v1
.end method

.method isNotBackgroundSpriteBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 6
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 87
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->nonBackgroundSpriteClasses:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 88
    .local v4, "c":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    const/4 v0, 0x1

    return v0

    .line 87
    .end local v4    # "c":Ljava/lang/Class;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_1
    return v2
.end method

.method public loadRecentBricks()V
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksSerializer:Lorg/catrobat/catroid/io/RecentBrickListSerializer;

    invoke-virtual {v0}, Lorg/catrobat/catroid/io/RecentBrickListSerializer;->loadRecentBricks()Lorg/catrobat/catroid/common/RecentBricksHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksHolder:Lorg/catrobat/catroid/common/RecentBricksHolder;

    .line 126
    return-void
.end method

.method public saveRecentBrickList()V
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksSerializer:Lorg/catrobat/catroid/io/RecentBrickListSerializer;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->recentBricksHolder:Lorg/catrobat/catroid/common/RecentBricksHolder;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/RecentBrickListSerializer;->saveRecentBricks(Lorg/catrobat/catroid/common/RecentBricksHolder;)Z

    .line 122
    return-void
.end method
