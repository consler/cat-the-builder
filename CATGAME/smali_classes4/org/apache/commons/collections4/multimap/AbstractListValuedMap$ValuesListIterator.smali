.class Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;
.super Ljava/lang/Object;
.source "AbstractListValuedMap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValuesListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->key:Ljava/lang/Object;

    .line 225
    invoke-virtual {p1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->values:Ljava/util/List;

    .line 226
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->key:Ljava/lang/Object;

    .line 231
    invoke-virtual {p1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lorg/apache/commons/collections4/ListUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->values:Ljava/util/List;

    .line 232
    invoke-interface {p1, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->createCollection()Ljava/util/List;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->key:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iput-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->values:Ljava/util/List;

    .line 241
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 278
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 279
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->this$0:Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap$ValuesListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
