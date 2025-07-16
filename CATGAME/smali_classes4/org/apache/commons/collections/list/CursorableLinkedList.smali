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

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
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

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 367
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method protected addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0

    .line 233
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method protected broadcastNodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 312
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 314
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    if-nez v1, :cond_0

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected broadcastNodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 350
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 352
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    if-nez v1, :cond_0

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected broadcastNodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 331
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 333
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    if-nez v1, :cond_0

    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;
    .locals 1

    .line 386
    new-instance v0, Lorg/apache/commons/collections/list/CursorableLinkedList$SubCursor;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/list/CursorableLinkedList$SubCursor;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)V

    .line 387
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V

    return-object v0
.end method

.method public cursor()Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    .locals 1

    .line 206
    new-instance v0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections/list/CursorableLinkedList;I)V

    .line 207
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V

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

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-super {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected registerCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 273
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0

    .line 244
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 245
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method protected unregisterCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V
    .locals 3

    .line 286
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 288
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    if-nez v2, :cond_1

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    if-ne v2, p1, :cond_0

    .line 296
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method

.method protected updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0

    .line 221
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-void
.end method
