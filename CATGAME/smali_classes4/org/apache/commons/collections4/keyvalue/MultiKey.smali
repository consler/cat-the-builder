.class public Lorg/apache/commons/collections4/keyvalue/MultiKey;
.super Ljava/lang/Object;
.source "MultiKey.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3df875d977c7e505L


# instance fields
.field private transient hashCode:I

.field private final keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "key3":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "key3":Ljava/lang/Object;, "TK;"
    .local p4, "key4":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TK;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "key3":Ljava/lang/Object;, "TK;"
    .local p4, "key4":Ljava/lang/Object;, "TK;"
    .local p5, "key5":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    const/4 v2, 0x4

    aput-object p5, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    .line 118
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    .line 133
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Z)V
    .locals 2
    .param p2, "makeClone"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;Z)V"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    if-eqz p1, :cond_1

    .line 164
    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    .line 170
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->calculateHashCode([Ljava/lang/Object;)V

    .line 171
    return-void

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array of keys must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateHashCode([Ljava/lang/Object;)V
    .locals 5
    .param p1, "keys"    # [Ljava/lang/Object;

    .line 264
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    const/4 v0, 0x0

    .line 265
    .local v0, "total":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 266
    .local v3, "key":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 267
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    .line 265
    .end local v3    # "key":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_1
    iput v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->hashCode:I

    .line 271
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 223
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    if-ne p1, p0, :cond_0

    .line 224
    const/4 v0, 0x1

    return v0

    .line 226
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    if-eqz v0, :cond_1

    .line 227
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 228
    .local v0, "otherMulti":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<*>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 230
    .end local v0    # "otherMulti":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<*>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getKeys()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TK;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 245
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    iget v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->hashCode:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .line 280
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->calculateHashCode([Ljava/lang/Object;)V

    .line 281
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 208
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 255
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<TK;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
