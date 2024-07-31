.class public Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/AbstractLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Node"
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
.field protected next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 671
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 673
    iput-object p0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 674
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 682
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->value:Ljava/lang/Object;

    .line 684
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 694
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p1, "previous":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p2, "next":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 696
    iput-object p2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 697
    iput-object p3, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->value:Ljava/lang/Object;

    .line 698
    return-void
.end method


# virtual methods
.method protected getNextNode()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 747
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    return-object v0
.end method

.method protected getPreviousNode()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 727
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    return-object v0
.end method

.method protected getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 707
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected setNextNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 757
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p1, "next":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 758
    return-void
.end method

.method protected setPreviousNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 737
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p1, "previous":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 738
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 717
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->value:Ljava/lang/Object;

    .line 718
    return-void
.end method
