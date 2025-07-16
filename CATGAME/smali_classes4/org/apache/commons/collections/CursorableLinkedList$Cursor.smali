.class public Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
.super Lorg/apache/commons/collections/CursorableLinkedList$ListIter;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cursor"
.end annotation


# instance fields
.field _valid:Z

.field private final synthetic this$0:Lorg/apache/commons/collections/CursorableLinkedList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V
    .locals 0

    .line 1111
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    .line 1110
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    const/4 p2, 0x1

    .line 1112
    iput-boolean p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    .line 1113
    invoke-virtual {p1, p0}, Lorg/apache/commons/collections/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3

    .line 1125
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->checkForComod()V

    .line 1126
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    .line 1127
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1128
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    const/4 p1, 0x0

    .line 1129
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1130
    iget p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_nextIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_nextIndex:I

    .line 1131
    iget p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_expectedModCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_expectedModCount:I

    return-void
.end method

.method protected checkForComod()V
    .locals 1

    .line 1171
    iget-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    if-eqz v0, :cond_0

    return-void

    .line 1172
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 1189
    iget-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1190
    iput-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    .line 1191
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/CursorableLinkedList;->unregisterCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V

    :cond_0
    return-void
.end method

.method protected invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 1177
    iput-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    return-void
.end method

.method protected listableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 1

    .line 1165
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1166
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :cond_0
    return-void
.end method

.method protected listableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 2

    .line 1151
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1152
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_0

    .line 1153
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1154
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1156
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1157
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1159
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_3

    const/4 p1, 0x0

    .line 1160
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :cond_3
    return-void
.end method

.method protected listableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 3

    .line 1135
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v0, v0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1136
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_0

    .line 1137
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1138
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1140
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v0, v0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1141
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_1

    .line 1142
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 1143
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1145
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_4

    .line 1146
    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :cond_4
    return-void
.end method

.method public nextIndex()I
    .locals 1

    .line 1121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
