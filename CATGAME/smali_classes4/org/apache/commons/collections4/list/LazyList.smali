.class public Lorg/apache/commons/collections4/list/LazyList;
.super Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;
.source "LazyList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3309f2bb6f747451L


# instance fields
.field private final factory:Lorg/apache/commons/collections4/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private final transformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Integer;",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/collections4/list/LazyList;, "Lorg/apache/commons/collections4/list/LazyList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 116
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Factory;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/LazyList;->transformer:Lorg/apache/commons/collections4/Transformer;

    .line 118
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Integer;",
            "+TE;>;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/list/LazyList;, "Lorg/apache/commons/collections4/list/LazyList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<Ljava/lang/Integer;+TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    .line 130
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Transformer;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/LazyList;->transformer:Lorg/apache/commons/collections4/Transformer;

    .line 131
    return-void
.end method

.method private element(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/apache/commons/collections4/list/LazyList;, "Lorg/apache/commons/collections4/list/LazyList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Lorg/apache/commons/collections4/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/LazyList;->transformer:Lorg/apache/commons/collections4/Transformer;

    if-eqz v0, :cond_1

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Factory and Transformer are both null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lazyList(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/list/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/list/LazyList<",
            "TE;>;"
        }
    .end annotation

    .line 89
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/LazyList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V

    return-object v0
.end method

.method public static lazyList(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/list/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Integer;",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/list/LazyList<",
            "TE;>;"
        }
    .end annotation

    .line 103
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<Ljava/lang/Integer;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/LazyList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/apache/commons/collections4/list/LazyList;, "Lorg/apache/commons/collections4/list/LazyList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 149
    .local v0, "size":I
    if-ge p1, v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 152
    .local v1, "object":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 154
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/LazyList;->element(I)Ljava/lang/Object;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-object v1

    .line 159
    :cond_0
    return-object v1

    .line 162
    .end local v1    # "object":Ljava/lang/Object;, "TE;"
    :cond_1
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/LazyList;->element(I)Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-object v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/apache/commons/collections4/list/LazyList;, "Lorg/apache/commons/collections4/list/LazyList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "sub":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    if-eqz v1, :cond_0

    .line 175
    new-instance v2, Lorg/apache/commons/collections4/list/LazyList;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V

    return-object v2

    .line 176
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/list/LazyList;->transformer:Lorg/apache/commons/collections4/Transformer;

    if-eqz v1, :cond_1

    .line 177
    new-instance v2, Lorg/apache/commons/collections4/list/LazyList;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)V

    return-object v2

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Factory and Transformer are both null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
