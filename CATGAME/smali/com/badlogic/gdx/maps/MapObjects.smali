.class public Lcom/badlogic/gdx/maps/MapObjects;
.super Ljava/lang/Object;
.source "MapObjects.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/maps/MapObject;",
        ">;"
    }
.end annotation


# instance fields
.field private objects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/maps/MapObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    .line 32
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/maps/MapObject;)V
    .locals 1
    .param p1, "object"    # Lcom/badlogic/gdx/maps/MapObject;

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public get(I)Lcom/badlogic/gdx/maps/MapObject;
    .locals 1
    .param p1, "index"    # I

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/maps/MapObject;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/badlogic/gdx/maps/MapObject;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 44
    iget-object v2, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/MapObject;

    .line 45
    .local v2, "object":Lcom/badlogic/gdx/maps/MapObject;
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    return-object v2

    .line 43
    .end local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getByType(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/maps/MapObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 85
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/maps/MapObjects;->getByType(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getByType(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/maps/MapObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "fill":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 94
    iget-object v2, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/MapObject;

    .line 95
    .local v2, "object":Lcom/badlogic/gdx/maps/MapObject;
    invoke-static {p1, v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isInstance(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 93
    .end local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-object p2
.end method

.method public getCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public getIndex(Lcom/badlogic/gdx/maps/MapObject;)I
    .locals 2
    .param p1, "object"    # Lcom/badlogic/gdx/maps/MapObject;

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/MapObjects;->get(Ljava/lang/String;)Lcom/badlogic/gdx/maps/MapObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/maps/MapObjects;->getIndex(Lcom/badlogic/gdx/maps/MapObject;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/maps/MapObject;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/maps/MapObject;)V
    .locals 2
    .param p1, "object"    # Lcom/badlogic/gdx/maps/MapObject;

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapObjects;->objects:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 80
    return-void
.end method
