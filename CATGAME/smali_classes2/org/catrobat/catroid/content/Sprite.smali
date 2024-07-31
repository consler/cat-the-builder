.class public Lorg/catrobat/catroid/content/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/catrobat/catroid/io/XStreamFieldKeyOrder;
    value = {
        "name",
        "lookList",
        "soundList",
        "scriptList",
        "nfcTagList",
        "userVariables",
        "userLists",
        "userDefinedBrickList"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient actionFactory:Lorg/catrobat/catroid/content/ActionFactory;

.field private transient conditionScriptTriggers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/catrobat/catroid/content/ConditionScriptTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private transient convertToGroupItemSprite:Z

.field private transient convertToSprite:Z

.field private transient embroideryThreadColor:Lcom/badlogic/gdx/graphics/Color;

.field private transient glidingVelocityX:F

.field private transient glidingVelocityY:F

.field private transient idToEventThreadMap:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Lorg/catrobat/catroid/content/eventids/EventId;",
            "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
            ">;"
        }
    .end annotation
.end field

.field public transient isClone:Z

.field private transient isGliding:Z

.field public transient look:Lorg/catrobat/catroid/content/Look;

.field private lookList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/LookData;",
            ">;"
        }
    .end annotation
.end field

.field public transient movedByStepsBrick:Z

.field public transient myOriginal:Lorg/catrobat/catroid/content/Sprite;

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field private nfcTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/NfcTagData;",
            ">;"
        }
    .end annotation
.end field

.field public transient penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

.field public transient runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

.field private scriptList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Script;",
            ">;"
        }
    .end annotation
.end field

.field private soundList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/SoundInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient usedTouchPointer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private userDefinedBrickList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end field

.field private userLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation
.end field

