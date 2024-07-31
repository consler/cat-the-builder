.class public Lcom/badlogic/gdx/utils/Pools;
.super Ljava/lang/Object;
.source "Pools.java"


# static fields
.field private static final typePools:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/Pool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static free(Ljava/lang/Object;)V
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 53
    if-eqz p0, :cond_1

    .line 54
    sget-object v0, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Pool;

    .line 55
    .local v0, "pool":Lcom/badlogic/gdx/utils/Pool;
    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 57
    return-void

    .line 53
    .end local v0    # "pool":Lcom/badlogic/gdx/utils/Pool;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static freeAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .param p0, "objects"    # Lcom/badlogic/gdx/utils/Array;

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Pools;->freeAll(Lcom/badlogic/gdx/utils/Array;Z)V

    .line 63
    return-void
.end method

.method public static freeAll(Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 6
    .param p0, "objects"    # Lcom/badlogic/gdx/utils/Array;
    .param p1, "samePool"    # Z

    .line 68
    if-eqz p0, :cond_4

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "pool":Lcom/badlogic/gdx/utils/Pool;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 71
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 72
    .local v3, "object":Ljava/lang/Object;
    if-nez v3, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    if-nez v0, :cond_1

    .line 74
    sget-object v4, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/badlogic/gdx/utils/Pool;

    .line 75
    if-nez v0, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 78
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 70
    .end local v3    # "object":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_3
    return-void

    .line 68
    .end local v0    # "pool":Lcom/badlogic/gdx/utils/Pool;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Pool<",
            "TT;>;"
        }
    .end annotation

    .line 38
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;I)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/Class;I)Lcom/badlogic/gdx/utils/Pool;
    .locals 3
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/badlogic/gdx/utils/Pool<",
            "TT;>;"
        }
    .end annotation

    .line 27
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Pool;

    .line 28
    .local v0, "pool":Lcom/badlogic/gdx/utils/Pool;
    if-nez v0, :cond_0

    .line 29
    new-instance v1, Lcom/badlogic/gdx/utils/ReflectionPool;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, p1}, Lcom/badlogic/gdx/utils/ReflectionPool;-><init>(Ljava/lang/Class;II)V

    move-object v0, v1

    .line 30
    sget-object v1, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    return-object v0
.end method

.method public static obtain(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 48
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static set(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/utils/Pools;->typePools:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
