.class Lorg/apache/commons/collections/functors/FunctorUtils;
.super Ljava/lang/Object;
.source "FunctorUtils.java"


# static fields
.field static final UNSAFE_SERIALIZABLE_PROPERTY:Ljava/lang/String; = "org.apache.commons.collections.enableUnsafeSerialization"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static checkUnsafeSerialization(Ljava/lang/Class;)V
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 172
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/commons/collections/functors/FunctorUtils$1;

    invoke-direct {v1}, Lorg/apache/commons/collections/functors/FunctorUtils$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 180
    .local v0, "unsafeSerializableProperty":Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v0    # "unsafeSerializableProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 179
    .restart local v0    # "unsafeSerializableProperty":Ljava/lang/String;
    .local v1, "ex":Ljava/lang/SecurityException;
    const/4 v0, 0x0

    .line 182
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :goto_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    return-void

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Serialization support for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " is disabled for security reasons. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "To enable it set system property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "org.apache.commons.collections.enableUnsafeSerialization"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' to \'true\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "but you must ensure that your application does not de-serialize objects from untrusted sources."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static copy([Lorg/apache/commons/collections/Closure;)[Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "closures"    # [Lorg/apache/commons/collections/Closure;

    .line 109
    if-nez p0, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections/Closure;

    check-cast v0, [Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method static copy([Lorg/apache/commons/collections/Predicate;)[Lorg/apache/commons/collections/Predicate;
    .locals 1
    .param p0, "predicates"    # [Lorg/apache/commons/collections/Predicate;

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections/Predicate;

    check-cast v0, [Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method static copy([Lorg/apache/commons/collections/Transformer;)[Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "transformers"    # [Lorg/apache/commons/collections/Transformer;

    .line 138
    if-nez p0, :cond_0

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections/Transformer;

    check-cast v0, [Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method static validate([Lorg/apache/commons/collections/Closure;)V
    .locals 4
    .param p0, "closures"    # [Lorg/apache/commons/collections/Closure;

    .line 121
    if-eqz p0, :cond_2

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 125
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The closure array must not contain a null closure, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The closure array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static validate([Lorg/apache/commons/collections/Predicate;)V
    .locals 4
    .param p0, "predicates"    # [Lorg/apache/commons/collections/Predicate;

    .line 69
    if-eqz p0, :cond_2

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 73
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The predicate array must not contain a null predicate, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The predicate array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static validate([Lorg/apache/commons/collections/Transformer;)V
    .locals 4
    .param p0, "transformers"    # [Lorg/apache/commons/collections/Transformer;

    .line 150
    if-eqz p0, :cond_2

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 154
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The transformer array must not contain a null transformer, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The transformer array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static validate(Ljava/util/Collection;)[Lorg/apache/commons/collections/Predicate;
    .locals 6
    .param p0, "predicates"    # Ljava/util/Collection;

    .line 86
    if-eqz p0, :cond_2

    .line 90
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/collections/Predicate;

    .line 91
    .local v0, "preds":[Lorg/apache/commons/collections/Predicate;
    const/4 v1, 0x0

    .line 92
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/Predicate;

    aput-object v3, v0, v1

    .line 94
    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "The predicate collection must not contain a null predicate, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " was null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_1
    return-object v0

    .line 87
    .end local v0    # "preds":[Lorg/apache/commons/collections/Predicate;
    .end local v1    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The predicate collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
