.class public Lorg/apache/commons/collections4/ComparatorUtils;
.super Ljava/lang/Object;
.source "ComparatorUtils.java"


# static fields
.field public static final NATURAL_COMPARATOR:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lorg/apache/commons/collections4/comparators/ComparableComparator;->comparableComparator()Lorg/apache/commons/collections4/comparators/ComparableComparator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static booleanComparator(Z)Ljava/util/Comparator;
    .locals 1
    .param p0, "trueFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Comparator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-static {p0}, Lorg/apache/commons/collections4/comparators/BooleanComparator;->booleanComparator(Z)Lorg/apache/commons/collections4/comparators/BooleanComparator;

    move-result-object v0

    return-object v0
.end method

.method public static chainedComparator(Ljava/util/Collection;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Comparator<",
            "TE;>;>;)",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    .line 102
    .local p0, "comparators":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Comparator<TE;>;>;"
    nop

    .line 103
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Comparator;

    check-cast v0, [Ljava/util/Comparator;

    .line 102
    invoke-static {v0}, Lorg/apache/commons/collections4/ComparatorUtils;->chainedComparator([Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs chainedComparator([Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    .line 78
    .local p0, "comparators":[Ljava/util/Comparator;, "[Ljava/util/Comparator<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>()V

    .line 79
    .local v0, "chain":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 80
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;)V

    .line 79
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Comparator cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    :cond_1
    return-object v0
.end method

.method public static max(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;",
            "Ljava/util/Comparator<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 237
    .local p0, "o1":Ljava/lang/Object;, "TE;"
    .local p1, "o2":Ljava/lang/Object;, "TE;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    if-nez p2, :cond_0

    .line 238
    sget-object p2, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 240
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 241
    .local v0, "c":I
    if-lez v0, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public static min(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;",
            "Ljava/util/Comparator<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 217
    .local p0, "o1":Ljava/lang/Object;, "TE;"
    .local p1, "o2":Ljava/lang/Object;, "TE;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    if-nez p2, :cond_0

    .line 218
    sget-object p2, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 220
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 221
    .local v0, "c":I
    if-gez v0, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public static naturalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static nullHighComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    .line 173
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    if-nez p0, :cond_0

    .line 174
    sget-object p0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 176
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/comparators/NullComparator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public static nullLowComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    .line 152
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    if-nez p0, :cond_0

    .line 153
    sget-object p0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 155
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/comparators/NullComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public static reversedComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    .line 116
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/comparators/ReverseComparator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/comparators/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static transformedComparator(Ljava/util/Comparator;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Ljava/util/Comparator<",
            "TI;>;"
        }
    .end annotation

    .line 198
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TO;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    if-nez p0, :cond_0

    .line 199
    sget-object p0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 201
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/comparators/TransformingComparator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections4/comparators/TransformingComparator;-><init>(Lorg/apache/commons/collections4/Transformer;Ljava/util/Comparator;)V

    return-object v0
.end method
