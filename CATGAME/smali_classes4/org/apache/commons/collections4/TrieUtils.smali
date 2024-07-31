.class public Lorg/apache/commons/collections4/TrieUtils;
.super Ljava/lang/Object;
.source "TrieUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unmodifiableTrie(Lorg/apache/commons/collections4/Trie;)Lorg/apache/commons/collections4/Trie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Trie<",
            "TK;+TV;>;)",
            "Lorg/apache/commons/collections4/Trie<",
            "TK;TV;>;"
        }
    .end annotation

    .line 45
    .local p0, "trie":Lorg/apache/commons/collections4/Trie;, "Lorg/apache/commons/collections4/Trie<TK;+TV;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->unmodifiableTrie(Lorg/apache/commons/collections4/Trie;)Lorg/apache/commons/collections4/Trie;

    move-result-object v0

    return-object v0
.end method
