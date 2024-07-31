.class public Lorg/catrobat/catroid/embroidery/DSTPatternManager;
.super Ljava/lang/Object;
.source "DSTPatternManager.java"

# interfaces
.implements Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;


# instance fields
.field private lastCommandOfSpriteMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/catrobat/catroid/content/Sprite;",
            "Lorg/catrobat/catroid/embroidery/StitchCommand;",
            ">;"
        }
    .end annotation
.end field

.field private layerStreamMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/catrobat/catroid/embroidery/EmbroideryStream;",
            ">;"
        }
    .end annotation
.end field

.field private layerWorkspaceMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerWorkspaceMap:Ljava/util/TreeMap;

    .line 37
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerStreamMap:Ljava/util/TreeMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->lastCommandOfSpriteMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V
    .locals 4
    .param p1, "stitchCommand"    # Lorg/catrobat/catroid/embroidery/StitchCommand;

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerWorkspaceMap:Ljava/util/TreeMap;

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getLayer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerWorkspaceMap:Ljava/util/TreeMap;

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getLayer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/embroidery/DSTWorkSpace;

    invoke-direct {v2}, Lorg/catrobat/catroid/embroidery/DSTWorkSpace;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerStreamMap:Ljava/util/TreeMap;

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getLayer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/embroidery/DSTStream;

    new-instance v3, Lorg/catrobat/catroid/embroidery/DSTHeader;

    invoke-direct {v3}, Lorg/catrobat/catroid/embroidery/DSTHeader;-><init>()V

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/embroidery/DSTStream;-><init>(Lorg/catrobat/catroid/embroidery/EmbroideryHeader;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerWorkspaceMap:Ljava/util/TreeMap;

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getLayer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;

    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerStreamMap:Ljava/util/TreeMap;

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getLayer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/embroidery/EmbroideryStream;

    iget-object v2, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->lastCommandOfSpriteMap:Ljava/util/HashMap;

    .line 47
    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/embroidery/StitchCommand;

    .line 46
    invoke-interface {p1, v0, v1, v2}, Lorg/catrobat/catroid/embroidery/StitchCommand;->act(Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;Lorg/catrobat/catroid/embroidery/EmbroideryStream;Lorg/catrobat/catroid/embroidery/StitchCommand;)V

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->lastCommandOfSpriteMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/catrobat/catroid/embroidery/StitchCommand;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public clear()V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerWorkspaceMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerStreamMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 89
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->lastCommandOfSpriteMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 90
    return-void
.end method

.method public getEmbroideryPatternList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/embroidery/StitchPoint;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->getEmbroideryStream()Lorg/catrobat/catroid/embroidery/EmbroideryStream;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->getPointList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEmbroideryPatternList()Ljava/util/List;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->getEmbroideryPatternList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getEmbroideryStream()Lorg/catrobat/catroid/embroidery/EmbroideryStream;
    .locals 8

    .line 58
    new-instance v0, Lorg/catrobat/catroid/embroidery/DSTStream;

    new-instance v1, Lorg/catrobat/catroid/embroidery/DSTHeader;

    invoke-direct {v1}, Lorg/catrobat/catroid/embroidery/DSTHeader;-><init>()V

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/embroidery/DSTStream;-><init>(Lorg/catrobat/catroid/embroidery/EmbroideryHeader;)V

    .line 59
    .local v0, "stream":Lorg/catrobat/catroid/embroidery/EmbroideryStream;
    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerStreamMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    return-object v0

    .line 62
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerStreamMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 63
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/catrobat/catroid/embroidery/EmbroideryStream;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/embroidery/EmbroideryStream;

    invoke-interface {v3}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->getPointList()Ljava/util/ArrayList;

    move-result-object v3

    .line 66
    .local v3, "stitchPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/embroidery/StitchPoint;>;"
    invoke-interface {v0, v3}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addAllStitchPoints(Ljava/util/ArrayList;)V

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/embroidery/StitchPoint;

    .line 69
    .local v4, "lastValidPoint":Lorg/catrobat/catroid/embroidery/StitchPoint;
    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addColorChange()V

    .line 70
    invoke-interface {v4}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getX()F

    move-result v5

    invoke-interface {v4}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getY()F

    move-result v6

    invoke-interface {v4}, Lorg/catrobat/catroid/embroidery/StitchPoint;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    invoke-interface {v0, v5, v6, v7}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    .line 72
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "stitchPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/embroidery/StitchPoint;>;"
    .end local v4    # "lastValidPoint":Lorg/catrobat/catroid/embroidery/StitchPoint;
    :cond_1
    goto :goto_0

    .line 73
    :cond_2
    return-object v0
.end method

.method public validPatternExists()Z
    .locals 4

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "embroideryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/embroidery/StitchPoint;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/DSTPatternManager;->layerStreamMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 80
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/embroidery/EmbroideryStream;

    invoke-interface {v3}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->getPointList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
