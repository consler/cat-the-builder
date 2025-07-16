.class Lorg/apache/commons/collections/CursorableLinkedList$Listable;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Listable"
.end annotation


# instance fields
.field private _next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field private _prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field private _val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V
    .locals 0

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 964
    iput-object p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 965
    iput-object p3, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .locals 1

    .line 969
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    return-object v0
.end method

.method prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .locals 1

    .line 973
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    return-object v0
.end method

.method setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    return-void
.end method

.method setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 0

    .line 985
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    return-void
.end method

.method setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 989
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    .line 990
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    return-object v0
.end method

.method value()Ljava/lang/Object;
    .locals 1

    .line 977
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    return-object v0
.end method