.field private userVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const-class v0, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/Sprite;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/catrobat/catroid/content/Look;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/Look;-><init>(Lorg/catrobat/catroid/content/Sprite;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 88
    new-instance v0, Lorg/catrobat/catroid/content/PenConfiguration;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/PenConfiguration;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    .line 89
    new-instance v0, Lorg/catrobat/catroid/embroidery/RunningStitch;

    invoke-direct {v0}, Lorg/catrobat/catroid/embroidery/RunningStitch;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->convertToSprite:Z

    .line 91
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->convertToGroupItemSprite:Z

    .line 92
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultimap;->create()Lcom/google/common/collect/LinkedHashMultimap;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->idToEventThreadMap:Lcom/google/common/collect/Multimap;

    .line 93
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->conditionScriptTriggers:Ljava/util/Set;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->usedTouchPointer:Ljava/util/List;

    .line 95
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->embroideryThreadColor:Lcom/badlogic/gdx/graphics/Color;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->lookList:Ljava/util/List;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->soundList:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->nfcTagList:Ljava/util/List;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    .line 107
    new-instance v1, Lorg/catrobat/catroid/content/ActionFactory;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/ActionFactory;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->actionFactory:Lorg/catrobat/catroid/content/ActionFactory;

    .line 109
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->isClone:Z

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->myOriginal:Lorg/catrobat/catroid/content/Sprite;

    .line 112
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->movedByStepsBrick:Z

    .line 114
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->isGliding:Z

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/content/Sprite;->glidingVelocityX:F

    .line 116
    iput v0, p0, Lorg/catrobat/catroid/content/Sprite;->glidingVelocityY:F

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/catrobat/catroid/content/Look;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/Look;-><init>(Lorg/catrobat/catroid/content/Sprite;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 88
    new-instance v0, Lorg/catrobat/catroid/content/PenConfiguration;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/PenConfiguration;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    .line 89
    new-instance v0, Lorg/catrobat/catroid/embroidery/RunningStitch;

    invoke-direct {v0}, Lorg/catrobat/catroid/embroidery/RunningStitch;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->convertToSprite:Z

    .line 91
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->convertToGroupItemSprite:Z

    .line 92
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultimap;->create()Lcom/google/common/collect/LinkedHashMultimap;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->idToEventThreadMap:Lcom/google/common/collect/Multimap;

    .line 93
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->conditionScriptTriggers:Ljava/util/Set;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->usedTouchPointer:Ljava/util/List;

    .line 95
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->embroideryThreadColor:Lcom/badlogic/gdx/graphics/Color;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->lookList:Ljava/util/List;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->soundList:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->nfcTagList:Ljava/util/List;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    .line 107
    new-instance v1, Lorg/catrobat/catroid/content/ActionFactory;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/ActionFactory;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->actionFactory:Lorg/catrobat/catroid/content/ActionFactory;

    .line 109
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->isClone:Z

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->myOriginal:Lorg/catrobat/catroid/content/Sprite;

    .line 112
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->movedByStepsBrick:Z

    .line 114
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->isGliding:Z

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/content/Sprite;->glidingVelocityX:F

    .line 116
    iput v0, p0, Lorg/catrobat/catroid/content/Sprite;->glidingVelocityY:F

    .line 122
    iput-object p1, p0, Lorg/catrobat/catroid/content/Sprite;->name:Ljava/lang/String;

    .line 123
    return-void
.end method

.method private createThreadAndAddToEventMap(Lorg/catrobat/catroid/content/Script;)V
    .locals 3
    .param p1, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 391
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Script;->isCommentedOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->idToEventThreadMap:Lcom/google/common/collect/Multimap;

    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/content/Script;->createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/Sprite;->createSequenceAction(Lorg/catrobat/catroid/content/Script;)Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method private hasToCollideWith(Lorg/catrobat/catroid/content/Sprite;)Z
    .locals 9
    .param p1, "other"    # Lorg/catrobat/catroid/content/Sprite;

    .line 558
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    .line 559
    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v2, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 561
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 562
    .local v4, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v5, v4, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    if-eqz v5, :cond_1

    .line 563
    move-object v5, v4

    check-cast v5, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    .line 564
    .local v5, "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 565
    .local v7, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/formulaeditor/Formula;->containsSpriteInCollision(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 566
    const/4 v0, 0x1

    return v0

    .line 568
    .end local v7    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    :cond_0
    goto :goto_2

    .line 570
    .end local v4    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v5    # "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    :cond_1
    goto :goto_1

    .line 571
    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v2    # "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_2
    goto :goto_0

    .line 572
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private renameSpriteInCollisionFormulas(Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;)V
    .locals 13
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 576
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v1

    .line 578
    .local v1, "spriteList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 579
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 580
    .local v5, "currentScript":Lorg/catrobat/catroid/content/Script;
    if-nez v5, :cond_0

    .line 581
    return-void

    .line 583
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v6, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 585
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 586
    .local v8, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v9, v8, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    if-eqz v9, :cond_1

    .line 587
    move-object v9, v8

    check-cast v9, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {v9}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulas()Ljava/util/List;

    move-result-object v9

    .line 588
    .local v9, "formulaList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/Formula;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 589
    .local v11, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v0, p1, v12}, Lorg/catrobat/catroid/formulaeditor/Formula;->updateCollisionFormulas(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 590
    .end local v11    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    goto :goto_3

    .line 592
    .end local v8    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v9    # "formulaList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/Formula;>;"
    :cond_1
    goto :goto_2

    .line 593
    .end local v5    # "currentScript":Lorg/catrobat/catroid/content/Script;
    .end local v6    # "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_2
    goto :goto_1

    .line 594
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_3
    goto :goto_0

    .line 595
    :cond_4
    return-void
.end method


# virtual methods
.method public addClonesOfUserDefinedBrickList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p1, "userDefinedBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    .line 198
    .local v1, "userDefinedBrick":Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/Sprite;->containsUserDefinedBrickWithSameUserData(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    :try_start_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/Sprite;->addUserDefinedBrick(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_1

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v3, Lorg/catrobat/catroid/content/Sprite;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "userDefinedBrick":Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 3
    .param p1, "resourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 510
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    .line 511
    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Script;->isCommentedOut()Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/content/Script;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 514
    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_0
    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/LookData;

    .line 517
    .local v1, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/common/LookData;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 518
    .end local v1    # "lookData":Lorg/catrobat/catroid/common/LookData;
    goto :goto_1

    .line 519
    :cond_2
    return-void
.end method

.method public addScript(ILorg/catrobat/catroid/content/Script;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 464
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 467
    :cond_0
    return-void
.end method

.method public addScript(Lorg/catrobat/catroid/content/Script;)V
    .locals 1
    .param p1, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 452
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_0
    return-void
.end method

.method public addUserDefinedBrick(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V
    .locals 1
    .param p1, "userDefinedBrick"    # Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    .line 186
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public addUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)Z
    .locals 1
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 315
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z
    .locals 1
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 285
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public checkUserData(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 223
    .local p1, "newUserData":Ljava/lang/Object;, "TT;"
    .local p2, "oldUserData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 224
    .local v1, "userData":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-ne v0, v2, :cond_0

    .line 226
    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 227
    .local v0, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    move-object v2, p1

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->hasSameValue(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    move-result v2

    return v2

    .line 229
    .end local v0    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_0
    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 230
    .local v0, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    move-object v2, p1

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->hasSameListSize(Lorg/catrobat/catroid/formulaeditor/UserList;)Z

    move-result v2

    return v2

    .line 233
    .end local v0    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    .end local v1    # "userData":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 235
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public containsUserDefinedBrickWithSameUserData(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)Z
    .locals 1
    .param p1, "userDefinedBrick"    # Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    .line 182
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/Sprite;->getUserDefinedBrickWithSameUserData(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public convert()Lorg/catrobat/catroid/content/Sprite;
    .locals 3

    .line 408
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->convertToSprite:Z

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .local v0, "convertedSprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 410
    .end local v0    # "convertedSprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->convertToGroupItemSprite:Z

    if-eqz v0, :cond_1

    .line 411
    new-instance v0, Lorg/catrobat/catroid/content/GroupItemSprite;

    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/GroupItemSprite;-><init>(Ljava/lang/String;)V

    .line 417
    .restart local v0    # "convertedSprite":Lorg/catrobat/catroid/content/Sprite;
    :goto_0
    new-instance v1, Lorg/catrobat/catroid/content/Look;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/Look;-><init>(Lorg/catrobat/catroid/content/Sprite;)V

    iput-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 418
    iget-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 420
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    iput-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    .line 421
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    iput-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    .line 423
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->lookList:Ljava/util/List;

    iput-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->lookList:Ljava/util/List;

    .line 424
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->soundList:Ljava/util/List;

    iput-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->soundList:Ljava/util/List;

    .line 425
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->nfcTagList:Ljava/util/List;

    iput-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->nfcTagList:Ljava/util/List;

    .line 426
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    iput-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    .line 428
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    iput-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    .line 429
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    iput-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    .line 430
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    iput-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    .line 432
    return-object v0

    .line 413
    .end local v0    # "convertedSprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/content/Sprite;->TAG:Ljava/lang/String;

    const-string v1, "Nothing to convert: if this is not what you wanted have a look at the convert flags."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object p0
.end method

.method public createCollisionPolygons()V
    .locals 3

    .line 598
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/LookData;

    .line 599
    .local v1, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v1}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculate()V

    .line 600
    .end local v1    # "lookData":Lorg/catrobat/catroid/common/LookData;
    goto :goto_0

    .line 601
    :cond_0
    return-void
.end method

.method public createSequenceAction(Lorg/catrobat/catroid/content/Script;)Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    .locals 3
    .param p1, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 436
    invoke-static {p1}, Lorg/catrobat/catroid/content/ActionFactory;->createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 437
    .local v0, "sequence":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    invoke-virtual {p1, p0, v0}, Lorg/catrobat/catroid/content/Script;->run(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 440
    :cond_0
    return-object v0
.end method

.method public deselectElements(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;>;)V"
        }
    .end annotation

    .line 619
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserData<*>;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    .line 620
    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/content/Script;->deselectElements(Ljava/util/List;)V

    .line 621
    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    goto :goto_0

    .line 622
    :cond_0
    return-void
.end method

.method public doesUserBrickAlreadyExist(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)Z
    .locals 3
    .param p1, "userDefinedBrick"    # Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    .line 604
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Sprite;->getUserDefinedBrickList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 605
    .local v1, "alreadyDefinedBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-virtual {v2, p1}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->isUserDefinedBrickDataEqual(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    const/4 v0, 0x1

    return v0

    .line 608
    .end local v1    # "alreadyDefinedBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    .line 609
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 127
    instance-of v0, p1, Lorg/catrobat/catroid/content/Sprite;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_0
    if-ne p1, p0, :cond_1

    .line 131
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/Sprite;

    .line 135
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method evaluateConditionScriptTriggers()V
    .locals 2

    .line 377
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->conditionScriptTriggers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/ConditionScriptTrigger;

    .line 378
    .local v1, "conditionScriptTrigger":Lorg/catrobat/catroid/content/ConditionScriptTrigger;
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->evaluateAndTriggerActions(Lorg/catrobat/catroid/content/Sprite;)V

    .line 379
    .end local v1    # "conditionScriptTrigger":Lorg/catrobat/catroid/content/ConditionScriptTrigger;
    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method

.method public findBrickInSprite(Ljava/util/UUID;)Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 5
    .param p1, "brickId"    # Ljava/util/UUID;

    .line 675
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    .line 676
    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Script;->getScriptId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Script;->getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    move-result-object v0

    return-object v0

    .line 679
    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_0
    goto :goto_0

    .line 681
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v0, "brickIdList":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Script;

    .line 684
    .local v2, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/content/Script;->findBricksInScript(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 685
    .local v3, "foundBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 686
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    return-object v1

    .line 688
    .end local v2    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v3    # "foundBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_2
    goto :goto_1

    .line 690
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->actionFactory:Lorg/catrobat/catroid/content/ActionFactory;

    return-object v0
.end method

.method public getAllBricks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "allBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Script;

    .line 150
    .local v2, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Script;->getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    .end local v2    # "script":Lorg/catrobat/catroid/content/Script;
    goto :goto_0

    .line 153
    :cond_0
    return-object v0
.end method

.method public getEmbroideryThreadColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 716
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->embroideryThreadColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getGlidingVelocityX()F
    .locals 1

    .line 785
    iget v0, p0, Lorg/catrobat/catroid/content/Sprite;->glidingVelocityX:F

    return v0
.end method

.method public getGlidingVelocityY()F
    .locals 1

    .line 788
    iget v0, p0, Lorg/catrobat/catroid/content/Sprite;->glidingVelocityY:F

    return v0
.end method

.method public getIdToEventThreadMap()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "Lorg/catrobat/catroid/content/eventids/EventId;",
            "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
            ">;"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->idToEventThreadMap:Lcom/google/common/collect/Multimap;

    return-object v0
.end method

.method public getLookList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/LookData;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->lookList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNfcTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/NfcTagData;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->nfcTagList:Ljava/util/List;

    return-object v0
.end method

.method public getNumberOfBricks()I
    .locals 3

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v0, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Script;

    .line 484
    .local v2, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 485
    .end local v2    # "script":Lorg/catrobat/catroid/content/Script;
    goto :goto_0

    .line 486
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public getNumberOfScripts()I
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPlaySoundBricks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Sprite;->getAllBricks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 321
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v3, v2, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;

    if-eqz v3, :cond_0

    .line 322
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    .line 325
    :cond_1
    return-object v0
.end method

.method public getScript(I)Lorg/catrobat/catroid/content/Script;
    .locals 3
    .param p1, "index"    # I

    .line 470
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/Script;

    return-object v0

    .line 471
    :cond_1
    :goto_0
    sget-object v0, Lorg/catrobat/catroid/content/Sprite;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScript() Index out of Scope! scriptList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScriptIndex(Lorg/catrobat/catroid/content/Script;)I
    .locals 1
    .param p1, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 490
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScriptList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Script;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    return-object v0
.end method

.method public getSoundList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/SoundInfo;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->soundList:Ljava/util/List;

    return-object v0
.end method

.method public getUnusedPointer()I
    .locals 3

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "result":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->usedTouchPointer:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->usedTouchPointer:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    return v0
.end method

.method public getUserDefinedBrickByID(Ljava/util/UUID;)Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
    .locals 3
    .param p1, "userDefinedBrickID"    # Ljava/util/UUID;

    .line 173
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 174
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getUserDefinedBrickID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    return-object v0

    .line 177
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserDefinedBrickList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    return-object v0
.end method

.method public getUserDefinedBrickWithSameUserData(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
    .locals 4
    .param p1, "userDefinedBrick"    # Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    .line 161
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 162
    return-object v0

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 165
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-virtual {v3, p1}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->isUserDefinedBrickDataEqual(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    move-object v0, v2

    check-cast v0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    return-object v0

    .line 168
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_1
    goto :goto_0

    .line 169
    :cond_2
    return-object v0
.end method

.method public getUserDefinedScript(Ljava/util/UUID;)Lorg/catrobat/catroid/content/UserDefinedScript;
    .locals 3
    .param p1, "userDefinedBrickId"    # Ljava/util/UUID;

    .line 762
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    .line 763
    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    instance-of v2, v1, Lorg/catrobat/catroid/content/UserDefinedScript;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/UserDefinedScript;->getUserDefinedBrickID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/content/UserDefinedScript;

    return-object v0

    .line 766
    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_0
    goto :goto_0

    .line 767
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserList(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 307
    .local v1, "list":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    return-object v1

    .line 310
    .end local v1    # "list":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_0
    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    return-object v0
.end method

.method public getUserListsCopy()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    .line 293
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, "userListsCopy":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 295
    .local v2, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/UserList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v2    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    goto :goto_0

    .line 298
    :cond_1
    return-object v0
.end method

.method public getUserVariable(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 277
    .local v1, "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    return-object v1

    .line 280
    .end local v1    # "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_0
    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserVariables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    return-object v0
.end method

.method public getUserVariablesCopy()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    .line 263
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "userVariablesCopy":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 265
    .local v2, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v2    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    goto :goto_0

    .line 268
    :cond_1
    return-object v0
.end method

.method public hasCollision(Lorg/catrobat/catroid/content/Scene;)Z
    .locals 5
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 544
    new-instance v0, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;-><init>()V

    .line 545
    .local v0, "resourcesSet":Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Sprite;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 546
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 547
    return v2

    .line 549
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 550
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-direct {v3, p0}, Lorg/catrobat/catroid/content/Sprite;->hasToCollideWith(Lorg/catrobat/catroid/content/Sprite;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 551
    return v2

    .line 553
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_1
    goto :goto_0

    .line 554
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public hasUserDataChanged(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 209
    .local p1, "newUserData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "oldUserData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 210
    return v2

    .line 213
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 214
    .local v1, "userData":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, p2}, Lorg/catrobat/catroid/content/Sprite;->checkUserData(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 215
    return v2

    .line 217
    .end local v1    # "userData":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 219
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 140
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v1, Lorg/catrobat/catroid/content/Sprite;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public initConditionScriptTriggers()V
    .locals 6

    .line 366
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->conditionScriptTriggers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 367
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    .line 368
    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    instance-of v2, v1, Lorg/catrobat/catroid/content/WhenConditionScript;

    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Script;->getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;

    .line 370
    .local v2, "conditionBrick":Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;
    sget-object v3, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    .line 371
    .local v3, "condition":Lorg/catrobat/catroid/formulaeditor/Formula;
    iget-object v4, p0, Lorg/catrobat/catroid/content/Sprite;->conditionScriptTriggers:Ljava/util/Set;

    new-instance v5, Lorg/catrobat/catroid/content/ConditionScriptTrigger;

    invoke-direct {v5, v3}, Lorg/catrobat/catroid/content/ConditionScriptTrigger;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v2    # "conditionBrick":Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;
    .end local v3    # "condition":Lorg/catrobat/catroid/formulaeditor/Formula;
    :cond_0
    goto :goto_0

    .line 374
    :cond_1
    return-void
.end method

.method public initializeEventThreads(I)V
    .locals 4
    .param p1, "startType"    # I

    .line 383
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->idToEventThreadMap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 384
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    .line 385
    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/content/Sprite;->createThreadAndAddToEventMap(Lorg/catrobat/catroid/content/Script;)V

    .line 386
    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    new-instance v1, Lorg/catrobat/catroid/content/EventWrapper;

    new-instance v2, Lorg/catrobat/catroid/content/eventids/EventId;

    invoke-direct {v2, p1}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/EventWrapper;-><init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 388
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->idToEventThreadMap:Lcom/google/common/collect/Multimap;

    .line 360
    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->conditionScriptTriggers:Ljava/util/Set;

    .line 361
    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    .line 362
    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    .line 363
    return-void
.end method

.method public isBackgroundSprite()Z
    .locals 1

    .line 639
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBackgroundSprite(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 643
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->name:Ljava/lang/String;

    const v1, 0x7f120052

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGliding()Z
    .locals 1

    .line 774
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->isGliding:Z

    return v0
.end method

.method public mergeSprites(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 5
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 730
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    iget-object v1, p1, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 732
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->lookList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/LookData;

    .line 733
    .local v1, "look":Lorg/catrobat/catroid/common/LookData;
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    .line 734
    invoke-virtual {v1}, Lorg/catrobat/catroid/common/LookData;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/content/Sprite;->lookList:Ljava/util/List;

    .line 733
    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/common/LookData;->setName(Ljava/lang/String;)V

    .line 736
    iget-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->lookList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    .end local v1    # "look":Lorg/catrobat/catroid/common/LookData;
    goto :goto_0

    .line 739
    :cond_0
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->soundList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/SoundInfo;

    .line 740
    .local v1, "sound":Lorg/catrobat/catroid/common/SoundInfo;
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    .line 741
    invoke-virtual {v1}, Lorg/catrobat/catroid/common/SoundInfo;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/content/Sprite;->soundList:Ljava/util/List;

    .line 740
    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/common/SoundInfo;->setName(Ljava/lang/String;)V

    .line 743
    iget-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->soundList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    .end local v1    # "sound":Lorg/catrobat/catroid/common/SoundInfo;
    goto :goto_1

    .line 745
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->nfcTagList:Ljava/util/List;

    iget-object v1, p1, Lorg/catrobat/catroid/content/Sprite;->nfcTagList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 747
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 748
    .local v1, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    iget-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 749
    iget-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    .end local v1    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_2
    goto :goto_2

    .line 752
    :cond_3
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 753
    .local v1, "userlist":Lorg/catrobat/catroid/formulaeditor/UserList;
    iget-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 754
    iget-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    .end local v1    # "userlist":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_4
    goto :goto_3

    .line 758
    :cond_5
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    iget-object v1, p1, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 759
    return-void
.end method

.method public prependScript(Lorg/catrobat/catroid/content/Script;)V
    .locals 2
    .param p1, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 458
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 461
    :cond_0
    return-void
.end method

.method public releaseAllPointers()V
    .locals 4

    .line 665
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    if-eqz v0, :cond_0

    .line 666
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 667
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->usedTouchPointer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 668
    .local v2, "pointer":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchUp(IIII)Z

    .line 669
    .end local v2    # "pointer":I
    goto :goto_0

    .line 671
    .end local v0    # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->usedTouchPointer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 672
    return-void
.end method

.method public releaseUsedPointer(I)V
    .locals 2
    .param p1, "position"    # I

    .line 661
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->usedTouchPointer:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 662
    return-void
.end method

.method public removeAllEmptyScriptBricks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v0, "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v1, "scriptsToRemove":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Script;>;"
    iget-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Script;

    .line 698
    .local v3, "script":Lorg/catrobat/catroid/content/Script;
    instance-of v4, v3, Lorg/catrobat/catroid/content/EmptyScript;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 699
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Script;->getScriptId()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    .end local v3    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_1
    goto :goto_0

    .line 704
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Script;

    .line 705
    .local v3, "toRemove":Lorg/catrobat/catroid/content/Script;
    iget-object v4, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 706
    .end local v3    # "toRemove":Lorg/catrobat/catroid/content/Script;
    goto :goto_1

    .line 708
    :cond_3
    return-object v0
.end method

.method public removeAllScripts()V
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 495
    return-void
.end method

.method public removeScript(Lorg/catrobat/catroid/content/Script;)Z
    .locals 1
    .param p1, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 498
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeUserDefinedBrick(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V
    .locals 3
    .param p1, "userDefinedBrick"    # Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    .line 190
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    .line 191
    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    iget-object v2, v1, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lorg/catrobat/catroid/content/Script;->removeAllOccurrencesOfUserDefinedBrick(Ljava/util/List;Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V

    .line 192
    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 1
    .param p1, "newSpriteName"    # Ljava/lang/String;

    .line 532
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    .line 533
    .local v0, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {p0, p1, v0}, Lorg/catrobat/catroid/content/Sprite;->renameSpriteAndUpdateCollisionFormulas(Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;)V

    .line 534
    return-void
.end method

.method public renameSpriteAndUpdateCollisionFormulas(Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;)V
    .locals 1
    .param p1, "newSpriteName"    # Ljava/lang/String;
    .param p2, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 537
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/content/Sprite;->hasCollision(Lorg/catrobat/catroid/content/Scene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/Sprite;->renameSpriteInCollisionFormulas(Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;)V

    .line 540
    :cond_0
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/Sprite;->setName(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public replaceSpriteWithSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 720
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    .line 721
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->lookList:Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->lookList:Ljava/util/List;

    .line 722
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->soundList:Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->soundList:Ljava/util/List;

    .line 723
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->nfcTagList:Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->nfcTagList:Ljava/util/List;

    .line 724
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    .line 725
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    .line 726
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userDefinedBrickList:Ljava/util/List;

    .line 727
    return-void
.end method

.method public resetSprite()V
    .locals 4

    .line 338
    new-instance v0, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;-><init>()V

    .line 339
    .local v0, "resourcesSet":Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Sprite;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 340
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getPhysicsWorld()Lorg/catrobat/catroid/physics/PhysicsWorld;

    move-result-object v1

    .line 342
    .local v1, "physicsWorld":Lorg/catrobat/catroid/physics/PhysicsWorld;
    new-instance v2, Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-direct {v2, p0, v1}, Lorg/catrobat/catroid/physics/PhysicsLook;-><init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsWorld;)V

    iput-object v2, p0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 343
    .end local v1    # "physicsWorld":Lorg/catrobat/catroid/physics/PhysicsWorld;
    goto :goto_0

    .line 344
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/content/Look;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/content/Look;-><init>(Lorg/catrobat/catroid/content/Sprite;)V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 346
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->lookList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/common/LookData;

    .line 347
    .local v2, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v2}, Lorg/catrobat/catroid/common/LookData;->dispose()V

    .line 348
    .end local v2    # "lookData":Lorg/catrobat/catroid/common/LookData;
    goto :goto_1

    .line 350
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 351
    iget-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 354
    :cond_2
    new-instance v1, Lorg/catrobat/catroid/content/PenConfiguration;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/PenConfiguration;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    .line 355
    new-instance v1, Lorg/catrobat/catroid/embroidery/RunningStitch;

    invoke-direct {v1}, Lorg/catrobat/catroid/embroidery/RunningStitch;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    .line 356
    return-void
.end method

.method public resetUserData()V
    .locals 2

    .line 329
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 330
    .local v1, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->reset()V

    .line 331
    .end local v1    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->userLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 333
    .local v1, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserList;->reset()V

    .line 334
    .end local v1    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    goto :goto_1

    .line 335
    :cond_1
    return-void
.end method

.method public restoreUserDataValues(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 239
    .local p1, "currentUserDataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "userDataListToRestore":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 240
    .local v1, "userData":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 241
    .local v3, "userDataToRestore":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-ne v4, v5, :cond_1

    .line 242
    move-object v4, v1

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 243
    .local v4, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    move-object v5, v3

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 244
    .local v5, "newUserVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 247
    .end local v4    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .end local v5    # "newUserVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_0
    goto :goto_2

    .line 248
    :cond_1
    move-object v4, v1

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 249
    .local v4, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    move-object v5, v3

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 250
    .local v5, "newUserList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 251
    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/catrobat/catroid/formulaeditor/UserList;->setValue(Ljava/util/List;)V

    .line 254
    .end local v3    # "userDataToRestore":Ljava/lang/Object;, "TT;"
    .end local v4    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    .end local v5    # "newUserList":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_2
    :goto_2
    goto :goto_1

    .line 255
    .end local v1    # "userData":Ljava/lang/Object;, "TT;"
    :cond_3
    goto :goto_0

    .line 256
    :cond_4
    return-void
.end method

.method public setActionFactory(Lorg/catrobat/catroid/content/ActionFactory;)V
    .locals 0
    .param p1, "actionFactory"    # Lorg/catrobat/catroid/content/ActionFactory;

    .line 402
    iput-object p1, p0, Lorg/catrobat/catroid/content/Sprite;->actionFactory:Lorg/catrobat/catroid/content/ActionFactory;

    .line 403
    return-void
.end method

.method public setConvertToGroupItemSprite(Z)V
    .locals 1
    .param p1, "convertToGroupItemSprite"    # Z

    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->convertToSprite:Z

    .line 635
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/Sprite;->convertToGroupItemSprite:Z

    .line 636
    return-void
.end method

.method public setConvertToSprite(Z)V
    .locals 1
    .param p1, "convertToSprite"    # Z

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->convertToGroupItemSprite:Z

    .line 630
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/Sprite;->convertToSprite:Z

    .line 631
    return-void
.end method

.method public setEmbroideryThreadColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "embroideryThreadColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 712
    iput-object p1, p0, Lorg/catrobat/catroid/content/Sprite;->embroideryThreadColor:Lcom/badlogic/gdx/graphics/Color;

    .line 713
    return-void
.end method

.method public setGliding(Z)V
    .locals 0
    .param p1, "gliding"    # Z

    .line 771
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/Sprite;->isGliding:Z

    .line 772
    return-void
.end method

.method public setGlidingVelocityX(F)V
    .locals 0
    .param p1, "velocity"    # F

    .line 778
    iput p1, p0, Lorg/catrobat/catroid/content/Sprite;->glidingVelocityX:F

    .line 779
    return-void
.end method

.method public setGlidingVelocityY(F)V
    .locals 0
    .param p1, "velocity"    # F

    .line 781
    iput p1, p0, Lorg/catrobat/catroid/content/Sprite;->glidingVelocityY:F

    .line 782
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 448
    iput-object p1, p0, Lorg/catrobat/catroid/content/Sprite;->name:Ljava/lang/String;

    .line 449
    return-void
.end method

.method public toBeConverted()Z
    .locals 1

    .line 625
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->convertToSprite:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Sprite;->convertToGroupItemSprite:Z

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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)V"
        }
    .end annotation

    .line 613
    .local p3, "item":Lorg/catrobat/catroid/formulaeditor/UserData;, "Lorg/catrobat/catroid/formulaeditor/UserData<*>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/Sprite;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    .line 614
    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v1, p1, p2, p3}, Lorg/catrobat/catroid/content/Script;->updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 615
    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    goto :goto_0

    .line 616
    :cond_0
    return-void
.end method
