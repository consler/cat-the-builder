.class abstract Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;
.super Ljava/lang/Object;
.source "AbstractBitwiseTrie.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BasicEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xd1b0e8e538c777aL


# instance fields
.field protected key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;, "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;, "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    .line 162
    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->value:Ljava/lang/Object;

    .line 163
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 198
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;, "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 199
    return v0

    .line 200
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 201
    return v2

    .line 204
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 205
    .local v1, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->value:Ljava/lang/Object;

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    return v0

    .line 209
    :cond_2
    return v2
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;, "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;, "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 192
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;, "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 193
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    .line 192
    return v0
.end method

.method public setKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;, "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    .line 170
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;, "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->value:Ljava/lang/Object;

    .line 186
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->value:Ljava/lang/Object;

    .line 187
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 214
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;, "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
