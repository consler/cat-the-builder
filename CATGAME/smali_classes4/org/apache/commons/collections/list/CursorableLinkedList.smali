.class public Lorg/apache/commons/collections/list/CursorableLinkedList;
.super Lorg/apache/commons/collections/list/AbstractLinkedList;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/CursorableLinkedList$SubCursor;,
        Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7aa12cb4b4f67ac1L


# instance fields
.field protected transient cursors:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    .line 87
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 374
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 375
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 376
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 367
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 368
    return-void
.end method


# virtual methods
.method protected addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0
    .param p1, "nodeToInsert"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .param p2, "insertBeforeNode"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 233
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 235
    return-void
.end method

.method protected broadcastNodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 3
    .param p1, "node"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 311
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 312
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 314
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    .line 315
    .local v2, "cursor":Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    if-nez v2, :cond_0

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 318
    :cond_0
    invoke-virtual {v2, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 320
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    .end local v2    # "cursor":Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    :goto_1
    goto :goto_0

    .line 321
    :cond_1
    return-void
.end method

.method protected broadcastNodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 3
    .param p1, "node"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 349
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 350
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 352
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    .line 353
    .local v2, "cursor":Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    if-nez v2, :cond_0

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 356
    :cond_0
    invoke-virtual {v2, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 358
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    .end local v2    # "cursor":Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    :goto_1
    goto :goto_0

    .line 359
    :cond_1
    return-void
.end method

.method protected broadcastNodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 3
    .param p1, "node"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 330
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 331
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 333
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    .line 334
    .local v2, "cursor":Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    if-nez v2, :cond_0

    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 337
    :cond_0
    invoke-virtual {v2, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 339
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    .end local v2    # "cursor":Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    :goto_1
    goto :goto_0

    .line 340
    :cond_1
    return-void
.end method

.method protected createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "subList"    # Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;
    .param p2, "fromIndex"    # I

    .line 386
    new-instance v0, Lorg/apache/commons/collections/list/CursorableLinkedList$SubCursor;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/list/CursorableLinkedList$SubCursor;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)V

    .line 387
    .local v0, "cursor":Lorg/apache/commons/collections/list/CursorableLinkedList$SubCursor;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V

    .line 388
    return-object v0
.end method

.method public cursor()Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    .locals 1

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    .locals 1
    .param p1, "fromIndex"    # I

    .line 206
    new-instance v0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections/list/CursorableLinkedList;I)V

    .line 207
    .local v0, "cursor":Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V

    .line 208
    return-object v0
.end method

.method protected init()V
    .locals 1

    .line 94
    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->init()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    .line 96
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 109
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "fromIndex"    # I

    .line 148
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected registerCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V
    .locals 3
    .param p1, "cursor"    # Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    .line 271
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 273
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 276
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    :cond_0
    goto :goto_0

    .line 277
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method protected removeAllNodes()V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 255
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 260
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0
    .param p1, "node"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 244
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 245
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 246
    return-void
.end method

.method protected unregisterCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V
    .locals 3
    .param p1, "cursor"    # Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    .line 286
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 288
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    .line 289
    .local v2, "cur":Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    if-nez v2, :cond_0

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 295
    :cond_0
    if-ne v2, p1, :cond_1

    .line 296
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 298
    goto :goto_2

    .line 300
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    .end local v2    # "cur":Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    :cond_1
    :goto_1
    goto :goto_0

    .line 301
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    :goto_2
    return-void
.end method

.method protected updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0
    .param p1, "node"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .param p2, "value"    # Ljava/lang/Object;

    .line 221
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 223
    return-void
.end method
