.class public final Lorg/apache/commons/collections/functors/IdentityPredicate;
.super Ljava/lang/Object;
.source "IdentityPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x13f65150348d79dL


# instance fields
.field private final iValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/commons/collections/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;
    .locals 1

    if-nez p0, :cond_0

    .line 50
    sget-object p0, Lorg/apache/commons/collections/functors/NullPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/IdentityPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/IdentityPredicate;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    return-object v0
.end method
