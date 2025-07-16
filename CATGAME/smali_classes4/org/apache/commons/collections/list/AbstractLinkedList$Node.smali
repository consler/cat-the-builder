.class public Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/AbstractLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Node"
.end annotation


# instance fields
.field protected next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object p0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 613
    iput-object p0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->value:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 636
    iput-object p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 637
    iput-object p3, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getNextNode()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 1

    .line 687
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    return-object v0
.end method

.method protected getPreviousNode()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 1

    .line 667
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    return-object v0
.end method

.method protected getValue()Ljava/lang/Object;
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected setNextNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    return-void
.end method

.method protected setPreviousNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->value:Ljava/lang/Object;

    return-void
.end method
