.class public final Lorg/apache/commons/collections/functors/InstanceofPredicate;
.super Ljava/lang/Object;
.source "InstanceofPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5cbd910de976d510L


# instance fields
.field private final iType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/collections/functors/InstanceofPredicate;->iType:Ljava/lang/Class;

    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;
    .locals 1

    if-eqz p0, :cond_0

    .line 51
    new-instance v0, Lorg/apache/commons/collections/functors/InstanceofPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/InstanceofPredicate;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The type to check instanceof must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstanceofPredicate;->iType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstanceofPredicate;->iType:Ljava/lang/Class;

    return-object v0
.end method
