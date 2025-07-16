.class public Lorg/apache/commons/collections4/SplitMapUtils;
.super Ljava/lang/Object;
.source "SplitMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/SplitMapUtils$WrappedPut;,
        Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readableMap(Lorg/apache/commons/collections4/Get;)Lorg/apache/commons/collections4/IterableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Get<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 239
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 240
    instance-of v0, p0, Lorg/apache/commons/collections4/IterableMap;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/commons/collections4/IterableMap;

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/util/Map;

    .line 242
    invoke-static {p0}, Lorg/apache/commons/collections4/MapUtils;->iterableMap(Ljava/util/Map;)Lorg/apache/commons/collections4/IterableMap;

    move-result-object p0

    :goto_0
    return-object p0

    .line 244
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;-><init>(Lorg/apache/commons/collections4/Get;Lorg/apache/commons/collections4/SplitMapUtils$1;)V

    return-object v0

    .line 237
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Get must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writableMap(Lorg/apache/commons/collections4/Put;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Put<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 265
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 266
    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 268
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedPut;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/SplitMapUtils$WrappedPut;-><init>(Lorg/apache/commons/collections4/Put;Lorg/apache/commons/collections4/SplitMapUtils$1;)V

    return-object v0

    .line 263
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Put must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
