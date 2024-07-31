.class Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;
.super Ljava/lang/Object;
.source "AbstractPatriciaTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1256
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;

    .line 1256
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1265
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1261
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;->item:Ljava/lang/Object;

    .line 1262
    return-void
.end method
