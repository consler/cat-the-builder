.class Lorg/apache/commons/collections4/functors/FunctorUtils;
.super Ljava/lang/Object;
.source "FunctorUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static coerce(Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TT;>;"
        }
    .end annotation

    .line 157
    .local p0, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TT;>;"
    return-object p0
.end method

.method static coerce(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 69
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    return-object p0
.end method

.method static coerce(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 204
    .local p0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    return-object p0
.end method

.method static varargs copy([Lorg/apache/commons/collections4/Closure;)[Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)[",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 122
    .local p0, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    if-nez p0, :cond_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    invoke-virtual {p0}, [Lorg/apache/commons/collections4/Closure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections4/Closure;

    check-cast v0, [Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method

.method static varargs copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)[",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 49
    .local p0, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TT;>;"
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p0}, [Lorg/apache/commons/collections4/Predicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections4/Predicate;

    check-cast v0, [Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method static varargs copy([Lorg/apache/commons/collections4/Transformer;)[Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)[",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 168
    .local p0, "transformers":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    if-nez p0, :cond_0

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p0}, [Lorg/apache/commons/collections4/Transformer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections4/Transformer;

    check-cast v0, [Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method

.method static varargs validate([Lorg/apache/commons/collections4/Closure;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Closure<",
            "*>;)V"
        }
    .end annotation

    .line 134
    .local p0, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<*>;"
    if-eqz p0, :cond_2

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 138
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The closure array must not contain a null closure, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The closure array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static varargs validate([Lorg/apache/commons/collections4/Predicate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Predicate<",
            "*>;)V"
        }
    .end annotation

    .line 78
    .local p0, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<*>;"
    if-eqz p0, :cond_2

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 82
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The predicate array must not contain a null predicate, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The predicate array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static varargs validate([Lorg/apache/commons/collections4/Transformer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Transformer<",
            "**>;)V"
        }
    .end annotation

    .line 180
    .local p0, "transformers":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<**>;"
    if-eqz p0, :cond_2

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 184
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The transformer array must not contain a null transformer, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 181
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The transformer array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static validate(Ljava/util/Collection;)[Lorg/apache/commons/collections4/Predicate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;>;)[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;"
        }
    .end annotation

    .line 96
    .local p0, "predicates":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/commons/collections4/Predicate<-TT;>;>;"
    if-eqz p0, :cond_2

    .line 101
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/collections4/Predicate;

    .line 102
    .local v0, "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TT;>;"
    const/4 v1, 0x0

    .line 103
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/Predicate;

    .line 104
    .local v3, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    aput-object v3, v0, v1

    .line 105
    aget-object v4, v0, v1

    if-eqz v4, :cond_0

    .line 109
    nop

    .end local v3    # "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    add-int/lit8 v1, v1, 0x1

    .line 110
    goto :goto_0

    .line 106
    .restart local v3    # "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The predicate collection must not contain a null predicate, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " was null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    .end local v3    # "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    :cond_1
    return-object v0

    .line 97
    .end local v0    # "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TT;>;"
    .end local v1    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The predicate collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
