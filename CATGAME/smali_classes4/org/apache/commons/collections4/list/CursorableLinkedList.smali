.class public Lorg/apache/commons/collections4/list/CursorableLinkedList;
.super Lorg/apache/commons/collections4/list/AbstractLinkedList;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;,
        Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractLinkedList<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7aa12cb4b4f67ac1L


# instance fields
.field private transient cursors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<",
            "TE;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;-><init>()V

    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

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

    .line 386
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 387
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 375
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method protected addNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 237
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 238
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->broadcastNodeInserted(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method protected broadcastNodeChanged(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 317
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 319
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    if-nez v1, :cond_0

    .line 321
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nodeChanged(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected broadcastNodeInserted(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 355
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 357
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    if-nez v1, :cond_0

    .line 359
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nodeInserted(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected broadcastNodeRemoved(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 336
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 338
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    if-nez v1, :cond_0

    .line 340
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nodeRemoved(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected createSubListListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<",
            "TE;>;I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 400
    new-instance v0, Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)V

    .line 401
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V

    return-object v0
.end method

.method public cursor()Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cursor(I)Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<",
            "TE;>;"
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections4/list/CursorableLinkedList;I)V

    .line 209
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V

    return-object v0
.end method

.method protected init()V
    .locals 1

    .line 93
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->init()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-super {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected registerCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<",
            "TE;>;)V"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 279
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected removeAllNodes()V
    .locals 2

    .line 258
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 249
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 250
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->broadcastNodeRemoved(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method protected unregisterCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<",
            "TE;>;)V"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 294
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    if-nez v2, :cond_1

    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    if-ne v2, p1, :cond_0

    .line 301
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method

.method protected updateNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 224
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->broadcastNodeChanged(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    return-void
.end method
