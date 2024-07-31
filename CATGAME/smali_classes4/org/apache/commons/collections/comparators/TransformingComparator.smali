.class public Lorg/apache/commons/collections/comparators/TransformingComparator;
.super Ljava/lang/Object;
.source "TransformingComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field protected decorated:Ljava/util/Comparator;

.field protected transformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Transformer;)V
    .locals 1
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 49
    new-instance v0, Lorg/apache/commons/collections/comparators/ComparableComparator;

    invoke-direct {v0}, Lorg/apache/commons/collections/comparators/ComparableComparator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/TransformingComparator;-><init>(Lorg/apache/commons/collections/Transformer;Ljava/util/Comparator;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/Transformer;Ljava/util/Comparator;)V
    .locals 0
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;
    .param p2, "decorated"    # Ljava/util/Comparator;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lorg/apache/commons/collections/comparators/TransformingComparator;->decorated:Ljava/util/Comparator;

    .line 60
    iput-object p1, p0, Lorg/apache/commons/collections/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections/Transformer;

    .line 61
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "value1":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v1, p2}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    .local v1, "value2":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/collections/comparators/TransformingComparator;->decorated:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method
