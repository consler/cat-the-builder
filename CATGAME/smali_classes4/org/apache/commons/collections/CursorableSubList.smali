.class Lorg/apache/commons/collections/CursorableSubList;
.super Lorg/apache/commons/collections/CursorableLinkedList;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/List;


# instance fields
.field protected _list:Lorg/apache/commons/collections/CursorableLinkedList;

.field protected _post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field protected _pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList;II)V
    .locals 3

    .line 1206
    invoke-direct {p0}, Lorg/apache/commons/collections/CursorableLinkedList;-><init>()V

    const/4 v0, 0x0

    .line 1460
    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 1463
    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1466
    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-ltz p2, :cond_5

    .line 1207
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v1

    if-lt v1, p3, :cond_5

    if-gt p2, p3, :cond_4

    .line 1212
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 1213
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1214
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v2, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1215
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_1

    .line 1217
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :goto_1
    if-ne p2, p3, :cond_3

    .line 1220
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1221
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1222
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result p1

    if-ge p3, p1, :cond_2

    .line 1223
    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_2

    .line 1225
    :cond_2
    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_2

    .line 1228
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1229
    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :goto_2
    sub-int/2addr p3, p2

    .line 1231
    iput p3, p0, Lorg/apache/commons/collections/CursorableSubList;->_size:I

    .line 1232
    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    iget p1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    iput p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    return-void

    .line 1210
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1208
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0

    .line 1362
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1363
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 1297
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1298
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0

    .line 1322
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1323
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1292
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1293
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .locals 0

    .line 1302
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1303
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->addFirst(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addLast(Ljava/lang/Object;)Z
    .locals 0

    .line 1307
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1308
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->addLast(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected checkForComod()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    .line 1452
    iget v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 1453
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 2

    .line 1238
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1239
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1240
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1242
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1272
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1273
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1317
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1318
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1342
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1343
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 1347
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1348
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1

    .line 1352
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1353
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 1

    .line 1357
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1358
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1327
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1328
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0

    .line 1377
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1378
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .locals 3

    .line 1406
    iget v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    .line 1407
    iget v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_size:I

    .line 1408
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    if-nez p1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    if-nez p2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    invoke-virtual {v0, v1, v2, p3}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p3

    .line 1409
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1410
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1411
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1413
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1414
    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1416
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    if-ne p2, p1, :cond_4

    .line 1417
    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1419
    :cond_4
    invoke-virtual {p0, p3}, Lorg/apache/commons/collections/CursorableSubList;->broadcastListableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return-object p3
.end method

.method public isEmpty()Z
    .locals 1

    .line 1257
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1258
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1247
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1248
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    .line 1382
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1383
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1387
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1388
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 1367
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1368
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0

    .line 1372
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1373
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1277
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1278
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1312
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1313
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1

    .line 1282
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1283
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1

    .line 1287
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1288
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 2

    .line 1427
    iget v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    .line 1428
    iget v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_size:I

    .line 1429
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1430
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1431
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1433
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1434
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1436
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 1437
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1439
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1440
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableSubList;->broadcastListableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1332
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1333
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1337
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1338
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1252
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1253
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0

    .line 1392
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1393
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1262
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1263
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 1267
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1268
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
